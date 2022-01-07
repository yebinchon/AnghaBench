; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-xp.c_armada_xp_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-xp.c_armada_xp_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_soc_info = type { i32, i32, i8*, %struct.TYPE_13__*, i8*, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.mvebu_pinctrl_soc_info* }
%struct.of_device_id = type { i64 }

@armada_xp_pinctrl_info = common dso_local global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 8
@armada_xp_pinctrl_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mv78230_mpp_controls = common dso_local global %struct.TYPE_13__* null, align 8
@armada_xp_mpp_modes = common dso_local global i8* null, align 8
@mv78230_mpp_gpio_ranges = common dso_local global %struct.TYPE_13__* null, align 8
@mv78260_mpp_controls = common dso_local global %struct.TYPE_13__* null, align 8
@mv78260_mpp_gpio_ranges = common dso_local global %struct.TYPE_13__* null, align 8
@mv78460_mpp_controls = common dso_local global %struct.TYPE_13__* null, align 8
@mv78460_mpp_gpio_ranges = common dso_local global %struct.TYPE_13__* null, align 8
@mv98dx3236_mpp_controls = common dso_local global %struct.TYPE_13__* null, align 8
@mv98dx3236_mpp_modes = common dso_local global i8* null, align 8
@mv98dx3236_mpp_gpio_ranges = common dso_local global %struct.TYPE_13__* null, align 8
@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mpp_saved_regs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_xp_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_xp_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_pinctrl_soc_info*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.mvebu_pinctrl_soc_info* @armada_xp_pinctrl_info, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %7 = load i32, i32* @armada_xp_pinctrl_of_match, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.of_device_id* @of_match_device(i32 %7, %struct.TYPE_12__* %9)
  store %struct.of_device_id* %10, %struct.of_device_id** %5, align 8
  %11 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %12 = icmp ne %struct.of_device_id* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %1
  %17 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 255
  %22 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %23 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %25 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %123 [
    i32 130, label %27
    i32 129, label %51
    i32 128, label %75
    i32 133, label %99
    i32 132, label %99
    i32 131, label %99
  ]

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78230_mpp_controls, align 8
  %29 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %30 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %29, i32 0, i32 6
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78230_mpp_controls, align 8
  %32 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %31)
  %33 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %34 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @armada_xp_mpp_modes, align 8
  %36 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %37 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78230_mpp_controls, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %43 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78230_mpp_gpio_ranges, align 8
  %45 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %46 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %45, i32 0, i32 3
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78230_mpp_gpio_ranges, align 8
  %48 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %47)
  %49 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %50 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %123

51:                                               ; preds = %16
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78260_mpp_controls, align 8
  %53 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %54 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %53, i32 0, i32 6
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78260_mpp_controls, align 8
  %56 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %55)
  %57 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %58 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @armada_xp_mpp_modes, align 8
  %60 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %61 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78260_mpp_controls, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %67 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78260_mpp_gpio_ranges, align 8
  %69 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %70 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %69, i32 0, i32 3
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78260_mpp_gpio_ranges, align 8
  %72 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %71)
  %73 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %74 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %123

75:                                               ; preds = %16
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78460_mpp_controls, align 8
  %77 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %78 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %77, i32 0, i32 6
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78460_mpp_controls, align 8
  %80 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %79)
  %81 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %82 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @armada_xp_mpp_modes, align 8
  %84 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %85 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78460_mpp_controls, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %91 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78460_mpp_gpio_ranges, align 8
  %93 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %94 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %93, i32 0, i32 3
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv78460_mpp_gpio_ranges, align 8
  %96 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %95)
  %97 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %98 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %123

99:                                               ; preds = %16, %16, %16
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv98dx3236_mpp_controls, align 8
  %101 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %102 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %101, i32 0, i32 6
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv98dx3236_mpp_controls, align 8
  %104 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %103)
  %105 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %106 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @mv98dx3236_mpp_modes, align 8
  %108 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %109 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv98dx3236_mpp_controls, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %115 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv98dx3236_mpp_gpio_ranges, align 8
  %117 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %118 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %117, i32 0, i32 3
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mv98dx3236_mpp_gpio_ranges, align 8
  %120 = call i8* @ARRAY_SIZE(%struct.TYPE_13__* %119)
  %121 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %122 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %16, %99, %75, %51, %27
  %124 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %125 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %128 = call i32 @DIV_ROUND_UP(i32 %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i32 @devm_kmalloc_array(%struct.TYPE_12__* %130, i32 %131, i32 4, i32 %132)
  store i32 %133, i32* @mpp_saved_regs, align 4
  %134 = load i32, i32* @mpp_saved_regs, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %123
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %146

139:                                              ; preds = %123
  %140 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store %struct.mvebu_pinctrl_soc_info* %140, %struct.mvebu_pinctrl_soc_info** %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = call i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device* %144)
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %136, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_12__*) #1

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @devm_kmalloc_array(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
