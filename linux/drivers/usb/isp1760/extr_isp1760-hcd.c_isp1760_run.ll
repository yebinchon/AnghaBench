; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@HC_ATL_IRQ_MASK_AND_REG = common dso_local global i32 0, align 4
@HC_ATL_IRQ_MASK_OR_REG = common dso_local global i32 0, align 4
@HC_INT_IRQ_MASK_AND_REG = common dso_local global i32 0, align 4
@HC_INT_IRQ_MASK_OR_REG = common dso_local global i32 0, align 4
@HC_ISO_IRQ_MASK_AND_REG = common dso_local global i32 0, align 4
@HC_ISO_IRQ_MASK_OR_REG = common dso_local global i32 0, align 4
@HC_HW_MODE_CTRL = common dso_local global i32 0, align 4
@HW_GLOBAL_INTR_EN = common dso_local global i32 0, align 4
@HC_USBCMD = common dso_local global i32 0, align 4
@CMD_LRESET = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@HC_CONFIGFLAG = common dso_local global i32 0, align 4
@FLAG_CF = common dso_local global i32 0, align 4
@errata2_timer_hcd = common dso_local global %struct.usb_hcd* null, align 8
@errata2_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@errata2_function = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SLOT_CHECK_PERIOD = common dso_local global i32 0, align 4
@HC_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"USB ISP %04x HW rev. %d started\0A\00", align 1
@HC_ATL_PTD_LASTPTD_REG = common dso_local global i32 0, align 4
@HC_INT_PTD_LASTPTD_REG = common dso_local global i32 0, align 4
@HC_ISO_PTD_LASTPTD_REG = common dso_local global i32 0, align 4
@HC_ATL_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_INT_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_ISO_PTD_SKIPMAP_REG = common dso_local global i32 0, align 4
@HC_BUFFER_STATUS_REG = common dso_local global i32 0, align 4
@ATL_BUF_FILL = common dso_local global i32 0, align 4
@INT_BUF_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @isp1760_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @HC_STATE_RUNNING, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HC_ATL_IRQ_MASK_AND_REG, align 4
  %17 = call i32 @reg_write32(i32 %15, i32 %16, i32 0)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HC_ATL_IRQ_MASK_OR_REG, align 4
  %22 = call i32 @reg_write32(i32 %20, i32 %21, i32 -1)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HC_INT_IRQ_MASK_AND_REG, align 4
  %27 = call i32 @reg_write32(i32 %25, i32 %26, i32 0)
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HC_INT_IRQ_MASK_OR_REG, align 4
  %32 = call i32 @reg_write32(i32 %30, i32 %31, i32 -1)
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HC_ISO_IRQ_MASK_AND_REG, align 4
  %37 = call i32 @reg_write32(i32 %35, i32 %36, i32 0)
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HC_ISO_IRQ_MASK_OR_REG, align 4
  %42 = call i32 @reg_write32(i32 %40, i32 %41, i32 -1)
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %47 = call i32 @reg_read32(i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @HW_GLOBAL_INTR_EN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @reg_write32(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HC_USBCMD, align 4
  %60 = call i32 @reg_read32(i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @CMD_LRESET, align 4
  %62 = load i32, i32* @CMD_RESET, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @CMD_RUN, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HC_USBCMD, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @reg_write32(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %77 = load i32, i32* @HC_USBCMD, align 4
  %78 = load i32, i32* @CMD_RUN, align 4
  %79 = load i32, i32* @CMD_RUN, align 4
  %80 = call i32 @handshake(%struct.usb_hcd* %76, i32 %77, i32 %78, i32 %79, i32 250000)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %1
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %164

85:                                               ; preds = %1
  %86 = call i32 @down_write(i32* @ehci_cf_port_reset_rwsem)
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @HC_CONFIGFLAG, align 4
  %91 = load i32, i32* @FLAG_CF, align 4
  %92 = call i32 @reg_write32(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %94 = load i32, i32* @HC_CONFIGFLAG, align 4
  %95 = load i32, i32* @FLAG_CF, align 4
  %96 = load i32, i32* @FLAG_CF, align 4
  %97 = call i32 @handshake(%struct.usb_hcd* %93, i32 %94, i32 %95, i32 %96, i32 250000)
  store i32 %97, i32* %4, align 4
  %98 = call i32 @up_write(i32* @ehci_cf_port_reset_rwsem)
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %164

103:                                              ; preds = %85
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  store %struct.usb_hcd* %104, %struct.usb_hcd** @errata2_timer_hcd, align 8
  %105 = load i32, i32* @errata2_function, align 4
  %106 = call i32 @timer_setup(%struct.TYPE_6__* @errata2_timer, i32 %105, i32 0)
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i32, i32* @SLOT_CHECK_PERIOD, align 4
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  %110 = add nsw i64 %107, %109
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @errata2_timer, i32 0, i32 0), align 8
  %111 = call i32 @add_timer(%struct.TYPE_6__* @errata2_timer)
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %113 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HC_CHIP_ID_REG, align 4
  %116 = call i32 @reg_read32(i32 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %118 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 65535
  %123 = load i32, i32* %7, align 4
  %124 = ashr i32 %123, 16
  %125 = call i32 @dev_info(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %124)
  %126 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %127 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HC_ATL_PTD_LASTPTD_REG, align 4
  %130 = call i32 @reg_write32(i32 %128, i32 %129, i32 -2147483648)
  %131 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %132 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @HC_INT_PTD_LASTPTD_REG, align 4
  %135 = call i32 @reg_write32(i32 %133, i32 %134, i32 -2147483648)
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @HC_ISO_PTD_LASTPTD_REG, align 4
  %140 = call i32 @reg_write32(i32 %138, i32 %139, i32 1)
  %141 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %142 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HC_ATL_PTD_SKIPMAP_REG, align 4
  %145 = call i32 @reg_write32(i32 %143, i32 %144, i32 -1)
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %147 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HC_INT_PTD_SKIPMAP_REG, align 4
  %150 = call i32 @reg_write32(i32 %148, i32 %149, i32 -1)
  %151 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %152 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @HC_ISO_PTD_SKIPMAP_REG, align 4
  %155 = call i32 @reg_write32(i32 %153, i32 %154, i32 -1)
  %156 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %157 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HC_BUFFER_STATUS_REG, align 4
  %160 = load i32, i32* @ATL_BUF_FILL, align 4
  %161 = load i32, i32* @INT_BUF_FILL, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @reg_write32(i32 %158, i32 %159, i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %103, %101, %83
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @reg_write32(i32, i32, i32) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @handshake(%struct.usb_hcd*, i32, i32, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
