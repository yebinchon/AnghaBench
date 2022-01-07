; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm63xx_usbd_platform_data = type { i32 }
%struct.bcm63xx_udc = type { %struct.TYPE_2__, %struct.bcm63xx_udc*, i32, i32, i8*, i8*, %struct.bcm63xx_usbd_platform_data*, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@bcm63xx_ep0_process = common dso_local global i32 0, align 4
@bcm63xx_udc_ops = common dso_local global i32 0, align 4
@use_fullspeed = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bcm63xx_udc_ctrl_isr = common dso_local global i32 0, align 4
@BCM63XX_NUM_IUDMA = common dso_local global i32 0, align 4
@bcm63xx_udc_data_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error requesting IRQ #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm63xx_udc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm63xx_usbd_platform_data*, align 8
  %6 = alloca %struct.bcm63xx_udc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.bcm63xx_usbd_platform_data* @dev_get_platdata(%struct.device* %13)
  store %struct.bcm63xx_usbd_platform_data* %14, %struct.bcm63xx_usbd_platform_data** %5, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bcm63xx_udc* @devm_kzalloc(%struct.device* %17, i32 64, i32 %18)
  store %struct.bcm63xx_udc* %19, %struct.bcm63xx_udc** %6, align 8
  %20 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %21 = icmp ne %struct.bcm63xx_udc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %189

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.bcm63xx_udc* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %31 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %30, i32 0, i32 7
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.bcm63xx_usbd_platform_data*, %struct.bcm63xx_usbd_platform_data** %5, align 8
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %34 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %33, i32 0, i32 6
  store %struct.bcm63xx_usbd_platform_data* %32, %struct.bcm63xx_usbd_platform_data** %34, align 8
  %35 = load %struct.bcm63xx_usbd_platform_data*, %struct.bcm63xx_usbd_platform_data** %5, align 8
  %36 = icmp ne %struct.bcm63xx_usbd_platform_data* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %189

42:                                               ; preds = %25
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = call i8* @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %52 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %58 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %189

61:                                               ; preds = %42
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 1)
  store %struct.resource* %64, %struct.resource** %7, align 8
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.resource*, %struct.resource** %7, align 8
  %67 = call i8* @devm_ioremap_resource(%struct.device* %65, %struct.resource* %66)
  %68 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %69 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %71 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %77 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %189

80:                                               ; preds = %61
  %81 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %82 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %81, i32 0, i32 3
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %85 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %84, i32 0, i32 2
  %86 = load i32, i32* @bcm63xx_ep0_process, align 4
  %87 = call i32 @INIT_WORK(i32* %85, i32 %86)
  %88 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %89 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32* @bcm63xx_udc_ops, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @dev_name(%struct.device* %91)
  %93 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %94 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.bcm63xx_usbd_platform_data*, %struct.bcm63xx_usbd_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.bcm63xx_usbd_platform_data, %struct.bcm63xx_usbd_platform_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %80
  %101 = load i32, i32* @use_fullspeed, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @USB_SPEED_HIGH, align 4
  %105 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %106 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %113

108:                                              ; preds = %100, %80
  %109 = load i32, i32* @USB_SPEED_FULL, align 4
  %110 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %111 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %115 = call i32 @bcm63xx_init_udc_hw(%struct.bcm63xx_udc* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %189

120:                                              ; preds = %113
  %121 = load i32, i32* @ENXIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i32 @platform_get_irq(%struct.platform_device* %123, i32 0)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %181

128:                                              ; preds = %120
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @dev_name(%struct.device* %131)
  %133 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %134 = call i64 @devm_request_irq(%struct.device* %129, i32 %130, i32* @bcm63xx_udc_ctrl_isr, i32 0, i32 %132, %struct.bcm63xx_udc* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %185

137:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %165, %137
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @BCM63XX_NUM_IUDMA, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i32 @platform_get_irq(%struct.platform_device* %143, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %181

150:                                              ; preds = %142
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = call i32 @dev_name(%struct.device* %153)
  %155 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %156 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %155, i32 0, i32 1
  %157 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %157, i64 %159
  %161 = call i64 @devm_request_irq(%struct.device* %151, i32 %152, i32* @bcm63xx_udc_data_isr, i32 0, i32 %154, %struct.bcm63xx_udc* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %185

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %138

168:                                              ; preds = %138
  %169 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %170 = call i32 @bcm63xx_udc_init_debugfs(%struct.bcm63xx_udc* %169)
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %173 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %172, i32 0, i32 0
  %174 = call i32 @usb_add_gadget_udc(%struct.device* %171, %struct.TYPE_2__* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %189

178:                                              ; preds = %168
  %179 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %180 = call i32 @bcm63xx_udc_cleanup_debugfs(%struct.bcm63xx_udc* %179)
  br label %181

181:                                              ; preds = %185, %178, %149, %127
  %182 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %6, align 8
  %183 = call i32 @bcm63xx_uninit_udc_hw(%struct.bcm63xx_udc* %182)
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %189

185:                                              ; preds = %163, %136
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %181

189:                                              ; preds = %181, %177, %118, %75, %56, %37, %22
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.bcm63xx_usbd_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.bcm63xx_udc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm63xx_udc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @bcm63xx_init_udc_hw(%struct.bcm63xx_udc*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32*, i32, i32, %struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_udc_init_debugfs(%struct.bcm63xx_udc*) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @bcm63xx_udc_cleanup_debugfs(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_uninit_udc_hw(%struct.bcm63xx_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
