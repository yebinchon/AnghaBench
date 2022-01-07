; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_update_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_update_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@USBD_STATUS_REG = common dso_local global i32 0, align 4
@USBD_STATUS_SPD_MASK = common dso_local global i32 0, align 4
@USBD_STATUS_SPD_SHIFT = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"received SETUP packet with invalid link speed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"link up, %s-speed mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_update_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_update_link_speed(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  %6 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %7 = load i32, i32* @USBD_STATUS_REG, align 4
  %8 = call i32 @usbd_readl(%struct.bcm63xx_udc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %10 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @USBD_STATUS_SPD_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @USBD_STATUS_SPD_SHIFT, align 4
  %17 = ashr i32 %15, %16
  switch i32 %17, label %29 [
    i32 128, label %18
    i32 129, label %24
  ]

18:                                               ; preds = %1
  %19 = load i64, i64* @USB_SPEED_HIGH, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %22 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* @USB_SPEED_FULL, align 4
  %26 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %27 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %31 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %32 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %35 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

38:                                               ; preds = %24, %18
  %39 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %40 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %47 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @USB_SPEED_HIGH, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %58 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store i32 1, i32* %2, align 4
  br label %60

59:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %45, %29
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @usbd_readl(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
