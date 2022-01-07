; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcihost_wrapper.c_ssb_pcihost_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcihost_wrapper.c_ssb_pcihost_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.pci_device_id = type { i32 }
%struct.ssb_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ssb_pcihost_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcihost_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ssb_bus* @kzalloc(i32 4, i32 %12)
  store %struct.ssb_bus* %13, %struct.ssb_bus** %6, align 8
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %15 = icmp ne %struct.ssb_bus* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %83

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = call i8* @dev_name(i32* %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %31, %23
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @pci_request_regions(%struct.pci_dev* %45, i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %80

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_set_master(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i32 64, i32* %9)
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, -65281
  %63 = call i32 @pci_write_config_dword(%struct.pci_dev* %60, i32 64, i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  %65 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @ssb_bus_pcibus_register(%struct.ssb_bus* %65, %struct.pci_dev* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %74 = call i32 @pci_set_drvdata(%struct.pci_dev* %72, %struct.ssb_bus* %73)
  br label %75

75:                                               ; preds = %71, %16
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %87

77:                                               ; preds = %70
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_release_regions(%struct.pci_dev* %78)
  br label %80

80:                                               ; preds = %77, %50
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_disable_device(%struct.pci_dev* %81)
  br label %83

83:                                               ; preds = %80, %22
  %84 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %85 = call i32 @kfree(%struct.ssb_bus* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.ssb_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ssb_bus_pcibus_register(%struct.ssb_bus*, %struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ssb_bus*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
