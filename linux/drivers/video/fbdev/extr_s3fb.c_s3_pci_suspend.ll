; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.fb_info = type { i32, %struct.s3fb_info* }
%struct.s3fb_info = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@PM_EVENT_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @s3_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_pci_suspend(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.s3fb_info*, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.s3fb_info*, %struct.s3fb_info** %12, align 8
  store %struct.s3fb_info* %13, %struct.s3fb_info** %7, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @console_lock()
  %19 = load %struct.s3fb_info*, %struct.s3fb_info** %7, align 8
  %20 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PM_EVENT_FREEZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.s3fb_info*, %struct.s3fb_info** %7, align 8
  %28 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %2
  %32 = load %struct.s3fb_info*, %struct.s3fb_info** %7, align 8
  %33 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = call i32 (...) @console_unlock()
  store i32 0, i32* %3, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %38 = call i32 @fb_set_suspend(%struct.fb_info* %37, i32 1)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i32 @pci_save_state(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @pci_choose_state(%struct.pci_dev* %44, i64 %46)
  %48 = call i32 @pci_set_power_state(%struct.pci_dev* %43, i32 %47)
  %49 = load %struct.s3fb_info*, %struct.s3fb_info** %7, align 8
  %50 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = call i32 (...) @console_unlock()
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %36, %31
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
