; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_phy.c_sci_phy_set_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_phy.c_sci_phy_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { i32, %struct.isci_port* }
%struct.isci_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_phy_set_port(%struct.isci_phy* %0, %struct.isci_port* %1) #0 {
  %3 = alloca %struct.isci_phy*, align 8
  %4 = alloca %struct.isci_port*, align 8
  store %struct.isci_phy* %0, %struct.isci_phy** %3, align 8
  store %struct.isci_port* %1, %struct.isci_port** %4, align 8
  %5 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %6 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %7 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %6, i32 0, i32 1
  store %struct.isci_port* %5, %struct.isci_port** %7, align 8
  %8 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %9 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %14 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %16 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %15, i32 0, i32 1
  %17 = load %struct.isci_port*, %struct.isci_port** %16, align 8
  %18 = load %struct.isci_phy*, %struct.isci_phy** %3, align 8
  %19 = call i32 @sci_port_broadcast_change_received(%struct.isci_port* %17, %struct.isci_phy* %18)
  br label %20

20:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @sci_port_broadcast_change_received(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
