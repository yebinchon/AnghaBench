; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { i32, %struct.s3fb_info* }
%struct.s3fb_info = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"resume\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error %d enabling device for resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @s3_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_pci_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.s3fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.s3fb_info*, %struct.s3fb_info** %10, align 8
  store %struct.s3fb_info* %11, %struct.s3fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @console_lock()
  %17 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = call i32 (...) @console_unlock()
  store i32 0, i32* %2, align 4
  br label %61

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load i32, i32* @PCI_D0, align 4
  %32 = call i32 @pci_set_power_state(%struct.pci_dev* %30, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_restore_state(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %41 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = call i32 (...) @console_unlock()
  %44 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %29
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = call i32 @pci_set_master(%struct.pci_dev* %51)
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = call i32 @s3fb_set_par(%struct.fb_info* %53)
  %55 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %56 = call i32 @fb_set_suspend(%struct.fb_info* %55, i32 0)
  %57 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = call i32 (...) @console_unlock()
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %50, %39, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @s3fb_set_par(%struct.fb_info*) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
