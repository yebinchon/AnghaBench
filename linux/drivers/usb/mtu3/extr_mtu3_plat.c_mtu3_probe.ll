; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_mtu3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_plat.c_mtu3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ssusb_mtk = type { i32, i32, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No suitable DMA config available\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@CONFIG_USB_MTU3_HOST = common dso_local global i32 0, align 4
@CONFIG_USB_MTU3_GADGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialize gadget\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to initialize switch\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unsupported mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtu3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ssusb_mtk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ssusb_mtk* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.ssusb_mtk* %18, %struct.ssusb_mtk** %6, align 8
  %19 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %20 = icmp ne %struct.ssusb_mtk* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %163

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = call i32 @dma_set_mask_and_coherent(%struct.device* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %163

35:                                               ; preds = %24
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.ssusb_mtk* %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %41 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %40, i32 0, i32 2
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %44 = call i32 @get_ssusb_rscs(%struct.platform_device* %42, %struct.ssusb_mtk* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %163

49:                                               ; preds = %35
  %50 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %51 = call i32 @ssusb_debugfs_create_root(%struct.ssusb_mtk* %50)
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @pm_runtime_enable(%struct.device* %52)
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @pm_runtime_get_sync(%struct.device* %54)
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i32 @device_enable_async_suspend(%struct.device* %56)
  %58 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %59 = call i32 @ssusb_rscs_init(%struct.ssusb_mtk* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %155

63:                                               ; preds = %49
  %64 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %65 = call i32 @ssusb_ip_sw_reset(%struct.ssusb_mtk* %64)
  %66 = load i32, i32* @CONFIG_USB_MTU3_HOST, align 4
  %67 = call i64 @IS_ENABLED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %71 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %70, i32 0, i32 0
  store i32 130, i32* %71, align 8
  br label %80

72:                                               ; preds = %63
  %73 = load i32, i32* @CONFIG_USB_MTU3_GADGET, align 4
  %74 = call i64 @IS_ENABLED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %78 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %77, i32 0, i32 0
  store i32 128, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %82 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 128
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %88 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %90 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %137 [
    i32 128, label %92
    i32 130, label %101
    i32 129, label %111
  ]

92:                                               ; preds = %80
  %93 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %94 = call i32 @ssusb_gadget_init(%struct.ssusb_mtk* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %152

100:                                              ; preds = %92
  br label %145

101:                                              ; preds = %80
  %102 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call i32 @ssusb_host_init(%struct.ssusb_mtk* %102, %struct.device_node* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %152

110:                                              ; preds = %101
  br label %145

111:                                              ; preds = %80
  %112 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %113 = call i32 @ssusb_gadget_init(%struct.ssusb_mtk* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %152

119:                                              ; preds = %111
  %120 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %121 = load %struct.device_node*, %struct.device_node** %4, align 8
  %122 = call i32 @ssusb_host_init(%struct.ssusb_mtk* %120, %struct.device_node* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %149

128:                                              ; preds = %119
  %129 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %130 = call i32 @ssusb_otg_switch_init(%struct.ssusb_mtk* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %146

136:                                              ; preds = %128
  br label %145

137:                                              ; preds = %80
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %140 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %152

145:                                              ; preds = %136, %110, %100
  store i32 0, i32* %2, align 4
  br label %163

146:                                              ; preds = %133
  %147 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %148 = call i32 @ssusb_host_exit(%struct.ssusb_mtk* %147)
  br label %149

149:                                              ; preds = %146, %125
  %150 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %151 = call i32 @ssusb_gadget_exit(%struct.ssusb_mtk* %150)
  br label %152

152:                                              ; preds = %149, %137, %116, %107, %97
  %153 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %154 = call i32 @ssusb_rscs_exit(%struct.ssusb_mtk* %153)
  br label %155

155:                                              ; preds = %152, %62
  %156 = load %struct.device*, %struct.device** %5, align 8
  %157 = call i32 @pm_runtime_put_sync(%struct.device* %156)
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 @pm_runtime_disable(%struct.device* %158)
  %160 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %6, align 8
  %161 = call i32 @ssusb_debugfs_remove_root(%struct.ssusb_mtk* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %155, %145, %47, %30, %21
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.ssusb_mtk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ssusb_mtk*) #1

declare dso_local i32 @get_ssusb_rscs(%struct.platform_device*, %struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_debugfs_create_root(%struct.ssusb_mtk*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @ssusb_rscs_init(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_ip_sw_reset(%struct.ssusb_mtk*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ssusb_gadget_init(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_host_init(%struct.ssusb_mtk*, %struct.device_node*) #1

declare dso_local i32 @ssusb_otg_switch_init(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_host_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_gadget_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @ssusb_rscs_exit(%struct.ssusb_mtk*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @ssusb_debugfs_remove_root(%struct.ssusb_mtk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
