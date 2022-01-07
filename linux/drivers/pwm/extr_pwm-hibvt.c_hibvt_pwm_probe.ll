; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hibvt_pwm_soc = type { i32 }
%struct.hibvt_pwm_chip = type { i32, %struct.TYPE_2__, i32, i32, %struct.hibvt_pwm_soc* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"getting clock failed with %ld\0A\00", align 1
@hibvt_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PWM_KEEP_MASK = common dso_local global i32 0, align 4
@PWM_KEEP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hibvt_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibvt_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hibvt_pwm_soc*, align 8
  %5 = alloca %struct.hibvt_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.hibvt_pwm_soc* @of_device_get_match_data(i32* %10)
  store %struct.hibvt_pwm_soc* %11, %struct.hibvt_pwm_soc** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hibvt_pwm_chip* @devm_kzalloc(i32* %13, i32 56, i32 %14)
  store %struct.hibvt_pwm_chip* %15, %struct.hibvt_pwm_chip** %5, align 8
  %16 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %17 = icmp eq %struct.hibvt_pwm_chip* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %166

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @devm_clk_get(i32* %23, i32* null)
  %25 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %26 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %28 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %36 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  %39 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %41 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %166

44:                                               ; preds = %21
  %45 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %46 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store i32* @hibvt_pwm_ops, i32** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %51 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32* %49, i32** %52, align 8
  %53 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %54 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.hibvt_pwm_soc*, %struct.hibvt_pwm_soc** %4, align 8
  %57 = getelementptr inbounds %struct.hibvt_pwm_soc, %struct.hibvt_pwm_soc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %60 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %63 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %64 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %67 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 3, i32* %68, align 8
  %69 = load %struct.hibvt_pwm_soc*, %struct.hibvt_pwm_soc** %4, align 8
  %70 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %71 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %70, i32 0, i32 4
  store %struct.hibvt_pwm_soc* %69, %struct.hibvt_pwm_soc** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %6, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = call i32 @devm_ioremap_resource(i32* %76, %struct.resource* %77)
  %79 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %80 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %82 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %44
  %87 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %88 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %166

91:                                               ; preds = %44
  %92 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %93 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_prepare_enable(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %166

100:                                              ; preds = %91
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @devm_reset_control_get_exclusive(i32* %102, i32* null)
  %104 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %105 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %107 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %100
  %112 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %113 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clk_disable_unprepare(i32 %114)
  %116 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %117 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PTR_ERR(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %166

120:                                              ; preds = %100
  %121 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %122 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @reset_control_assert(i32 %123)
  %125 = call i32 @msleep(i32 30)
  %126 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %127 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @reset_control_deassert(i32 %128)
  %130 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %131 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %130, i32 0, i32 1
  %132 = call i32 @pwmchip_add(%struct.TYPE_2__* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %120
  %136 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %137 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @clk_disable_unprepare(i32 %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %166

141:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %159, %141
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %145 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %151 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @PWM_CTRL_ADDR(i32 %153)
  %155 = load i32, i32* @PWM_KEEP_MASK, align 4
  %156 = load i32, i32* @PWM_KEEP_SHIFT, align 4
  %157 = shl i32 1, %156
  %158 = call i32 @hibvt_pwm_set_bits(i32 %152, i32 %154, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %142

162:                                              ; preds = %142
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %5, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.hibvt_pwm_chip* %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %135, %111, %98, %86, %32, %18
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.hibvt_pwm_soc* @of_device_get_match_data(i32*) #1

declare dso_local %struct.hibvt_pwm_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(i32*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_2__*) #1

declare dso_local i32 @hibvt_pwm_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PWM_CTRL_ADDR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hibvt_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
