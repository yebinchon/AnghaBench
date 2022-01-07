; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@USBCMD_RUN_STOP = common dso_local global i32 0, align 4
@USBCMD_CTRL_RESET = common dso_local global i32 0, align 4
@RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@LOOPS_USEC = common dso_local global i32 0, align 4
@USBMODE_CTRL_MODE_DEVICE = common dso_local global i32 0, align 4
@USBMODE_SETUP_LOCK_OFF = common dso_local global i32 0, align 4
@USB_EP_LIST_ADDRESS_MASK = common dso_local global i32 0, align 4
@HCSPARAMS_PPC = common dso_local global i32 0, align 4
@PORTSCX_W1C_BITS = common dso_local global i32 0, align 4
@PORTSCX_PORT_POWER = common dso_local global i32 0, align 4
@PORTSCX_FORCE_FULL_SPEED_CONNECT = common dso_local global i32 0, align 4
@EPCTRL_TX_EP_STALL = common dso_local global i32 0, align 4
@EPCTRL_RX_EP_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_udc*)* @udc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_reset(%struct.mv_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %3, align 8
  %7 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %8 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = call i32 @readl(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @USBCMD_RUN_STOP, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %18 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = call i32 @writel(i32 %16, i32* %20)
  %22 = load i32, i32* @USBCMD_CTRL_RESET, align 4
  %23 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %24 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = call i32 @writel(i32 %22, i32* %26)
  %28 = load i32, i32* @RESET_TIMEOUT, align 4
  %29 = call i32 @LOOPS(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %50, %1
  %31 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %32 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = call i32 @readl(i32* %34)
  %36 = load i32, i32* @USBCMD_CTRL_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %44 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %155

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @LOOPS_USEC, align 4
  %54 = call i32 @udelay(i32 %53)
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %57 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = call i32 @readl(i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @USBMODE_CTRL_MODE_DEVICE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @USBMODE_SETUP_LOCK_OFF, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %69 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = call i32 @writel(i32 %67, i32* %71)
  %73 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %74 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = call i32 @writel(i32 0, i32* %76)
  %78 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %79 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @USB_EP_LIST_ADDRESS_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %84 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = call i32 @writel(i32 %82, i32* %86)
  %88 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %89 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i32 @readl(i32* %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %96 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @readl(i32* %98)
  %100 = load i32, i32* @HCSPARAMS_PPC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %55
  %104 = load i32, i32* @PORTSCX_W1C_BITS, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* @PORTSCX_PORT_POWER, align 4
  %107 = xor i32 %106, -1
  %108 = or i32 %105, %107
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %103, %55
  %112 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %113 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @PORTSCX_FORCE_FULL_SPEED_CONNECT, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %125

120:                                              ; preds = %111
  %121 = load i32, i32* @PORTSCX_FORCE_FULL_SPEED_CONNECT, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %128 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = call i32 @writel(i32 %126, i32* %132)
  %134 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %135 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32 @readl(i32* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @EPCTRL_TX_EP_STALL, align 4
  %142 = load i32, i32* @EPCTRL_RX_EP_STALL, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %149 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = call i32 @writel(i32 %147, i32* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %125, %42
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @LOOPS(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
