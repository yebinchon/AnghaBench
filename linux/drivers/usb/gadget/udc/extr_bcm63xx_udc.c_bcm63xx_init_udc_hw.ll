; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_init_udc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_init_udc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.bcm63xx_udc = type { %struct.TYPE_4__, i8*, i8*, i32, i32, %struct.bcm63xx_ep*, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32 }
%struct.bcm63xx_ep = type { i32, %struct.TYPE_5__, i32, %struct.bcm63xx_udc*, i64 }

@BCM63XX_MAX_CTRL_PKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM63XX_NUM_EP = common dso_local global i32 0, align 4
@bcm63xx_ep_info = common dso_local global %struct.TYPE_6__* null, align 8
@bcm63xx_udc_ep_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@EP0_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"usbh\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"usbd\00", align 1
@USBD_CONTROL_AUTO_CSRS_MASK = common dso_local global i32 0, align 4
@USBD_CONTROL_DONE_CSRS_MASK = common dso_local global i32 0, align 4
@irq_coalesce = common dso_local global i64 0, align 8
@USBD_CONTROL_RXZSCFG_MASK = common dso_local global i32 0, align 4
@USBD_CONTROL_REG = common dso_local global i32 0, align 4
@USBD_STRAPS_APP_SELF_PWR_MASK = common dso_local global i32 0, align 4
@USBD_STRAPS_APP_RAM_IF_MASK = common dso_local global i32 0, align 4
@USBD_STRAPS_APP_CSRPRGSUP_MASK = common dso_local global i32 0, align 4
@USBD_STRAPS_APP_8BITPHY_MASK = common dso_local global i32 0, align 4
@USBD_STRAPS_APP_RMTWKUP_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@BCM63XX_SPD_HIGH = common dso_local global i32 0, align 4
@USBD_STRAPS_SPEED_SHIFT = common dso_local global i32 0, align 4
@BCM63XX_SPD_FULL = common dso_local global i32 0, align 4
@USBD_STRAPS_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_CFG_LO_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_ENUM_ON = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SET_CSRS = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_CFG_HI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_init_udc_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_init_udc_hw(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm63xx_ep*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %9 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BCM63XX_MAX_CTRL_PKT, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @devm_kzalloc(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %15 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %17 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %218

23:                                               ; preds = %1
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %25 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %85, %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BCM63XX_NUM_EP, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %34 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %33, i32 0, i32 5
  %35 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %35, i64 %37
  store %struct.bcm63xx_ep* %38, %struct.bcm63xx_ep** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcm63xx_ep_info, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %46 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcm63xx_ep_info, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %59 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %61 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32* @bcm63xx_udc_ep_ops, i32** %62, align 8
  %63 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %64 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %67 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = call i32 @list_add_tail(i32* %65, i32* %68)
  %70 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %71 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %73 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %72, i32 0, i32 1
  %74 = load i32, i32* @BCM63XX_MAX_CTRL_PKT, align 4
  %75 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_5__* %73, i32 %74)
  %76 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %77 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %78 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %77, i32 0, i32 3
  store %struct.bcm63xx_udc* %76, %struct.bcm63xx_udc** %78, align 8
  %79 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %80 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %7, align 8
  %83 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %82, i32 0, i32 2
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  br label %85

85:                                               ; preds = %32
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %28

88:                                               ; preds = %28
  %89 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %90 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %89, i32 0, i32 5
  %91 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %90, align 8
  %92 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %91, i64 0
  %93 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %92, i32 0, i32 1
  %94 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %95 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %96, align 8
  %97 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %98 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %97, i32 0, i32 5
  %99 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %98, align 8
  %100 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %99, i64 0
  %101 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @list_del(i32* %102)
  %104 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %105 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %106 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @EP0_SHUTDOWN, align 4
  %109 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %110 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %112 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @clk_get(i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %116 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %118 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @IS_ERR(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %88
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %218

125:                                              ; preds = %88
  %126 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %127 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @clk_get(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %131 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %133 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %125
  %138 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %139 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @clk_put(i8* %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %218

144:                                              ; preds = %125
  %145 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %146 = call i32 @set_clocks(%struct.bcm63xx_udc* %145, i32 1)
  %147 = load i32, i32* @USBD_CONTROL_AUTO_CSRS_MASK, align 4
  %148 = load i32, i32* @USBD_CONTROL_DONE_CSRS_MASK, align 4
  %149 = or i32 %147, %148
  %150 = load i64, i64* @irq_coalesce, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @USBD_CONTROL_RXZSCFG_MASK, align 4
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %149, %156
  store i32 %157, i32* %6, align 4
  %158 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @USBD_CONTROL_REG, align 4
  %161 = call i32 @usbd_writel(%struct.bcm63xx_udc* %158, i32 %159, i32 %160)
  %162 = load i32, i32* @USBD_STRAPS_APP_SELF_PWR_MASK, align 4
  %163 = load i32, i32* @USBD_STRAPS_APP_RAM_IF_MASK, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @USBD_STRAPS_APP_CSRPRGSUP_MASK, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @USBD_STRAPS_APP_8BITPHY_MASK, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @USBD_STRAPS_APP_RMTWKUP_MASK, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %6, align 4
  %171 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %172 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @USB_SPEED_HIGH, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %155
  %178 = load i32, i32* @BCM63XX_SPD_HIGH, align 4
  %179 = load i32, i32* @USBD_STRAPS_SPEED_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  br label %189

183:                                              ; preds = %155
  %184 = load i32, i32* @BCM63XX_SPD_FULL, align 4
  %185 = load i32, i32* @USBD_STRAPS_SPEED_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %6, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @USBD_STRAPS_REG, align 4
  %193 = call i32 @usbd_writel(%struct.bcm63xx_udc* %190, i32 %191, i32 %192)
  %194 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %195 = call i32 @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc* %194, i32 0)
  %196 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %197 = load i32, i32* @USBD_EVENT_IRQ_CFG_LO_REG, align 4
  %198 = call i32 @usbd_writel(%struct.bcm63xx_udc* %196, i32 0, i32 %197)
  %199 = load i32, i32* @USBD_EVENT_IRQ_ENUM_ON, align 4
  %200 = call i32 @USBD_EVENT_IRQ_CFG_FALLING(i32 %199)
  %201 = load i32, i32* @USBD_EVENT_IRQ_SET_CSRS, align 4
  %202 = call i32 @USBD_EVENT_IRQ_CFG_FALLING(i32 %201)
  %203 = or i32 %200, %202
  store i32 %203, i32* %6, align 4
  %204 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @USBD_EVENT_IRQ_CFG_HI_REG, align 4
  %207 = call i32 @usbd_writel(%struct.bcm63xx_udc* %204, i32 %205, i32 %206)
  %208 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %209 = call i32 @iudma_init(%struct.bcm63xx_udc* %208)
  store i32 %209, i32* %5, align 4
  %210 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %211 = call i32 @set_clocks(%struct.bcm63xx_udc* %210, i32 0)
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %189
  %215 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %216 = call i32 @bcm63xx_uninit_udc_hw(%struct.bcm63xx_udc* %215)
  br label %217

217:                                              ; preds = %214, %189
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %137, %122, %20
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i8* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @set_clocks(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @USBD_EVENT_IRQ_CFG_FALLING(i32) #1

declare dso_local i32 @iudma_init(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_uninit_udc_hw(%struct.bcm63xx_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
