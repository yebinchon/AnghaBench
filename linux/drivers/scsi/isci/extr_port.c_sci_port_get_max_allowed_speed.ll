; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_max_allowed_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_get_max_allowed_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { %struct.isci_phy** }
%struct.isci_phy = type { i32 }

@SAS_LINK_RATE_6_0_GBPS = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_port_get_max_allowed_speed(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  %6 = load i32, i32* @SAS_LINK_RATE_6_0_GBPS, align 4
  store i32 %6, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SCI_MAX_PHYS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %13 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %12, i32 0, i32 0
  %14 = load %struct.isci_phy**, %struct.isci_phy*** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %14, i64 %15
  %17 = load %struct.isci_phy*, %struct.isci_phy** %16, align 8
  store %struct.isci_phy* %17, %struct.isci_phy** %4, align 8
  %18 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %19 = icmp ne %struct.isci_phy* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %22 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %23 = call i64 @sci_port_active_phy(%struct.isci_port* %21, %struct.isci_phy* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %27 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %33 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %25, %20, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @sci_port_active_phy(%struct.isci_port*, %struct.isci_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
