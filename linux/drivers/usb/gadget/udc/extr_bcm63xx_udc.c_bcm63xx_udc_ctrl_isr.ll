; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_ctrl_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_ctrl_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i64 }

@USBD_EVENT_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_MASK_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_USB_LINK = common dso_local global i32 0, align 4
@USBD_EVENTS_REG = common dso_local global i32 0, align 4
@USBD_EVENTS_USB_LINK_MASK = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@USBD_EVENT_IRQ_USB_RESET = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETUP = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETCFG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETINTF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm63xx_udc_ctrl_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_ctrl_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm63xx_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bcm63xx_udc*
  store %struct.bcm63xx_udc* %10, %struct.bcm63xx_udc** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %12 = load i32, i32* @USBD_EVENT_IRQ_STATUS_REG, align 4
  %13 = call i32 @usbd_readl(%struct.bcm63xx_udc* %11, i32 %12)
  %14 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %15 = load i32, i32* @USBD_EVENT_IRQ_MASK_REG, align 4
  %16 = call i32 @usbd_readl(%struct.bcm63xx_udc* %14, i32 %15)
  %17 = and i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @USBD_EVENT_IRQ_STATUS_REG, align 4
  %21 = call i32 @usbd_writel(%struct.bcm63xx_udc* %18, i32 %19, i32 %20)
  %22 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %23 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %22, i32 0, i32 5
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @USBD_EVENT_IRQ_USB_LINK, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %2
  %31 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %32 = load i32, i32* @USBD_EVENTS_REG, align 4
  %33 = call i32 @usbd_readl(%struct.bcm63xx_udc* %31, i32 %32)
  %34 = load i32, i32* @USBD_EVENTS_USB_LINK_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %30
  %38 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %39 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %46 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %37, %30
  %50 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %51 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %52 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %2
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @USBD_EVENT_IRQ_USB_RESET, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %62 = call i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc* %61)
  %63 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %64 = call i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc* %63)
  %65 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %66 = call i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc* %65)
  %67 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %68 = call i32 @bcm63xx_update_wedge(%struct.bcm63xx_udc* %67, i32 0)
  %69 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %70 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %72 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %71, i32 0, i32 6
  %73 = call i32 @schedule_work(i32* %72)
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %60, %54
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @USBD_EVENT_IRQ_SETUP, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %82 = call i64 @bcm63xx_update_link_speed(%struct.bcm63xx_udc* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %86 = call i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc* %85)
  %87 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %88 = call i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc* %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %91 = call i32 @bcm63xx_update_wedge(%struct.bcm63xx_udc* %90, i32 1)
  br label %92

92:                                               ; preds = %89, %74
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @USBD_EVENT_IRQ_SETCFG, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %100 = call i32 @bcm63xx_update_cfg_iface(%struct.bcm63xx_udc* %99)
  %101 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %102 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %104 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %103, i32 0, i32 6
  %105 = call i32 @schedule_work(i32* %104)
  br label %106

106:                                              ; preds = %98, %92
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @USBD_EVENT_IRQ_SETINTF, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %114 = call i32 @bcm63xx_update_cfg_iface(%struct.bcm63xx_udc* %113)
  %115 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %116 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  %117 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %118 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %117, i32 0, i32 6
  %119 = call i32 @schedule_work(i32* %118)
  br label %120

120:                                              ; preds = %112, %106
  %121 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %122 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %121, i32 0, i32 5
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %128 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = icmp ne %struct.TYPE_5__* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %133 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %132, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %135, align 8
  %137 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %138 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %137, i32 0, i32 4
  %139 = call i32 %136(%struct.TYPE_4__* %138)
  br label %156

140:                                              ; preds = %126, %120
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %145 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = icmp ne %struct.TYPE_5__* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %150 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %149, i32 0, i32 4
  %151 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %5, align 8
  %152 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %151, i32 0, i32 3
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = call i32 @usb_gadget_udc_reset(%struct.TYPE_4__* %150, %struct.TYPE_5__* %153)
  br label %155

155:                                              ; preds = %148, %143, %140
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %157
}

declare dso_local i32 @usbd_readl(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @bcm63xx_fifo_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_fifo_reset(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_ep_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_update_wedge(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @bcm63xx_update_link_speed(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_update_cfg_iface(%struct.bcm63xx_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
