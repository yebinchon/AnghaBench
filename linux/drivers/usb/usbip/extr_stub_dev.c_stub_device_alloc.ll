; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_dev.c_stub_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.usb_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"allocating stub device\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBIP_STUB = common dso_local global i32 0, align 4
@SDEV_ST_AVAILABLE = common dso_local global i32 0, align 4
@stub_shutdown_connection = common dso_local global i32 0, align 4
@stub_device_reset = common dso_local global i32 0, align 4
@stub_device_unusable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"register new device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stub_device* (%struct.usb_device*)* @stub_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stub_device* @stub_device_alloc(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.stub_device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.stub_device* @kzalloc(i32 80, i32 %18)
  store %struct.stub_device* %19, %struct.stub_device** %4, align 8
  %20 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %21 = icmp ne %struct.stub_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.stub_device* null, %struct.stub_device** %2, align 8
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = call i32 @usb_get_dev(%struct.usb_device* %24)
  %26 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %27 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %33 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @USBIP_STUB, align 4
  %35 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %36 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @SDEV_ST_AVAILABLE, align 4
  %39 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %40 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  %42 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %43 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %47 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %50 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %53 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %52, i32 0, i32 8
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %56 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %55, i32 0, i32 7
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %59 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %58, i32 0, i32 6
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %62 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %61, i32 0, i32 5
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %65 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %64, i32 0, i32 4
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %68 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %67, i32 0, i32 3
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %71 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %70, i32 0, i32 2
  %72 = call i32 @init_waitqueue_head(i32* %71)
  %73 = load i32, i32* @stub_shutdown_connection, align 4
  %74 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %75 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @stub_device_reset, align 4
  %79 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %80 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @stub_device_unusable, align 4
  %84 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %85 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %89 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %88, i32 0, i32 1
  %90 = call i32 @usbip_start_eh(%struct.TYPE_6__* %89)
  %91 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 1
  %93 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  store %struct.stub_device* %94, %struct.stub_device** %2, align 8
  br label %95

95:                                               ; preds = %23, %22
  %96 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  ret %struct.stub_device* %96
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.stub_device* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usbip_start_eh(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
