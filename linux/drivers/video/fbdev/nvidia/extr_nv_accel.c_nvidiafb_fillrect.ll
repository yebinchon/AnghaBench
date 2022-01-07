; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_nvidiafb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_nvidiafb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i64, %struct.TYPE_2__, %struct.nvidia_par* }
%struct.TYPE_2__ = type { i32 }
%struct.nvidia_par = type { i64 }
%struct.fb_fillrect = type { i32, i64, i32, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@ROP_COPY = common dso_local global i64 0, align 8
@RECT_SOLID_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvidiafb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.nvidia_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 3
  %9 = load %struct.nvidia_par*, %struct.nvidia_par** %8, align 8
  store %struct.nvidia_par* %9, %struct.nvidia_par** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %18 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %24 = call i32 @cfb_fillrect(%struct.fb_info* %22, %struct.fb_fillrect* %23)
  br label %101

25:                                               ; preds = %16
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35, %31
  %47 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %48 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ROP_COPY, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %55 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @NVSetRopSolid(%struct.fb_info* %53, i64 %56, i32 -1)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %61 = load i32, i32* @RECT_SOLID_COLOR, align 4
  %62 = call i32 @NVDmaStart(%struct.fb_info* %59, %struct.nvidia_par* %60, i32 %61, i32 1)
  %63 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @NVDmaNext(%struct.nvidia_par* %63, i32 %64)
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %68 = call i32 @RECT_SOLID_RECTS(i32 0)
  %69 = call i32 @NVDmaStart(%struct.fb_info* %66, %struct.nvidia_par* %67, i32 %68, i32 2)
  %70 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %71 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %72 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 16
  %75 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %76 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %74, %77
  %79 = call i32 @NVDmaNext(%struct.nvidia_par* %70, i32 %78)
  %80 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %81 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %82 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 16
  %85 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %86 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = call i32 @NVDmaNext(%struct.nvidia_par* %80, i32 %88)
  %90 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %91 = call i32 @NVDmaKickoff(%struct.nvidia_par* %90)
  %92 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %93 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ROP_COPY, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %58
  %98 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %99 = load i64, i64* @ROP_COPY, align 8
  %100 = call i32 @NVSetRopSolid(%struct.fb_info* %98, i64 %99, i32 -1)
  br label %101

101:                                              ; preds = %15, %21, %97, %58
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @NVSetRopSolid(%struct.fb_info*, i64, i32) #1

declare dso_local i32 @NVDmaStart(%struct.fb_info*, %struct.nvidia_par*, i32, i32) #1

declare dso_local i32 @NVDmaNext(%struct.nvidia_par*, i32) #1

declare dso_local i32 @RECT_SOLID_RECTS(i32) #1

declare dso_local i32 @NVDmaKickoff(%struct.nvidia_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
