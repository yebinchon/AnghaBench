; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_reset_hcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_reset_hcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.max3421_hcd = type { i32, i32, i32 }

@MAX3421_REG_USBCTL = common dso_local global i32 0, align 4
@MAX3421_USBCTL_CHIPRES_BIT = common dso_local global i32 0, align 4
@MAX3421_REG_USBIRQ = common dso_local global i32 0, align 4
@MAX3421_USBIRQ_OSCOKIRQ_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"timed out waiting for oscillator OK signal\00", align 1
@MAX3421_MODE_HOST_BIT = common dso_local global i32 0, align 4
@MAX3421_MODE_SOFKAENAB_BIT = common dso_local global i32 0, align 4
@MAX3421_MODE_DMPULLDN_BIT = common dso_local global i32 0, align 4
@MAX3421_MODE_DPPULLDN_BIT = common dso_local global i32 0, align 4
@MAX3421_REG_MODE = common dso_local global i32 0, align 4
@USB_MAX_FRAME_NUMBER = common dso_local global i32 0, align 4
@MAX3421_REG_HCTL = common dso_local global i32 0, align 4
@MAX3421_HCTL_FRMRST_BIT = common dso_local global i32 0, align 4
@MAX3421_HCTL_SAMPLEBUS_BIT = common dso_local global i32 0, align 4
@MAX3421_HI_FRAME_BIT = common dso_local global i32 0, align 4
@MAX3421_HI_CONDET_BIT = common dso_local global i32 0, align 4
@MAX3421_HI_BUSEVENT_BIT = common dso_local global i32 0, align 4
@MAX3421_REG_HIEN = common dso_local global i32 0, align 4
@MAX3421_REG_CPUCTL = common dso_local global i32 0, align 4
@MAX3421_CPUCTL_IE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @max3421_reset_hcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_reset_hcd(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.spi_device* @to_spi_device(i32 %10)
  store %struct.spi_device* %11, %struct.spi_device** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %12)
  store %struct.max3421_hcd* %13, %struct.max3421_hcd** %5, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = load i32, i32* @MAX3421_REG_USBCTL, align 4
  %16 = load i32, i32* @MAX3421_USBCTL_CHIPRES_BIT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @spi_wr8(%struct.usb_hcd* %14, i32 %15, i32 %17)
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = load i32, i32* @MAX3421_REG_USBCTL, align 4
  %21 = call i32 @spi_wr8(%struct.usb_hcd* %19, i32 %20, i32 0)
  store i32 1000, i32* %6, align 4
  br label %22

22:                                               ; preds = %1, %39
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = load i32, i32* @MAX3421_REG_USBIRQ, align 4
  %25 = call i32 @spi_rd8(%struct.usb_hcd* %23, i32 %24)
  %26 = load i32, i32* @MAX3421_USBIRQ_OSCOKIRQ_BIT, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %41

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %97

39:                                               ; preds = %31
  %40 = call i32 (...) @cond_resched()
  br label %22

41:                                               ; preds = %30
  %42 = load i32, i32* @MAX3421_MODE_HOST_BIT, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load i32, i32* @MAX3421_MODE_SOFKAENAB_BIT, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @MAX3421_MODE_DMPULLDN_BIT, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @MAX3421_MODE_DPPULLDN_BIT, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = or i32 %49, %51
  %53 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %54 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %56 = load i32, i32* @MAX3421_REG_MODE, align 4
  %57 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %58 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @spi_wr8(%struct.usb_hcd* %55, i32 %56, i32 %59)
  %61 = load i32, i32* @USB_MAX_FRAME_NUMBER, align 4
  %62 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %63 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %65 = load i32, i32* @MAX3421_REG_HCTL, align 4
  %66 = load i32, i32* @MAX3421_HCTL_FRMRST_BIT, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = call i32 @spi_wr8(%struct.usb_hcd* %64, i32 %65, i32 %67)
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %70 = load i32, i32* @MAX3421_REG_HCTL, align 4
  %71 = load i32, i32* @MAX3421_HCTL_SAMPLEBUS_BIT, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = call i32 @spi_wr8(%struct.usb_hcd* %69, i32 %70, i32 %72)
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %75 = call i32 @max3421_detect_conn(%struct.usb_hcd* %74)
  %76 = load i32, i32* @MAX3421_HI_FRAME_BIT, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = load i32, i32* @MAX3421_HI_CONDET_BIT, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* @MAX3421_HI_BUSEVENT_BIT, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = or i32 %80, %82
  %84 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %85 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %87 = load i32, i32* @MAX3421_REG_HIEN, align 4
  %88 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %89 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @spi_wr8(%struct.usb_hcd* %86, i32 %87, i32 %90)
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %93 = load i32, i32* @MAX3421_REG_CPUCTL, align 4
  %94 = load i32, i32* @MAX3421_CPUCTL_IE_BIT, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = call i32 @spi_wr8(%struct.usb_hcd* %92, i32 %93, i32 %95)
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %41, %35
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spi_rd8(%struct.usb_hcd*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @max3421_detect_conn(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
