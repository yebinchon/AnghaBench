; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_stdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_stdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_dev = type { i32, %struct.device, %struct.cdev, i32, i32, i32, i32, i32, i64, i32, i32, %struct.pci_dev* }
%struct.device = type { i32, i32, i32, i32*, i32 }
%struct.cdev = type { i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mrpc_event_work = common dso_local global i32 0, align 4
@mrpc_timeout_work = common dso_local global i32 0, align 4
@link_event_work = common dso_local global i32 0, align 4
@switchtec_class = common dso_local global i32 0, align 4
@switchtec_device_groups = common dso_local global i32 0, align 4
@stdev_release = common dso_local global i32 0, align 4
@switchtec_minor_ida = common dso_local global i32 0, align 4
@switchtec_devt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"switchtec%d\00", align 1
@switchtec_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.switchtec_dev* (%struct.pci_dev*)* @stdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.switchtec_dev* @stdev_create(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.switchtec_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.switchtec_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_to_node(i32* %11)
  %13 = call %struct.switchtec_dev* @kzalloc_node(i32 88, i32 %9, i32 %12)
  store %struct.switchtec_dev* %13, %struct.switchtec_dev** %4, align 8
  %14 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %15 = icmp ne %struct.switchtec_dev* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.switchtec_dev* @ERR_PTR(i32 %18)
  store %struct.switchtec_dev* %19, %struct.switchtec_dev** %2, align 8
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %22 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %25 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %24, i32 0, i32 11
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %27 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %26, i32 0, i32 10
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %30 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %29, i32 0, i32 9
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %33 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %35 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %34, i32 0, i32 7
  %36 = load i32, i32* @mrpc_event_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %39 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %38, i32 0, i32 6
  %40 = load i32, i32* @mrpc_timeout_work, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %43 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %42, i32 0, i32 5
  %44 = load i32, i32* @link_event_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %47 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %46, i32 0, i32 4
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %50 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %49, i32 0, i32 3
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  %52 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %53 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %52, i32 0, i32 1
  store %struct.device* %53, %struct.device** %6, align 8
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 @device_initialize(%struct.device* %54)
  %56 = load i32, i32* @switchtec_class, align 4
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @switchtec_device_groups, align 4
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @stdev_release, align 4
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @ida_simple_get(i32* @switchtec_minor_ida, i32 0, i32 0, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %20
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %8, align 4
  br label %93

75:                                               ; preds = %20
  %76 = load i32, i32* @switchtec_devt, align 4
  %77 = call i32 @MAJOR(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @MKDEV(i32 %77, i32 %78)
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_set_name(%struct.device* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %86 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %85, i32 0, i32 2
  store %struct.cdev* %86, %struct.cdev** %7, align 8
  %87 = load %struct.cdev*, %struct.cdev** %7, align 8
  %88 = call i32 @cdev_init(%struct.cdev* %87, i32* @switchtec_fops)
  %89 = load i32, i32* @THIS_MODULE, align 4
  %90 = load %struct.cdev*, %struct.cdev** %7, align 8
  %91 = getelementptr inbounds %struct.cdev, %struct.cdev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  store %struct.switchtec_dev* %92, %struct.switchtec_dev** %2, align 8
  br label %99

93:                                               ; preds = %73
  %94 = load %struct.switchtec_dev*, %struct.switchtec_dev** %4, align 8
  %95 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %94, i32 0, i32 1
  %96 = call i32 @put_device(%struct.device* %95)
  %97 = load i32, i32* %8, align 4
  %98 = call %struct.switchtec_dev* @ERR_PTR(i32 %97)
  store %struct.switchtec_dev* %98, %struct.switchtec_dev** %2, align 8
  br label %99

99:                                               ; preds = %93, %75, %16
  %100 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  ret %struct.switchtec_dev* %100
}

declare dso_local %struct.switchtec_dev* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local %struct.switchtec_dev* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.cdev*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
