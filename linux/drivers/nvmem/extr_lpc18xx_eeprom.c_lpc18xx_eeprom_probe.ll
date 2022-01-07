; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.lpc18xx_eeprom_dev*, %struct.device*, i8* }
%struct.lpc18xx_eeprom_dev = type { i32, i32, %struct.reset_control*, %struct.reset_control*, i8*, %struct.reset_control*, %struct.reset_control* }
%struct.reset_control = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get eeprom clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to prepare/enable eeprom clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get reset: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@LPC18XX_EEPROM_CLOCK_HZ = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_CLKDIV = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_AUTOPROG = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_AUTOPROG_WORD = common dso_local global i64 0, align 8
@LPC18XX_EEPROM_PWRDWN = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_PWRDWN_YES = common dso_local global i64 0, align 8
@lpc18xx_nvmem_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_eeprom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_eeprom_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_eeprom_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.reset_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lpc18xx_eeprom_dev* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.lpc18xx_eeprom_dev* %14, %struct.lpc18xx_eeprom_dev** %4, align 8
  %15 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %16 = icmp ne %struct.lpc18xx_eeprom_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %21, i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %23, %struct.resource** %8, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = call i8* @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = bitcast i8* %26 to %struct.reset_control*
  %28 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %29 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %28, i32 0, i32 6
  store %struct.reset_control* %27, %struct.reset_control** %29, align 8
  %30 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %31 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %30, i32 0, i32 6
  %32 = load %struct.reset_control*, %struct.reset_control** %31, align 8
  %33 = call i64 @IS_ERR(%struct.reset_control* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %37 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %36, i32 0, i32 6
  %38 = load %struct.reset_control*, %struct.reset_control** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.reset_control* %38)
  store i32 %39, i32* %2, align 4
  br label %171

40:                                               ; preds = %20
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %41, i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %43, %struct.resource** %8, align 8
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = call i8* @devm_ioremap_resource(%struct.device* %44, %struct.resource* %45)
  %47 = bitcast i8* %46 to %struct.reset_control*
  %48 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %49 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %48, i32 0, i32 5
  store %struct.reset_control* %47, %struct.reset_control** %49, align 8
  %50 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %51 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %50, i32 0, i32 5
  %52 = load %struct.reset_control*, %struct.reset_control** %51, align 8
  %53 = call i64 @IS_ERR(%struct.reset_control* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %57 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %56, i32 0, i32 5
  %58 = load %struct.reset_control*, %struct.reset_control** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.reset_control* %58)
  store i32 %59, i32* %2, align 4
  br label %171

60:                                               ; preds = %40
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call %struct.reset_control* @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %65 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %64, i32 0, i32 2
  store %struct.reset_control* %63, %struct.reset_control** %65, align 8
  %66 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %67 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %66, i32 0, i32 2
  %68 = load %struct.reset_control*, %struct.reset_control** %67, align 8
  %69 = call i64 @IS_ERR(%struct.reset_control* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %76 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %75, i32 0, i32 2
  %77 = load %struct.reset_control*, %struct.reset_control** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.reset_control* %77)
  store i32 %78, i32* %2, align 4
  br label %171

79:                                               ; preds = %60
  %80 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %81 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %80, i32 0, i32 2
  %82 = load %struct.reset_control*, %struct.reset_control** %81, align 8
  %83 = call i32 @clk_prepare_enable(%struct.reset_control* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %171

91:                                               ; preds = %79
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device* %92, i32* null)
  store %struct.reset_control* %93, %struct.reset_control** %6, align 8
  %94 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %95 = call i64 @IS_ERR(%struct.reset_control* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %100 = call i32 @PTR_ERR(%struct.reset_control* %99)
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %103 = call i32 @PTR_ERR(%struct.reset_control* %102)
  store i32 %103, i32* %9, align 4
  br label %165

104:                                              ; preds = %91
  %105 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %106 = call i32 @reset_control_assert(%struct.reset_control* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %165

113:                                              ; preds = %104
  %114 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %115 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %114, i32 0, i32 0
  store i32 4, i32* %115, align 8
  %116 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %117 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %116, i32 0, i32 1
  store i32 4, i32* %117, align 4
  %118 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %119 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %118, i32 0, i32 2
  %120 = load %struct.reset_control*, %struct.reset_control** %119, align 8
  %121 = call i64 @clk_get_rate(%struct.reset_control* %120)
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* @LPC18XX_EEPROM_CLOCK_HZ, align 4
  %124 = call i32 @DIV_ROUND_UP(i64 %122, i32 %123)
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %7, align 8
  %127 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %128 = load i32, i32* @LPC18XX_EEPROM_CLKDIV, align 4
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %127, i32 %128, i64 %129)
  %131 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %132 = load i32, i32* @LPC18XX_EEPROM_AUTOPROG, align 4
  %133 = load i64, i64* @LPC18XX_EEPROM_AUTOPROG_WORD, align 8
  %134 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %131, i32 %132, i64 %133)
  %135 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %136 = load i32, i32* @LPC18XX_EEPROM_PWRDWN, align 4
  %137 = load i64, i64* @LPC18XX_EEPROM_PWRDWN_YES, align 8
  %138 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %135, i32 %136, i64 %137)
  %139 = load %struct.resource*, %struct.resource** %8, align 8
  %140 = call i8* @resource_size(%struct.resource* %139)
  %141 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %142 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load %struct.resource*, %struct.resource** %8, align 8
  %144 = call i8* @resource_size(%struct.resource* %143)
  store i8* %144, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_nvmem_config, i32 0, i32 2), align 8
  %145 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %145, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_nvmem_config, i32 0, i32 1), align 8
  %146 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  store %struct.lpc18xx_eeprom_dev* %146, %struct.lpc18xx_eeprom_dev** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_nvmem_config, i32 0, i32 0), align 8
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = call %struct.reset_control* @devm_nvmem_register(%struct.device* %147, %struct.TYPE_3__* @lpc18xx_nvmem_config)
  %149 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %150 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %149, i32 0, i32 3
  store %struct.reset_control* %148, %struct.reset_control** %150, align 8
  %151 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %152 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %151, i32 0, i32 3
  %153 = load %struct.reset_control*, %struct.reset_control** %152, align 8
  %154 = call i64 @IS_ERR(%struct.reset_control* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %113
  %157 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %158 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %157, i32 0, i32 3
  %159 = load %struct.reset_control*, %struct.reset_control** %158, align 8
  %160 = call i32 @PTR_ERR(%struct.reset_control* %159)
  store i32 %160, i32* %9, align 4
  br label %165

161:                                              ; preds = %113
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.lpc18xx_eeprom_dev* %163)
  store i32 0, i32* %2, align 4
  br label %171

165:                                              ; preds = %156, %109, %97
  %166 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %4, align 8
  %167 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %166, i32 0, i32 2
  %168 = load %struct.reset_control*, %struct.reset_control** %167, align 8
  %169 = call i32 @clk_disable_unprepare(%struct.reset_control* %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %161, %86, %71, %55, %35, %17
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.lpc18xx_eeprom_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i64 @clk_get_rate(%struct.reset_control*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev*, i32, i64) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local %struct.reset_control* @devm_nvmem_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_eeprom_dev*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
