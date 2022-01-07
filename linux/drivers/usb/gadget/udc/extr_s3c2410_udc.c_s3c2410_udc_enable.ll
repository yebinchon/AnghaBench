; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"s3c2410_udc_enable called\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@S3C2410_ENDPOINTS = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_MAXP_REG = common dso_local global i32 0, align 4
@DEFAULT_POWER_STATE = common dso_local global i32 0, align 4
@S3C2410_UDC_PWR_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_USBINT_RESET = common dso_local global i32 0, align 4
@S3C2410_UDC_USBINT_SUSPEND = common dso_local global i32 0, align 4
@S3C2410_UDC_USB_INT_EN_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_INT_EP0 = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_EN_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_P_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_udc*)* @s3c2410_udc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_udc_enable(%struct.s3c2410_udc* %0) #0 {
  %2 = alloca %struct.s3c2410_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c2410_udc* %0, %struct.s3c2410_udc** %2, align 8
  %4 = load i32, i32* @DEBUG_NORMAL, align 4
  %5 = call i32 @dprintk(i32 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @USB_SPEED_FULL, align 4
  %7 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %8 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @S3C2410_ENDPOINTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %17 = call i32 @udc_write(i32 %15, i32 %16)
  %18 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %2, align 8
  %19 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 2047
  %28 = ashr i32 %27, 3
  %29 = load i32, i32* @S3C2410_UDC_MAXP_REG, align 4
  %30 = call i32 @udc_write(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* @DEFAULT_POWER_STATE, align 4
  %36 = load i32, i32* @S3C2410_UDC_PWR_REG, align 4
  %37 = call i32 @udc_write(i32 %35, i32 %36)
  %38 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %39 = load i32, i32* @S3C2410_UDC_USBINT_SUSPEND, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @S3C2410_UDC_USB_INT_EN_REG, align 4
  %42 = call i32 @udc_write(i32 %40, i32 %41)
  %43 = load i32, i32* @S3C2410_UDC_INT_EP0, align 4
  %44 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %45 = call i32 @udc_write(i32 %43, i32 %44)
  %46 = load i32, i32* @S3C2410_UDC_P_ENABLE, align 4
  %47 = call i32 @s3c2410_udc_command(i32 %46)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @s3c2410_udc_command(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
