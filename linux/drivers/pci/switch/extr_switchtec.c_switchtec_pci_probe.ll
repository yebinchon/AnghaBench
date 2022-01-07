; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.switchtec_dev = type { %struct.TYPE_7__, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PCI_CLASS_BRIDGE_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ntb_hw_switchtec\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to init isr.\0A\00", align 1
@SWITCHTEC_EVENT_CLEAR = common dso_local global i32 0, align 4
@SWITCHTEC_EVENT_EN_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Management device registered.\0A\00", align 1
@switchtec_minor_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @switchtec_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.switchtec_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_CLASS_BRIDGE_OTHER, align 4
  %12 = shl i32 %11, 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @request_module_nowait(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call %struct.switchtec_dev* @stdev_create(%struct.pci_dev* %17)
  store %struct.switchtec_dev* %18, %struct.switchtec_dev** %6, align 8
  %19 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %20 = call i64 @IS_ERR(%struct.switchtec_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.switchtec_dev* %23)
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %16
  %26 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @switchtec_init_pci(%struct.switchtec_dev* %26, %struct.pci_dev* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %75

32:                                               ; preds = %25
  %33 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %34 = call i32 @switchtec_init_isr(%struct.switchtec_dev* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %39 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %75

41:                                               ; preds = %32
  %42 = load i32, i32* @SWITCHTEC_EVENT_CLEAR, align 4
  %43 = load i32, i32* @SWITCHTEC_EVENT_EN_IRQ, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %46 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @iowrite32(i32 %44, i32* %48)
  %50 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %51 = call i32 @enable_link_state_events(%struct.switchtec_dev* %50)
  %52 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %53 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %58 = call i32 @enable_dma_mrpc(%struct.switchtec_dev* %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %61 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %60, i32 0, i32 1
  %62 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %63 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %62, i32 0, i32 0
  %64 = call i32 @cdev_device_add(i32* %61, %struct.TYPE_7__* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %70 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %69, i32 0, i32 0
  %71 = call i32 @dev_info(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

72:                                               ; preds = %67
  %73 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %74 = call i32 @stdev_kill(%struct.switchtec_dev* %73)
  br label %75

75:                                               ; preds = %72, %37, %31
  %76 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %77 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @MINOR(i32 %79)
  %81 = call i32 @ida_simple_remove(i32* @switchtec_minor_ida, i32 %80)
  %82 = load %struct.switchtec_dev*, %struct.switchtec_dev** %6, align 8
  %83 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %82, i32 0, i32 0
  %84 = call i32 @put_device(%struct.TYPE_7__* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %75, %68, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @request_module_nowait(i8*) #1

declare dso_local %struct.switchtec_dev* @stdev_create(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.switchtec_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.switchtec_dev*) #1

declare dso_local i32 @switchtec_init_pci(%struct.switchtec_dev*, %struct.pci_dev*) #1

declare dso_local i32 @switchtec_init_isr(%struct.switchtec_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @enable_link_state_events(%struct.switchtec_dev*) #1

declare dso_local i32 @enable_dma_mrpc(%struct.switchtec_dev*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @stdev_kill(%struct.switchtec_dev*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
