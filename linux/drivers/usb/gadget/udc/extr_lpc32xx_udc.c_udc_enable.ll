; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i64, i32, %struct.lpc32xx_ep* }
%struct.lpc32xx_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CMD_SET_DEV_STAT = common dso_local global i32 0, align 4
@DEV_CON = common dso_local global i32 0, align 4
@USBD_EP_FAST = common dso_local global i32 0, align 4
@USBD_ERR_INT = common dso_local global i32 0, align 4
@USBD_DEV_STAT = common dso_local global i32 0, align 4
@USBD_EP_SLOW = common dso_local global i32 0, align 4
@USBD_SYS_ERR_INT = common dso_local global i32 0, align 4
@USBD_EOT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_enable(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpc32xx_ep*, align 8
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %5 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %6 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %5, i32 0, i32 3
  %7 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %6, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %7, i64 0
  store %struct.lpc32xx_ep* %8, %struct.lpc32xx_ep** %4, align 8
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %10 = call i32 @udc_disable(%struct.lpc32xx_udc* %9)
  %11 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %12 = load i32, i32* @CMD_SET_DEV_STAT, align 4
  %13 = load i32, i32* @DEV_CON, align 4
  %14 = call i32 @DAT_WR_BYTE(i32 %13)
  %15 = call i32 @udc_protocol_cmd_data_w(%struct.lpc32xx_udc* %11, i32 %12, i32 %14)
  %16 = load i32, i32* @USBD_EP_FAST, align 4
  %17 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @USBD_DEVINTPRI(i32 %19)
  %21 = call i32 @writel(i32 %16, i32 %20)
  %22 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @USBD_EPINTPRI(i32 %24)
  %26 = call i32 @writel(i32 65535, i32 %25)
  %27 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @USBD_DEVINTCLR(i32 %29)
  %31 = call i32 @writel(i32 1023, i32 %30)
  %32 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @USBD_UDCAH(i32 %37)
  %39 = call i32 @writel(i32 %34, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %63, %1
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 %41, 1
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @udc_realize_hwep(%struct.lpc32xx_udc* %44, i32 %45, i32 %49)
  %51 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @uda_enable_hwepint(%struct.lpc32xx_udc* %51, i32 %52)
  %54 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @udc_select_hwep(%struct.lpc32xx_udc* %54, i32 %55)
  %57 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @udc_clrstall_hwep(%struct.lpc32xx_udc* %57, i32 %58)
  %60 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @udc_clr_buffer_hwep(%struct.lpc32xx_udc* %60, i32 %61)
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %40

66:                                               ; preds = %40
  %67 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %68 = load i32, i32* @USBD_ERR_INT, align 4
  %69 = load i32, i32* @USBD_DEV_STAT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @USBD_EP_SLOW, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @USBD_EP_FAST, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @uda_clear_devint(%struct.lpc32xx_udc* %67, i32 %74)
  %76 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %77 = load i32, i32* @USBD_ERR_INT, align 4
  %78 = load i32, i32* @USBD_DEV_STAT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @USBD_EP_SLOW, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @USBD_EP_FAST, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @uda_enable_devint(%struct.lpc32xx_udc* %76, i32 %83)
  %85 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %86 = call i32 @udc_set_address(%struct.lpc32xx_udc* %85, i32 0)
  %87 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %88 = call i32 @udc_set_address(%struct.lpc32xx_udc* %87, i32 0)
  %89 = load i32, i32* @USBD_SYS_ERR_INT, align 4
  %90 = load i32, i32* @USBD_EOT_INT, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %93 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @USBD_DMAINTEN(i32 %94)
  %96 = call i32 @writel(i32 %91, i32 %95)
  %97 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %98 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  ret void
}

declare dso_local i32 @udc_disable(%struct.lpc32xx_udc*) #1

declare dso_local i32 @udc_protocol_cmd_data_w(%struct.lpc32xx_udc*, i32, i32) #1

declare dso_local i32 @DAT_WR_BYTE(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_DEVINTPRI(i32) #1

declare dso_local i32 @USBD_EPINTPRI(i32) #1

declare dso_local i32 @USBD_DEVINTCLR(i32) #1

declare dso_local i32 @USBD_UDCAH(i32) #1

declare dso_local i32 @udc_realize_hwep(%struct.lpc32xx_udc*, i32, i32) #1

declare dso_local i32 @uda_enable_hwepint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_select_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_clrstall_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_clr_buffer_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @uda_clear_devint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @uda_enable_devint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_set_address(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @USBD_DMAINTEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
