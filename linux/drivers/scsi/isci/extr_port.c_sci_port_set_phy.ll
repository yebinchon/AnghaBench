; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_set_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { %struct.isci_phy**, i32, i32 }
%struct.isci_phy = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_port*, %struct.isci_phy*)* @sci_port_set_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_port_set_phy(%struct.isci_port* %0, %struct.isci_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca %struct.isci_phy*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store %struct.isci_phy* %1, %struct.isci_phy** %5, align 8
  %6 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %7 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %6, i32 0, i32 0
  %8 = load %struct.isci_phy**, %struct.isci_phy*** %7, align 8
  %9 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %10 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %8, i64 %11
  %13 = load %struct.isci_phy*, %struct.isci_phy** %12, align 8
  %14 = icmp ne %struct.isci_phy* %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %2
  %16 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %17 = call i32 @phy_get_non_dummy_port(%struct.isci_phy* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %21 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %22 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @sci_port_is_valid_phy_assignment(%struct.isci_port* %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %28 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %31 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %33 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %34 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %33, i32 0, i32 0
  %35 = load %struct.isci_phy**, %struct.isci_phy*** %34, align 8
  %36 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %37 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.isci_phy*, %struct.isci_phy** %35, i64 %38
  store %struct.isci_phy* %32, %struct.isci_phy** %39, align 8
  %40 = load %struct.isci_phy*, %struct.isci_phy** %5, align 8
  %41 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %42 = call i32 @sci_phy_set_port(%struct.isci_phy* %40, %struct.isci_port* %41)
  %43 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %19, %15, %2
  %45 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @phy_get_non_dummy_port(%struct.isci_phy*) #1

declare dso_local i64 @sci_port_is_valid_phy_assignment(%struct.isci_port*, i64) #1

declare dso_local i32 @sci_phy_set_port(%struct.isci_phy*, %struct.isci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
