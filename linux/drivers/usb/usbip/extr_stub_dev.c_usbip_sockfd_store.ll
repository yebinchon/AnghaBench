; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_usbip_sockfd_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_usbip_sockfd_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stub_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i8*, i8*, %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sdev is null\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"stub up\0A\00", align 1
@SDEV_ST_AVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"not ready\0A\00", align 1
@stub_rx_loop = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"stub_rx\00", align 1
@stub_tx_loop = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"stub_tx\00", align 1
@SDEV_ST_USED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"stub down\0A\00", align 1
@SDEV_EVENT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @usbip_sockfd_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbip_sockfd_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stub_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.stub_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.stub_device* %16, %struct.stub_device** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %18 = icmp ne %struct.stub_device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @ENODEV, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %128

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %128

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %96

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %39 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %43 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SDEV_ST_AVAILABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %121

51:                                               ; preds = %35
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.socket* @sockfd_lookup(i32 %52, i32* %14)
  store %struct.socket* %53, %struct.socket** %12, align 8
  %54 = load %struct.socket*, %struct.socket** %12, align 8
  %55 = icmp ne %struct.socket* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %121

57:                                               ; preds = %51
  %58 = load %struct.socket*, %struct.socket** %12, align 8
  %59 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %60 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store %struct.socket* %58, %struct.socket** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %64 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %67 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i32, i32* @stub_rx_loop, align 4
  %71 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %72 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %71, i32 0, i32 0
  %73 = call i8* @kthread_get_run(i32 %70, %struct.TYPE_3__* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %75 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @stub_tx_loop, align 4
  %78 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %79 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %78, i32 0, i32 0
  %80 = call i8* @kthread_get_run(i32 %77, %struct.TYPE_3__* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %82 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i8* %80, i8** %83, align 8
  %84 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %85 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = call i32 @spin_lock_irq(i32* %86)
  %88 = load i64, i64* @SDEV_ST_USED, align 8
  %89 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %90 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %93 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = call i32 @spin_unlock_irq(i32* %94)
  br label %119

96:                                               ; preds = %32
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %100 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = call i32 @spin_lock_irq(i32* %101)
  %103 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %104 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SDEV_ST_USED, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %121

110:                                              ; preds = %96
  %111 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %112 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_irq(i32* %113)
  %115 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %116 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %115, i32 0, i32 0
  %117 = load i32, i32* @SDEV_EVENT_DOWN, align 4
  %118 = call i32 @usbip_event_add(%struct.TYPE_3__* %116, i32 %117)
  br label %119

119:                                              ; preds = %110, %57
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %5, align 8
  br label %128

121:                                              ; preds = %109, %56, %48
  %122 = load %struct.stub_device*, %struct.stub_device** %10, align 8
  %123 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = call i32 @spin_unlock_irq(i32* %124)
  %126 = load i64, i64* @EINVAL, align 8
  %127 = sub i64 0, %126
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %121, %119, %29, %19
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local %struct.stub_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @kthread_get_run(i32, %struct.TYPE_3__*, i8*) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
