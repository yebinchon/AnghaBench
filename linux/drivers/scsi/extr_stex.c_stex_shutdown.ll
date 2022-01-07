; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.st_hba = type { i32 }

@ST_IGNORED = common dso_local global i32 0, align 4
@S6flag = common dso_local global i64 0, align 8
@stex_notifier = common dso_local global i32 0, align 4
@ST_S6 = common dso_local global i32 0, align 4
@ST_S5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @stex_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.st_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.st_hba* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.st_hba* %5, %struct.st_hba** %3, align 8
  %6 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %7 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %12 = load i32, i32* @ST_IGNORED, align 4
  %13 = call i32 @stex_hba_stop(%struct.st_hba* %11, i32 %12)
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %16 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i64, i64* @S6flag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i32 @unregister_reboot_notifier(i32* @stex_notifier)
  %24 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %25 = load i32, i32* @ST_S6, align 4
  %26 = call i32 @stex_hba_stop(%struct.st_hba* %24, i32 %25)
  br label %31

27:                                               ; preds = %19, %14
  %28 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %29 = load i32, i32* @ST_S5, align 4
  %30 = call i32 @stex_hba_stop(%struct.st_hba* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %10
  ret void
}

declare dso_local %struct.st_hba* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @stex_hba_stop(%struct.st_hba*, i32) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
