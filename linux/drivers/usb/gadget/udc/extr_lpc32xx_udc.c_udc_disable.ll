; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i64* }

@CMD_CFG_DEV = common dso_local global i32 0, align 4
@CMD_SET_DEV_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_disable(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %4 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %5 = load i32, i32* @CMD_CFG_DEV, align 4
  %6 = call i32 @DAT_WR_BYTE(i32 0)
  %7 = call i32 @udc_protocol_cmd_data_w(%struct.lpc32xx_udc* %4, i32 %5, i32 %6)
  %8 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %9 = load i32, i32* @CMD_SET_DEV_STAT, align 4
  %10 = call i32 @DAT_WR_BYTE(i32 0)
  %11 = call i32 @udc_protocol_cmd_data_w(%struct.lpc32xx_udc* %8, i32 %9, i32 %10)
  %12 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %13 = call i32 @uda_disable_devint(%struct.lpc32xx_udc* %12, i32 1023)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @uda_disable_hwepint(%struct.lpc32xx_udc* %18, i32 %19)
  %21 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @uda_clear_hwepint(%struct.lpc32xx_udc* %21, i32 %22)
  %24 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @udc_disable_hwep(%struct.lpc32xx_udc* %24, i32 %25)
  %27 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @udc_unrealize_hwep(%struct.lpc32xx_udc* %27, i32 %28)
  %30 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @udc_ep_dma_disable(%struct.lpc32xx_udc* %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @USBD_EOTINTCLR(i32 %43)
  %45 = call i32 @writel(i32 %40, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %49 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @USBD_NDDRTINTCLR(i32 %50)
  %52 = call i32 @writel(i32 %47, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @USBD_SYSERRTINTCLR(i32 %57)
  %59 = call i32 @writel(i32 %54, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @USBD_DMARCLR(i32 %64)
  %66 = call i32 @writel(i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %17
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %14

70:                                               ; preds = %14
  %71 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %72 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @USBD_DMAINTEN(i32 %73)
  %75 = call i32 @writel(i32 0, i32 %74)
  %76 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %77 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @USBD_UDCAH(i32 %78)
  %80 = call i32 @writel(i32 0, i32 %79)
  ret void
}

declare dso_local i32 @udc_protocol_cmd_data_w(%struct.lpc32xx_udc*, i32, i32) #1

declare dso_local i32 @DAT_WR_BYTE(i32) #1

declare dso_local i32 @uda_disable_devint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @uda_disable_hwepint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @uda_clear_hwepint(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_disable_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_unrealize_hwep(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @udc_ep_dma_disable(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_EOTINTCLR(i32) #1

declare dso_local i32 @USBD_NDDRTINTCLR(i32) #1

declare dso_local i32 @USBD_SYSERRTINTCLR(i32) #1

declare dso_local i32 @USBD_DMARCLR(i32) #1

declare dso_local i32 @USBD_DMAINTEN(i32) #1

declare dso_local i32 @USBD_UDCAH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
