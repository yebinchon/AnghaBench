; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32*, i8*, i32 }
%struct.oxu_hcd = type { i32 }
%struct.oxu_murb = type { i32, %struct.urb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @oxu_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxu_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %16 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %15)
  store %struct.oxu_hcd* %16, %struct.oxu_hcd** %8, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_pipebulk(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %23, %struct.urb* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %170

27:                                               ; preds = %3
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 4096
  store i32 %34, i32* %9, align 4
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = srem i32 %37, 4096
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %27
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %48, %struct.urb* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %170

52:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %108, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %68, %58
  %60 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %61 = call i64 @oxu_murb_alloc(%struct.oxu_hcd* %60)
  %62 = inttoptr i64 %61 to %struct.urb*
  store %struct.urb* %62, %struct.urb** %12, align 8
  %63 = load %struct.urb*, %struct.urb** %12, align 8
  %64 = icmp ne %struct.urb* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = call i32 (...) @schedule()
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.urb*, %struct.urb** %12, align 8
  %70 = icmp ne %struct.urb* %69, null
  %71 = xor i1 %70, true
  br i1 %71, label %59, label %72

72:                                               ; preds = %68
  %73 = load %struct.urb*, %struct.urb** %12, align 8
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = call i32 @memcpy(%struct.urb* %73, %struct.urb* %74, i32 32)
  %76 = load %struct.urb*, %struct.urb** %12, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  store i32 4096, i32* %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %13, align 4
  %80 = mul nsw i32 %79, 4096
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %78, i64 %81
  %83 = load %struct.urb*, %struct.urb** %12, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.urb*, %struct.urb** %12, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = load %struct.urb*, %struct.urb** %12, align 8
  %89 = bitcast %struct.urb* %88 to %struct.oxu_murb*
  %90 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %89, i32 0, i32 1
  store %struct.urb* %87, %struct.urb** %90, align 8
  %91 = load %struct.urb*, %struct.urb** %12, align 8
  %92 = bitcast %struct.urb* %91 to %struct.oxu_murb*
  %93 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %104, %72
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %96 = load %struct.urb*, %struct.urb** %12, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %95, %struct.urb* %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (...) @schedule()
  br label %103

103:                                              ; preds = %101, %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %94, label %107

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %53

111:                                              ; preds = %53
  br label %112

112:                                              ; preds = %121, %111
  %113 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %114 = call i64 @oxu_murb_alloc(%struct.oxu_hcd* %113)
  %115 = inttoptr i64 %114 to %struct.urb*
  store %struct.urb* %115, %struct.urb** %12, align 8
  %116 = load %struct.urb*, %struct.urb** %12, align 8
  %117 = icmp ne %struct.urb* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = call i32 (...) @schedule()
  br label %120

120:                                              ; preds = %118, %112
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.urb*, %struct.urb** %12, align 8
  %123 = icmp ne %struct.urb* %122, null
  %124 = xor i1 %123, true
  br i1 %124, label %112, label %125

125:                                              ; preds = %121
  %126 = load %struct.urb*, %struct.urb** %12, align 8
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = call i32 @memcpy(%struct.urb* %126, %struct.urb* %127, i32 32)
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  br label %134

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 4096, %133 ]
  %136 = load %struct.urb*, %struct.urb** %12, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %139, 1
  %141 = mul nsw i32 %140, 4096
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %138, i64 %142
  %144 = load %struct.urb*, %struct.urb** %12, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.urb*, %struct.urb** %12, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 1
  store i32* null, i32** %147, align 8
  %148 = load %struct.urb*, %struct.urb** %6, align 8
  %149 = load %struct.urb*, %struct.urb** %12, align 8
  %150 = bitcast %struct.urb* %149 to %struct.oxu_murb*
  %151 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %150, i32 0, i32 1
  store %struct.urb* %148, %struct.urb** %151, align 8
  %152 = load %struct.urb*, %struct.urb** %12, align 8
  %153 = bitcast %struct.urb* %152 to %struct.oxu_murb*
  %154 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %165, %134
  %156 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %157 = load %struct.urb*, %struct.urb** %12, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @__oxu_urb_enqueue(%struct.usb_hcd* %156, %struct.urb* %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = call i32 (...) @schedule()
  br label %164

164:                                              ; preds = %162, %155
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %155, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %47, %22
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @usb_pipebulk(i32) #1

declare dso_local i32 @__oxu_urb_enqueue(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @oxu_murb_alloc(%struct.oxu_hcd*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @memcpy(%struct.urb*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
