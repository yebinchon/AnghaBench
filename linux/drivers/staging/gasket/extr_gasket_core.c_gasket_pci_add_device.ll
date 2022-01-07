; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_pci_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_pci_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.gasket_dev = type { i32, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gasket_internal_desc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"add PCI gasket device\0A\00", align 1
@g_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"PCI add device called for unknown driver type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot create sysfs pci link: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_pci_add_device(%struct.pci_dev* %0, %struct.gasket_dev** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.gasket_dev**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_internal_desc*, align 8
  %8 = alloca %struct.gasket_dev*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.gasket_dev** %1, %struct.gasket_dev*** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @mutex_lock(i32* @g_mutex)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call %struct.gasket_internal_desc* @lookup_pci_internal_desc(%struct.pci_dev* %14)
  store %struct.gasket_internal_desc* %15, %struct.gasket_internal_desc** %7, align 8
  %16 = call i32 @mutex_unlock(i32* @g_mutex)
  %17 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %18 = icmp ne %struct.gasket_internal_desc* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %9, align 8
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %30 = call i32 @__gasket_add_device(%struct.device* %28, %struct.gasket_internal_desc* %29, %struct.gasket_dev** %8)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %38 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %37, i32 0, i32 2
  store %struct.pci_dev* %36, %struct.pci_dev** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %41 = call i32 @gasket_setup_pci(%struct.pci_dev* %39, %struct.gasket_dev* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %71

45:                                               ; preds = %35
  %46 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %47 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_name(%struct.device* %55)
  %57 = call i32 @sysfs_create_link(i32* %50, i32* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %62 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.device*
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %71

68:                                               ; preds = %45
  %69 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %70 = load %struct.gasket_dev**, %struct.gasket_dev*** %5, align 8
  store %struct.gasket_dev* %69, %struct.gasket_dev** %70, align 8
  store i32 0, i32* %3, align 4
  br label %78

71:                                               ; preds = %60, %44
  %72 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %73 = call i32 @gasket_cleanup_pci(%struct.gasket_dev* %72)
  %74 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %75 = load %struct.gasket_dev*, %struct.gasket_dev** %8, align 8
  %76 = call i32 @__gasket_remove_device(%struct.gasket_internal_desc* %74, %struct.gasket_dev* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %68, %33, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gasket_internal_desc* @lookup_pci_internal_desc(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @__gasket_add_device(%struct.device*, %struct.gasket_internal_desc*, %struct.gasket_dev**) #1

declare dso_local i32 @gasket_setup_pci(%struct.pci_dev*, %struct.gasket_dev*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @gasket_cleanup_pci(%struct.gasket_dev*) #1

declare dso_local i32 @__gasket_remove_device(%struct.gasket_internal_desc*, %struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
