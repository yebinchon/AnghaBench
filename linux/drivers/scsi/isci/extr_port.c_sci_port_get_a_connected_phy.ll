; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_a_connected_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_a_connected_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { i32 }
%struct.isci_port = type { %struct.isci_phy** }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isci_phy* (%struct.isci_port*)* @sci_port_get_a_connected_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isci_phy* @sci_port_get_a_connected_phy(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_phy*, align 8
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.isci_phy*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SCI_MAX_PHYS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %12 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %11, i32 0, i32 0
  %13 = load %struct.isci_phy**, %struct.isci_phy*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %13, i64 %14
  %16 = load %struct.isci_phy*, %struct.isci_phy** %15, align 8
  store %struct.isci_phy* %16, %struct.isci_phy** %5, align 8
  %17 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %18 = icmp ne %struct.isci_phy* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %21 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %22 = call i64 @sci_port_active_phy(%struct.isci_port* %20, %struct.isci_phy* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  store %struct.isci_phy* %25, %struct.isci_phy** %2, align 8
  br label %31

26:                                               ; preds = %19, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %6

30:                                               ; preds = %6
  store %struct.isci_phy* null, %struct.isci_phy** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.isci_phy*, %struct.isci_phy** %2, align 8
  ret %struct.isci_phy* %32
}

declare dso_local i64 @sci_port_active_phy(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
