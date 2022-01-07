; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_input_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_input_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32* }
%struct.u132_endp = type { i64, i32, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@u132_hcd_initial_empty_sent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_initial_input_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_initial_input_recv(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.u132_ring*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to %struct.u132_endp*
  store %struct.u132_endp* %34, %struct.u132_endp** %25, align 8
  %35 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %36 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %35, i32 0, i32 4
  %37 = load %struct.u132*, %struct.u132** %36, align 8
  store %struct.u132* %37, %struct.u132** %26, align 8
  %38 = load %struct.u132*, %struct.u132** %26, align 8
  %39 = getelementptr inbounds %struct.u132, %struct.u132* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %42 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %27, align 4
  %47 = load %struct.u132*, %struct.u132** %26, align 8
  %48 = getelementptr inbounds %struct.u132, %struct.u132* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.u132*, %struct.u132** %26, align 8
  %51 = getelementptr inbounds %struct.u132, %struct.u132* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %12
  %55 = load %struct.u132*, %struct.u132** %26, align 8
  %56 = getelementptr inbounds %struct.u132, %struct.u132* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.u132*, %struct.u132** %26, align 8
  %60 = getelementptr inbounds %struct.u132, %struct.u132* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.u132*, %struct.u132** %26, align 8
  %64 = getelementptr inbounds %struct.u132, %struct.u132* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.u132*, %struct.u132** %26, align 8
  %67 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %68 = load %struct.urb*, %struct.urb** %14, align 8
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @u132_hcd_forget_urb(%struct.u132* %66, %struct.u132_endp* %67, %struct.urb* %68, i32 %70)
  br label %181

72:                                               ; preds = %12
  %73 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %74 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %79 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.u132*, %struct.u132** %26, align 8
  %81 = getelementptr inbounds %struct.u132, %struct.u132* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.u132*, %struct.u132** %26, align 8
  %84 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %85 = load %struct.urb*, %struct.urb** %14, align 8
  %86 = load i32, i32* @EINTR, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @u132_hcd_giveback_urb(%struct.u132* %83, %struct.u132_endp* %84, %struct.urb* %85, i32 %87)
  br label %181

89:                                               ; preds = %72
  %90 = load %struct.u132*, %struct.u132** %26, align 8
  %91 = getelementptr inbounds %struct.u132, %struct.u132* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.u132*, %struct.u132** %26, align 8
  %96 = getelementptr inbounds %struct.u132, %struct.u132* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.urb*, %struct.urb** %14, align 8
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %99)
  %101 = load %struct.u132*, %struct.u132** %26, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.u132*, %struct.u132** %26, align 8
  %105 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %106 = load %struct.urb*, %struct.urb** %14, align 8
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  %109 = call i32 @u132_hcd_giveback_urb(%struct.u132* %104, %struct.u132_endp* %105, %struct.urb* %106, i32 %108)
  br label %181

110:                                              ; preds = %89
  %111 = load %struct.urb*, %struct.urb** %14, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %164, label %115

115:                                              ; preds = %110
  %116 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %117 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %116, i32 0, i32 2
  %118 = load %struct.u132_ring*, %struct.u132_ring** %117, align 8
  store %struct.u132_ring* %118, %struct.u132_ring** %29, align 8
  %119 = load %struct.urb*, %struct.urb** %14, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %30, align 8
  %122 = load i32*, i32** %15, align 8
  store i32* %122, i32** %31, align 8
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %32, align 4
  br label %124

124:                                              ; preds = %128, %115
  %125 = load i32, i32* %32, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %32, align 4
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32*, i32** %31, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %31, align 8
  %131 = load i32, i32* %129, align 4
  %132 = load i32*, i32** %30, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %30, align 8
  store i32 %131, i32* %132, align 4
  br label %124

134:                                              ; preds = %124
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.urb*, %struct.urb** %14, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.u132*, %struct.u132** %26, align 8
  %139 = getelementptr inbounds %struct.u132, %struct.u132* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.u132*, %struct.u132** %26, align 8
  %142 = getelementptr inbounds %struct.u132, %struct.u132* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %145 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %148 = load %struct.urb*, %struct.urb** %14, align 8
  %149 = load i32, i32* %27, align 4
  %150 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %151 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @u132_hcd_initial_empty_sent, align 4
  %154 = call i32 @usb_ftdi_elan_edset_empty(%struct.TYPE_4__* %143, i32 %146, %struct.u132_endp* %147, %struct.urb* %148, i32 %149, i32 %152, i32 3, i32 %153)
  store i32 %154, i32* %28, align 4
  %155 = load i32, i32* %28, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %134
  %158 = load %struct.u132*, %struct.u132** %26, align 8
  %159 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %160 = load %struct.urb*, %struct.urb** %14, align 8
  %161 = load i32, i32* %28, align 4
  %162 = call i32 @u132_hcd_giveback_urb(%struct.u132* %158, %struct.u132_endp* %159, %struct.urb* %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %134
  br label %181

164:                                              ; preds = %110
  %165 = load %struct.u132*, %struct.u132** %26, align 8
  %166 = getelementptr inbounds %struct.u132, %struct.u132* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load %struct.urb*, %struct.urb** %14, align 8
  %170 = load %struct.urb*, %struct.urb** %14, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %169, i32 %172)
  %174 = load %struct.u132*, %struct.u132** %26, align 8
  %175 = getelementptr inbounds %struct.u132, %struct.u132* %174, i32 0, i32 1
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load %struct.u132*, %struct.u132** %26, align 8
  %178 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %179 = load %struct.urb*, %struct.urb** %14, align 8
  %180 = call i32 @u132_hcd_giveback_urb(%struct.u132* %177, %struct.u132_endp* %178, %struct.urb* %179, i32 0)
  br label %181

181:                                              ; preds = %164, %163, %94, %77, %54
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @usb_ftdi_elan_edset_empty(%struct.TYPE_4__*, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
