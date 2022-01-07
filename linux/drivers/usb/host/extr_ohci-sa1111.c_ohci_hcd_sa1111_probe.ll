; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hcd = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ohci_sa1111_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sa1111\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1111_dev*)* @ohci_hcd_sa1111_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_sa1111_probe(%struct.sa1111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sa1111_dev*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %3, align 8
  %7 = call i64 (...) @usb_disabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %101

12:                                               ; preds = %1
  %13 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %14 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %13, i32 0, i32 1
  %15 = call %struct.usb_hcd* @usb_create_hcd(i32* @ohci_sa1111_hc_driver, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %15, %struct.usb_hcd** %4, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = icmp ne %struct.usb_hcd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %101

21:                                               ; preds = %12
  %22 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %23 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %29 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %28, i32 0, i32 2
  %30 = call i32 @resource_size(%struct.TYPE_4__* %29)
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %34 = call i32 @sa1111_get_irq(%struct.sa1111_dev* %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ %38, %40 ], [ %43, %41 ]
  store i32 %45, i32* %5, align 4
  br label %97

46:                                               ; preds = %21
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @hcd_name, align 4
  %54 = call i32 @request_mem_region(i32 %49, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %58 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %57, i32 0, i32 1
  %59 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %97

62:                                               ; preds = %46
  %63 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %64 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %69 = call i32 @sa1111_start_hc(%struct.sa1111_dev* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %89

73:                                               ; preds = %62
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @usb_add_hcd(%struct.usb_hcd* %74, i32 %75, i32 0)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @device_wakeup_enable(i32 %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %101

86:                                               ; preds = %73
  %87 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %88 = call i32 @sa1111_stop_hc(%struct.sa1111_dev* %87)
  br label %89

89:                                               ; preds = %86, %72
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @release_mem_region(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %89, %56, %44
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %99 = call i32 @usb_put_hcd(%struct.usb_hcd* %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %79, %18, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, i32*, i8*) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @sa1111_get_irq(%struct.sa1111_dev*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @sa1111_start_hc(%struct.sa1111_dev*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @sa1111_stop_hc(%struct.sa1111_dev*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
