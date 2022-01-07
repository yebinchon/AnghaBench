; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_reassigndev_resource_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_reassigndev_resource_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, %struct.resource*, i64 }
%struct.resource = type { i32, i64, i64 }

@PCI_HEADER_TYPE_NORMAL = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't reassign resources to host bridge\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_reassigndev_resource_alignment(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_specified_resource_alignment(%struct.pci_dev* %14, i32* %7)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %105

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_HEADER_TYPE_NORMAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 8
  %30 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_warn(%struct.pci_dev* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %105

35:                                               ; preds = %25, %19
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load i32, i32* @PCI_COMMAND, align 4
  %38 = call i32 @pci_read_config_word(%struct.pci_dev* %36, i32 %37, i32* %6)
  %39 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load i32, i32* @PCI_COMMAND, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pci_write_config_word(%struct.pci_dev* %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %57, %35
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pci_request_resource_alignment(%struct.pci_dev* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %60
  %67 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %99, %66
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 2
  %75 = load %struct.resource*, %struct.resource** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %75, i64 %77
  store %struct.resource* %78, %struct.resource** %4, align 8
  %79 = load %struct.resource*, %struct.resource** %4, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  br label %99

86:                                               ; preds = %72
  %87 = load i32, i32* @IORESOURCE_UNSET, align 4
  %88 = load %struct.resource*, %struct.resource** %4, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.resource*, %struct.resource** %4, align 8
  %93 = call i64 @resource_size(%struct.resource* %92)
  %94 = sub nsw i64 %93, 1
  %95 = load %struct.resource*, %struct.resource** %4, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.resource*, %struct.resource** %4, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %86, %85
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %104 = call i32 @pci_disable_bridge_window(%struct.pci_dev* %103)
  br label %105

105:                                              ; preds = %12, %18, %32, %102, %60
  ret void
}

declare dso_local i32 @pci_specified_resource_alignment(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_request_resource_alignment(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pci_disable_bridge_window(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
