; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64, i64 }
%struct.pqi_ctrl_info = type { %struct.pci_dev* }

@pqi_disable_device_id_wildcards = common dso_local global i64 0, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"controller not probed because device ID wildcards are disabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"controller device ID matched using wildcards\0A\00", align 1
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to allocate controller info block\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pqi_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = call i32 @pqi_print_ctrl_info(%struct.pci_dev* %10, %struct.pci_device_id* %11)
  %13 = load i64, i64* @pqi_disable_device_id_wildcards, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_ANY_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_ANY_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %21, %15, %2
  %34 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_ANY_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI_ANY_ID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %33
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_to_node(i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NUMA_NO_NODE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = call i32 @cpu_to_node(i32 0)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @NUMA_NO_NODE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @set_dev_node(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %49
  %68 = load i32, i32* %7, align 4
  %69 = call %struct.pqi_ctrl_info* @pqi_alloc_ctrl_info(i32 %68)
  store %struct.pqi_ctrl_info* %69, %struct.pqi_ctrl_info** %9, align 8
  %70 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %9, align 8
  %71 = icmp ne %struct.pqi_ctrl_info* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %67
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %9, align 8
  %81 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %80, i32 0, i32 0
  store %struct.pci_dev* %79, %struct.pci_dev** %81, align 8
  %82 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %9, align 8
  %83 = call i32 @pqi_pci_init(%struct.pqi_ctrl_info* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %94

87:                                               ; preds = %78
  %88 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %9, align 8
  %89 = call i32 @pqi_ctrl_init(%struct.pqi_ctrl_info* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %98

94:                                               ; preds = %92, %86
  %95 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %9, align 8
  %96 = call i32 @pqi_remove_ctrl(%struct.pqi_ctrl_info* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %93, %72, %27
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @pqi_print_ctrl_info(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local %struct.pqi_ctrl_info* @pqi_alloc_ctrl_info(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pqi_pci_init(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_init(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_remove_ctrl(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
