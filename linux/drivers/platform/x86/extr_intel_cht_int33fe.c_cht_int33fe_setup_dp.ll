; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_setup_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_setup_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_int33fe_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.pci_dev = type { i64, i32 }

@nodes = common dso_local global i32* null, align 8
@INT33FE_NODE_DISPLAYPORT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"DD02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cht_int33fe_data*)* @cht_int33fe_setup_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_int33fe_setup_dp(%struct.cht_int33fe_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cht_int33fe_data*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.cht_int33fe_data* %0, %struct.cht_int33fe_data** %3, align 8
  %6 = load i32*, i32** @nodes, align 8
  %7 = load i64, i64* @INT33FE_NODE_DISPLAYPORT, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call %struct.fwnode_handle* @software_node_fwnode(i32* %8)
  store %struct.fwnode_handle* %9, %struct.fwnode_handle** %4, align 8
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %11 = icmp ne %struct.fwnode_handle* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %17 = shl i32 %16, 8
  %18 = call %struct.pci_dev* @pci_get_class(i32 %17, i32* null)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = icmp ne %struct.pci_dev* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %15
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = call i32 @pci_dev_put(%struct.pci_dev* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %21
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = call %struct.TYPE_2__* @device_get_named_child_node(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %3, align 8
  %37 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %36, i32 0, i32 0
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @pci_dev_put(%struct.pci_dev* %38)
  %40 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %3, align 8
  %41 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %32
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @ERR_PTR(i32 %49)
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %52 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %54 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %3, align 8
  %55 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.fwnode_handle* %53, %struct.fwnode_handle** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %44, %27, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.fwnode_handle* @software_node_fwnode(i32*) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.TYPE_2__* @device_get_named_child_node(i32*, i8*) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
