; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.max3421_hcd = type { i32, i32 }

@MAX3421_MODE_LOWSPEED_BIT = common dso_local global i32 0, align 4
@MAX3421_MODE_HUBPRE_BIT = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@MAX3421_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_device*)* @max3421_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_set_speed(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %9)
  store %struct.max3421_hcd* %10, %struct.max3421_hcd** %5, align 8
  %11 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @MAX3421_MODE_LOWSPEED_BIT, align 4
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MAX3421_MODE_HUBPRE_BIT, align 4
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_SPEED_LOW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %44, %38
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %55 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %61 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %63 = load i32, i32* @MAX3421_REG_MODE, align 4
  %64 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %65 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spi_wr8(%struct.usb_hcd* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %58, %52
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
