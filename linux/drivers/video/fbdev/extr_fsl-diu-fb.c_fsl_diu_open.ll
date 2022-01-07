; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.fb_info = type { i32, %struct.mfb_info* }
%struct.mfb_info = type { i64, i32, i32 }

@PLANE0 = common dso_local global i64 0, align 8
@diu_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@diu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @fsl_diu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.mfb_info*, %struct.mfb_info** %8, align 8
  store %struct.mfb_info* %9, %struct.mfb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %11 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PLANE0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @diu_ops, i32 0, i32 0), align 8
  %17 = icmp ne i32 (...)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @diu_ops, i32 0, i32 0), align 8
  %20 = call i32 (...) %19()
  br label %21

21:                                               ; preds = %18, %15, %2
  %22 = call i32 @spin_lock(i32* @diu_lock)
  %23 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %24 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %28 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = call i32 @fsl_diu_check_var(i32* %33, %struct.fb_info* %34)
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = call i32 @fsl_diu_set_par(%struct.fb_info* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %42 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %52

45:                                               ; preds = %31
  %46 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %47 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fsl_diu_enable_interrupts(i32 %48)
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = call i32 @fsl_diu_enable_panel(%struct.fb_info* %50)
  br label %52

52:                                               ; preds = %45, %40
  br label %53

53:                                               ; preds = %52, %21
  %54 = call i32 @spin_unlock(i32* @diu_lock)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fsl_diu_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @fsl_diu_set_par(%struct.fb_info*) #1

declare dso_local i32 @fsl_diu_enable_interrupts(i32) #1

declare dso_local i32 @fsl_diu_enable_panel(%struct.fb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
