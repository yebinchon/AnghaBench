; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pqi_ctrl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pqi_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pqi_ctrl_info* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.pqi_ctrl_info* %5, %struct.pqi_ctrl_info** %3, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %7 = icmp ne %struct.pqi_ctrl_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = call i32 @pqi_remove_ctrl(%struct.pqi_ctrl_info* %12)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.pqi_ctrl_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pqi_remove_ctrl(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
