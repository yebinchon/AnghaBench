; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_xen_pcibk_config_add_field_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space.c_xen_pcibk_config_add_field_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.config_field = type { i8* (%struct.pci_dev*, i32)* }
%struct.xen_pcibk_dev_data = type { i32 }
%struct.config_field_entry = type { i32, i32, i32*, %struct.config_field* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"added config field at offset 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_pcibk_config_add_field_offset(%struct.pci_dev* %0, %struct.config_field* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.config_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_pcibk_dev_data*, align 8
  %9 = alloca %struct.config_field_entry*, align 8
  %10 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.config_field* %1, %struct.config_field** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.xen_pcibk_dev_data* %12, %struct.xen_pcibk_dev_data** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.config_field_entry* @kmalloc(i32 24, i32 %13)
  store %struct.config_field_entry* %14, %struct.config_field_entry** %9, align 8
  %15 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %16 = icmp ne %struct.config_field_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %22 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.config_field*, %struct.config_field** %5, align 8
  %24 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %25 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %24, i32 0, i32 3
  store %struct.config_field* %23, %struct.config_field** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %28 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %31 = call i32 @OFFSET(%struct.config_field_entry* %30)
  %32 = call i32 @xen_pcibk_field_is_dup(%struct.pci_dev* %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %71

36:                                               ; preds = %20
  %37 = load %struct.config_field*, %struct.config_field** %5, align 8
  %38 = getelementptr inbounds %struct.config_field, %struct.config_field* %37, i32 0, i32 0
  %39 = load i8* (%struct.pci_dev*, i32)*, i8* (%struct.pci_dev*, i32)** %38, align 8
  %40 = icmp ne i8* (%struct.pci_dev*, i32)* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.config_field*, %struct.config_field** %5, align 8
  %43 = getelementptr inbounds %struct.config_field, %struct.config_field* %42, i32 0, i32 0
  %44 = load i8* (%struct.pci_dev*, i32)*, i8* (%struct.pci_dev*, i32)** %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %47 = call i32 @OFFSET(%struct.config_field_entry* %46)
  %48 = call i8* %44(%struct.pci_dev* %45, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %7, align 4
  br label %71

55:                                               ; preds = %41
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %59 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %36
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %64 = call i32 @OFFSET(%struct.config_field_entry* %63)
  %65 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %67 = getelementptr inbounds %struct.config_field_entry, %struct.config_field_entry* %66, i32 0, i32 1
  %68 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %8, align 8
  %69 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  br label %71

71:                                               ; preds = %60, %52, %35, %17
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.config_field_entry*, %struct.config_field_entry** %9, align 8
  %76 = call i32 @kfree(%struct.config_field_entry* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.config_field_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @xen_pcibk_field_is_dup(%struct.pci_dev*, i32) #1

declare dso_local i32 @OFFSET(%struct.config_field_entry*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.config_field_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
