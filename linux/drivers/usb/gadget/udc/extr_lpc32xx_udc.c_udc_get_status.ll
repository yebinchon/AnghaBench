; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.lpc32xx_ep*, %struct.TYPE_2__ }
%struct.lpc32xx_ep = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EP_SEL_ST = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@EP_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_udc*, i32, i32)* @udc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_get_status(%struct.lpc32xx_udc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpc32xx_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpc32xx_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_RECIP_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %97 [
    i32 128, label %14
    i32 130, label %15
    i32 129, label %33
  ]

14:                                               ; preds = %3
  br label %98

15:                                               ; preds = %3
  %16 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %15
  br label %98

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %37, i32 0, i32 1
  %39 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %39, i64 %41
  store %struct.lpc32xx_ep* %42, %struct.lpc32xx_ep** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NUM_ENDPOINTS, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %33
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %102

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @USB_DIR_IN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %8, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %102

65:                                               ; preds = %57
  br label %75

66:                                               ; preds = %52
  %67 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %8, align 8
  %68 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %102

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %65
  %76 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %77 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %8, align 8
  %78 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CMD_SEL_EP(i32 %79)
  %81 = call i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc* %76, i32 %80)
  %82 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %83 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %8, align 8
  %84 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DAT_SEL_EP(i32 %85)
  %87 = call i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc* %82, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @EP_SEL_ST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %94 = shl i32 1, %93
  store i32 %94, i32* %9, align 4
  br label %96

95:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %92
  br label %98

97:                                               ; preds = %3
  br label %98

98:                                               ; preds = %97, %96, %32, %14
  %99 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %5, align 8
  %100 = load i32, i32* @EP_IN, align 4
  %101 = call i32 @udc_write_hwep(%struct.lpc32xx_udc* %99, i32 %100, i32* %9, i32 2)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %71, %62, %49
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @udc_protocol_cmd_w(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @CMD_SEL_EP(i32) #1

declare dso_local i32 @udc_protocol_cmd_r(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @DAT_SEL_EP(i32) #1

declare dso_local i32 @udc_write_hwep(%struct.lpc32xx_udc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
