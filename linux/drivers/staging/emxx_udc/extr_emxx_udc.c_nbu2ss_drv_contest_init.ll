; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_contest_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_contest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nbu2ss_udc = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.platform_device*, i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__, i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }

@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@nbu2ss_gadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.nbu2ss_udc*)* @nbu2ss_drv_contest_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbu2ss_drv_contest_init(%struct.platform_device* %0, %struct.nbu2ss_udc* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.nbu2ss_udc* %1, %struct.nbu2ss_udc** %4, align 8
  %5 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %6 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %5, i32 0, i32 6
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %11 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %10, i32 0, i32 5
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %11, align 8
  %12 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %16 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %20 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %19, i32 0, i32 2
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = call i32 @DMA_BIT_MASK(i32 32)
  %24 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %25 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %24, i32 0, i32 2
  %26 = load %struct.platform_device*, %struct.platform_device** %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %30 = call i32 @nbu2ss_drv_ep_init(%struct.nbu2ss_udc* %29)
  %31 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %32 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  store i32* @nbu2ss_gadget_ops, i32** %33, align 8
  %34 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %35 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %40 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %43 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %44 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @driver_name, align 4
  %47 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %48 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %51 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = call i32 @device_initialize(%struct.TYPE_9__* %52)
  %54 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %55 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = call i32 @dev_set_name(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %61 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %69 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @nbu2ss_drv_ep_init(%struct.nbu2ss_udc*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
