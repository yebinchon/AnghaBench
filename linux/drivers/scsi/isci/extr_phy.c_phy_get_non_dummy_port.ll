; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_phy.c_phy_get_non_dummy_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_phy.c_phy_get_non_dummy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64 }
%struct.isci_phy = type { %struct.isci_port* }

@SCIC_SDS_DUMMY_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.isci_port* @phy_get_non_dummy_port(%struct.isci_phy* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca %struct.isci_phy*, align 8
  %4 = alloca %struct.isci_port*, align 8
  store %struct.isci_phy* %0, %struct.isci_phy** %3, align 8
  %5 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %6 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %5, i32 0, i32 0
  %7 = load %struct.isci_port*, %struct.isci_port** %6, align 8
  store %struct.isci_port* %7, %struct.isci_port** %4, align 8
  %8 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %9 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCIC_SDS_DUMMY_PORT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.isci_port* null, %struct.isci_port** %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %16 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %15, i32 0, i32 0
  %17 = load %struct.isci_port*, %struct.isci_port** %16, align 8
  store %struct.isci_port* %17, %struct.isci_port** %2, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  ret %struct.isci_port* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
