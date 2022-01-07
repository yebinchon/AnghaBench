; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i64, %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mfb_info* }

@diu_lock = common dso_local global i32 0, align 4
@NUM_AOIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @fsl_diu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_diu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.mfb_info*, %struct.mfb_info** %12, align 8
  store %struct.mfb_info* %13, %struct.mfb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = call i32 @spin_lock(i32* @diu_lock)
  %15 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %20 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %25 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %24, i32 0, i32 1
  %26 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %25, align 8
  store %struct.fsl_diu_data* %26, %struct.fsl_diu_data** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %46, %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NUM_AOIS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %7, align 8
  %33 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.mfb_info*, %struct.mfb_info** %38, align 8
  store %struct.mfb_info* %39, %struct.mfb_info** %10, align 8
  %40 = load %struct.mfb_info*, %struct.mfb_info** %10, align 8
  %41 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %7, align 8
  %54 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @out_be32(i32* %56, i32 -1)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = call i32 @fsl_diu_disable_panel(%struct.fb_info* %59)
  br label %61

61:                                               ; preds = %58, %2
  %62 = call i32 @spin_unlock(i32* @diu_lock)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @fsl_diu_disable_panel(%struct.fb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
