; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_permissive_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_permissive_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.pcistub_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_pcibk_dev_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"enabling permissive mode configuration space accesses!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"permissive mode is potentially unsafe!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @permissive_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @permissive_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcistub_device*, align 8
  %13 = alloca %struct.xen_pcibk_dev_data*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @str_to_slot(i8* %14, i32* %7, i32* %8, i32* %9, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.pcistub_device* @pcistub_device_find(i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.pcistub_device* %24, %struct.pcistub_device** %12, align 8
  %25 = load %struct.pcistub_device*, %struct.pcistub_device** %12, align 8
  %26 = icmp ne %struct.pcistub_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %62

30:                                               ; preds = %19
  %31 = load %struct.pcistub_device*, %struct.pcistub_device** %12, align 8
  %32 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.TYPE_2__* %33)
  store %struct.xen_pcibk_dev_data* %34, %struct.xen_pcibk_dev_data** %13, align 8
  %35 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %13, align 8
  %36 = icmp ne %struct.xen_pcibk_dev_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %13, align 8
  %42 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %13, align 8
  %47 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.pcistub_device*, %struct.pcistub_device** %12, align 8
  %49 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.pcistub_device*, %struct.pcistub_device** %12, align 8
  %54 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %45, %40
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.pcistub_device*, %struct.pcistub_device** %12, align 8
  %61 = call i32 @pcistub_device_put(%struct.pcistub_device* %60)
  br label %62

62:                                               ; preds = %59, %27, %18
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @str_to_slot(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.pcistub_device* @pcistub_device_find(i32, i32, i32, i32) #1

declare dso_local %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pcistub_device_put(%struct.pcistub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
