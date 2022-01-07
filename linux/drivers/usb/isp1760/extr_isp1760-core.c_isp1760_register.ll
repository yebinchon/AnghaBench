; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-core.c_isp1760_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-core.c_isp1760_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.device = type { i32 }
%struct.isp1760_device = type { i32, i32, i32, i32, %struct.device* }

@ISP1760_FLAG_ISP1761 = common dso_local global i32 0, align 4
@CONFIG_USB_ISP1760_HCD = common dso_local global i32 0, align 4
@CONFIG_USB_ISP1761_UDC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp1760_register(%struct.resource* %0, i32 %1, i64 %2, %struct.device* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.isp1760_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.device* %3, %struct.device** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @ISP1760_FLAG_ISP1761, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @CONFIG_USB_ISP1760_HCD, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = call i64 (...) @usb_disabled()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %5
  %28 = load i32, i32* @CONFIG_USB_ISP1761_UDC, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %135

37:                                               ; preds = %31, %24
  %38 = load %struct.device*, %struct.device** %10, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.isp1760_device* @devm_kzalloc(%struct.device* %38, i32 24, i32 %39)
  store %struct.isp1760_device* %40, %struct.isp1760_device** %12, align 8
  %41 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %42 = icmp ne %struct.isp1760_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %135

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %10, align 8
  %48 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %49 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %48, i32 0, i32 4
  store %struct.device* %47, %struct.device** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %52 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %55 = call i32 @devm_gpiod_get_optional(%struct.device* %53, i32* null, i32 %54)
  %56 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %57 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %59 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %65 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %6, align 4
  br label %135

68:                                               ; preds = %46
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = load %struct.resource*, %struct.resource** %7, align 8
  %71 = call i32 @devm_ioremap_resource(%struct.device* %69, %struct.resource* %70)
  %72 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %73 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %75 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %81 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %6, align 4
  br label %135

84:                                               ; preds = %68
  %85 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %86 = call i32 @isp1760_init_core(%struct.isp1760_device* %85)
  %87 = load i32, i32* @CONFIG_USB_ISP1760_HCD, align 4
  %88 = call i64 @IS_ENABLED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = call i64 (...) @usb_disabled()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %95 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %94, i32 0, i32 1
  %96 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %97 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.resource*, %struct.resource** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @IRQF_SHARED, align 8
  %103 = or i64 %101, %102
  %104 = load %struct.device*, %struct.device** %10, align 8
  %105 = call i32 @isp1760_hcd_register(i32* %95, i32 %98, %struct.resource* %99, i32 %100, i64 %103, %struct.device* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %6, align 4
  br label %135

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %90, %84
  %112 = load i32, i32* @CONFIG_USB_ISP1761_UDC, align 4
  %113 = call i64 @IS_ENABLED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @isp1760_udc_register(%struct.isp1760_device* %119, i32 %120, i64 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %127 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %126, i32 0, i32 1
  %128 = call i32 @isp1760_hcd_unregister(i32* %127)
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %6, align 4
  br label %135

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %115, %111
  %132 = load %struct.device*, %struct.device** %10, align 8
  %133 = load %struct.isp1760_device*, %struct.isp1760_device** %12, align 8
  %134 = call i32 @dev_set_drvdata(%struct.device* %132, %struct.isp1760_device* %133)
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %125, %108, %79, %63, %43, %34
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.isp1760_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @isp1760_init_core(%struct.isp1760_device*) #1

declare dso_local i32 @isp1760_hcd_register(i32*, i32, %struct.resource*, i32, i64, %struct.device*) #1

declare dso_local i32 @isp1760_udc_register(%struct.isp1760_device*, i32, i64) #1

declare dso_local i32 @isp1760_hcd_unregister(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.isp1760_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
