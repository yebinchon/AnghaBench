; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpi_pcihp.c_acpi_get_hp_hw_control_from_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpi_pcihp.c_acpi_get_hp_hw_control_from_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus*, i32 }
%struct.pci_bus = type { %struct.pci_bus* }
%struct.pci_host_bridge = type { i64, i32 }
%struct.acpi_pci_root = type { i64 }
%struct.acpi_buffer = type { i64, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Requesting control of SHPC hotplug via OSHP (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot get control of SHPC hotplug\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Gained control of SHPC hotplug (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_hp_hw_control_from_firmware(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_host_bridge*, align 8
  %5 = alloca %struct.acpi_pci_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.pci_bus*, %struct.pci_bus** %17, align 8
  %19 = call %struct.pci_host_bridge* @pci_find_host_bridge(%struct.pci_bus* %18)
  store %struct.pci_host_bridge* %19, %struct.pci_host_bridge** %4, align 8
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %20, i32 0, i32 1
  %22 = call i64 @ACPI_HANDLE(i32* %21)
  %23 = call %struct.acpi_pci_root* @acpi_pci_find_root(i64 %22)
  store %struct.acpi_pci_root* %23, %struct.acpi_pci_root** %5, align 8
  %24 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %5, align 8
  %25 = icmp ne %struct.acpi_pci_root* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

27:                                               ; preds = %1
  %28 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %116

38:                                               ; preds = %32
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %116

41:                                               ; preds = %27
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = call i64 @ACPI_HANDLE(i32* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.pci_bus*, %struct.pci_bus** %49, align 8
  store %struct.pci_bus* %50, %struct.pci_bus** %10, align 8
  br label %51

51:                                               ; preds = %61, %47
  %52 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %53 = icmp ne %struct.pci_bus* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %56 = call i64 @acpi_pci_get_bridge_handle(%struct.pci_bus* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %63 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %62, i32 0, i32 0
  %64 = load %struct.pci_bus*, %struct.pci_bus** %63, align 8
  store %struct.pci_bus* %64, %struct.pci_bus** %10, align 8
  br label %51

65:                                               ; preds = %59, %51
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %73 = call i32 @acpi_get_name(i64 %71, i32 %72, %struct.acpi_buffer* %9)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @acpi_run_oshp(i64 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @ACPI_SUCCESS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %107

85:                                               ; preds = %70
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @acpi_is_root_bridge(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %99

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @acpi_get_parent(i64 %92, i64* %8)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @ACPI_FAILURE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %99

98:                                               ; preds = %90
  br label %67

99:                                               ; preds = %97, %89, %67
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @kfree(i64 %103)
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %116

107:                                              ; preds = %84
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @kfree(i64 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %99, %38, %37, %26
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(%struct.pci_bus*) #1

declare dso_local %struct.acpi_pci_root* @acpi_pci_find_root(i64) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @acpi_pci_get_bridge_handle(%struct.pci_bus*) #1

declare dso_local i32 @acpi_get_name(i64, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @acpi_run_oshp(i64) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @acpi_is_root_bridge(i64) #1

declare dso_local i32 @acpi_get_parent(i64, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
