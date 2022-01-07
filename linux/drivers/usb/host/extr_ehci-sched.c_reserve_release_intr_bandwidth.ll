; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_reserve_release_intr_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sched.c_reserve_release_intr_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32* }
%struct.ehci_qh = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i64 }
%struct.ehci_tt = type { i32*, i32 }

@NO_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@EHCI_BANDWIDTH_SIZE = common dso_local global i32 0, align 4
@EHCI_BANDWIDTH_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*, i32)* @reserve_release_intr_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reserve_release_intr_bandwidth(%struct.ehci_hcd* %0, %struct.ehci_qh* %1, i32 %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca %struct.ehci_qh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ehci_tt*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %16 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %20 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %24 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %28 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NO_FRAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %190

34:                                               ; preds = %3
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %36 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 3
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %43 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %42, i32 0, i32 0
  %44 = call i32 @bandwidth_dbg(%struct.ehci_hcd* %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %57 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %55, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %75, %54
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EHCI_BANDWIDTH_SIZE, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %66
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %77 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %86 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %130, %90
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @EHCI_BANDWIDTH_SIZE, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %92
  store i32 2, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 8
  %99 = shl i32 1, %98
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %124, %96
  %101 = load i32, i32* %9, align 4
  %102 = icmp ult i32 %101, 8
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %105 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %114 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %112
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %111, %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %100

129:                                              ; preds = %100
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %132 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %8, align 4
  br label %92

139:                                              ; preds = %92
  br label %140

140:                                              ; preds = %139, %84
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %190

143:                                              ; preds = %140
  %144 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %145 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.ehci_tt* @find_tt(i32 %147)
  store %struct.ehci_tt* %148, %struct.ehci_tt** %14, align 8
  %149 = load i32, i32* %6, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %153 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 8
  %155 = load %struct.ehci_tt*, %struct.ehci_tt** %14, align 8
  %156 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %155, i32 0, i32 1
  %157 = call i32 @list_add_tail(i32* %154, i32* %156)
  br label %163

158:                                              ; preds = %143
  %159 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %160 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 8
  %162 = call i32 @list_del(i32* %161)
  br label %163

163:                                              ; preds = %158, %151
  %164 = load i32, i32* %7, align 4
  %165 = lshr i32 %164, 3
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %180, %163
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @EHCI_BANDWIDTH_FRAMES, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.ehci_tt*, %struct.ehci_tt** %14, align 8
  %173 = getelementptr inbounds %struct.ehci_tt, %struct.ehci_tt* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %171
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %182 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %8, align 4
  br label %166

189:                                              ; preds = %166
  br label %190

190:                                              ; preds = %33, %189, %140
  ret void
}

declare dso_local i32 @bandwidth_dbg(%struct.ehci_hcd*, i32, i8*, %struct.TYPE_2__*) #1

declare dso_local %struct.ehci_tt* @find_tt(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
