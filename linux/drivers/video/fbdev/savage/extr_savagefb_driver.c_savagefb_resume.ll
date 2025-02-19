; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"savage_resume\00", align 1
@PM_EVENT_ON = common dso_local global i32 0, align 4
@PM_EVENT_FREEZE = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @savagefb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %10, align 8
  store %struct.savagefb_par* %11, %struct.savagefb_par** %5, align 8
  %12 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %13 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @PM_EVENT_ON, align 4
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %18 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PM_EVENT_FREEZE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_D0, align 4
  %25 = call i32 @pci_set_power_state(%struct.pci_dev* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %53

26:                                               ; preds = %1
  %27 = call i32 (...) @console_lock()
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_D0, align 4
  %30 = call i32 @pci_set_power_state(%struct.pci_dev* %28, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_restore_state(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i64 @pci_enable_device(%struct.pci_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %42 = call i32 @savage_enable_mmio(%struct.savagefb_par* %41)
  %43 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %44 = call i32 @savage_init_hw(%struct.savagefb_par* %43)
  %45 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %46 = call i32 @savagefb_set_par(%struct.fb_info* %45)
  %47 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %48 = call i32 @fb_set_suspend(%struct.fb_info* %47, i32 0)
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %51 = call i32 @savagefb_blank(i32 %49, %struct.fb_info* %50)
  %52 = call i32 (...) @console_unlock()
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %38, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @savage_enable_mmio(%struct.savagefb_par*) #1

declare dso_local i32 @savage_init_hw(%struct.savagefb_par*) #1

declare dso_local i32 @savagefb_set_par(%struct.fb_info*) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

declare dso_local i32 @savagefb_blank(i32, %struct.fb_info*) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
