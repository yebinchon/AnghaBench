; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_mf624.c_mf624_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_mf624.c_mf624_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.uio_info = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mf624\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"PCI chipset, interrupts, status bits, special functions\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ADC, DAC, DIO\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Counter/timer chip\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@mf624_irq_handler = common dso_local global i32 0, align 4
@mf624_irqcontrol = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mf624_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf624_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uio_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uio_info* @kzalloc(i32 40, i32 %7)
  store %struct.uio_info* %8, %struct.uio_info** %6, align 8
  %9 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %10 = icmp ne %struct.uio_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %115

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @pci_enable_device(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %110

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i64 @pci_request_regions(%struct.pci_dev* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %107

24:                                               ; preds = %19
  %25 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %26 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %28 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %31 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = call i64 @mf624_setup_mem(%struct.pci_dev* %29, i32 0, %struct.TYPE_2__* %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %104

37:                                               ; preds = %24
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %40 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = call i64 @mf624_setup_mem(%struct.pci_dev* %38, i32 2, %struct.TYPE_2__* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %96

46:                                               ; preds = %37
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %49 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 2
  %52 = call i64 @mf624_setup_mem(%struct.pci_dev* %47, i32 4, %struct.TYPE_2__* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %88

55:                                               ; preds = %46
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %60 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @IRQF_SHARED, align 4
  %62 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %63 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @mf624_irq_handler, align 4
  %65 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %66 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @mf624_irqcontrol, align 4
  %68 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %69 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %73 = call i64 @uio_register_device(i32* %71, %struct.uio_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %80

76:                                               ; preds = %55
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %79 = call i32 @pci_set_drvdata(%struct.pci_dev* %77, %struct.uio_info* %78)
  store i32 0, i32* %3, align 4
  br label %115

80:                                               ; preds = %75
  %81 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %82 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @iounmap(i32 %86)
  br label %88

88:                                               ; preds = %80, %54
  %89 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %90 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @iounmap(i32 %94)
  br label %96

96:                                               ; preds = %88, %45
  %97 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %98 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @iounmap(i32 %102)
  br label %104

104:                                              ; preds = %96, %36
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = call i32 @pci_release_regions(%struct.pci_dev* %105)
  br label %107

107:                                              ; preds = %104, %23
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i32 @pci_disable_device(%struct.pci_dev* %108)
  br label %110

110:                                              ; preds = %107, %18
  %111 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %112 = call i32 @kfree(%struct.uio_info* %111)
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %76, %11
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.uio_info* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @mf624_setup_mem(%struct.pci_dev*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
