; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32, i32, i32 }
%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_bus*, %struct.pci_dev* }

@ks_pcie_quirk.rc_pci_devids = internal constant [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 33024, i32 0, i32 -1 }, %struct.pci_device_id { i32 33024, i32 0, i32 -1 }, %struct.pci_device_id { i32 33024, i32 0, i32 -1 }, %struct.pci_device_id { i32 33024, i32 0, i32 -1 }, %struct.pci_device_id zeroinitializer], align 16
@.str = private unnamed_addr constant [22 x i8] c"limiting MRRS to 256\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ks_pcie_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_quirk(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1
  %7 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  store %struct.pci_bus* %7, %struct.pci_bus** %3, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = call i64 @pci_is_root_bus(%struct.pci_bus* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  br label %13

13:                                               ; preds = %11, %1
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %16 = call i64 @pci_is_root_bus(%struct.pci_bus* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load %struct.pci_bus*, %struct.pci_bus** %24, align 8
  store %struct.pci_bus* %25, %struct.pci_bus** %3, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %45

30:                                               ; preds = %26
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i64 @pci_match_id(%struct.pci_device_id* getelementptr inbounds ([5 x %struct.pci_device_id], [5 x %struct.pci_device_id]* @ks_pcie_quirk.rc_pci_devids, i64 0, i64 0), %struct.pci_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pcie_get_readrq(%struct.pci_dev* %35)
  %37 = icmp sgt i32 %36, 256
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pcie_set_readrq(%struct.pci_dev* %42, i32 256)
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %29, %44, %30
  ret void
}

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i64 @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

declare dso_local i32 @pcie_get_readrq(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pcie_set_readrq(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
