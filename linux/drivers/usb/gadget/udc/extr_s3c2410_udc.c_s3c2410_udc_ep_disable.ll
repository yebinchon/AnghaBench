; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32* }
%struct.s3c2410_ep = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s not enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ep_disable: %s\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_EN_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @s3c2410_udc_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.s3c2410_ep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep* %7)
  store %struct.s3c2410_ep* %8, %struct.s3c2410_ep** %4, align 8
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = icmp ne %struct.usb_ep* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %13 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @DEBUG_NORMAL, align 4
  %19 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %20 = icmp ne %struct.usb_ep* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %23 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32* [ %25, %21 ], [ null, %26 ]
  %29 = call i32 @dprintk(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %11
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @local_irq_save(i64 %33)
  %35 = load i32, i32* @DEBUG_NORMAL, align 4
  %36 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %37 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dprintk(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %41 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %44 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %49 = load i32, i32* @ESHUTDOWN, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @s3c2410_udc_nuke(i32 %47, %struct.s3c2410_ep* %48, i32 %50)
  %52 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %53 = call i32 @udc_read(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %56 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %54, %59
  %61 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %62 = call i32 @udc_write(i32 %60, i32 %61)
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @local_irq_restore(i64 %63)
  %65 = load i32, i32* @DEBUG_NORMAL, align 4
  %66 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %67 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dprintk(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %32, %27
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep*) #1

declare dso_local i32 @dprintk(i32, i8*, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @s3c2410_udc_nuke(i32, %struct.s3c2410_ep*, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
