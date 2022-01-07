; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pqi_ctrl_info = type { i32 }

@SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to flush controller cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pqi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.pqi_ctrl_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.pqi_ctrl_info* %6, %struct.pqi_ctrl_info** %4, align 8
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %8 = icmp ne %struct.pqi_ctrl_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %12 = load i32, i32* @SHUTDOWN, align 4
  %13 = call i32 @pqi_flush_cache(%struct.pqi_ctrl_info* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %15 = call i32 @pqi_free_interrupts(%struct.pqi_ctrl_info* %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %17 = call i32 @pqi_reset(%struct.pqi_ctrl_info* %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %9
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %20
  ret void
}

declare dso_local %struct.pqi_ctrl_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pqi_flush_cache(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_free_interrupts(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_reset(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
