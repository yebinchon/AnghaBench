; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.ds3232 = type { i32, i32, %struct.device*, %struct.regmap* }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.regmap*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ds3232_sram\00", align 1
@NVMEM_TYPE_BATTERY_BACKED = common dso_local global i32 0, align 4
@ds3232_nvmem_write = common dso_local global i32 0, align 4
@ds3232_nvmem_read = common dso_local global i32 0, align 4
@DS3232_REG_SRAM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ds3232_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ds3232_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*, i32, i8*)* @ds3232_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ds3232*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvmem_config, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 3
  %17 = load i32, i32* @NVMEM_TYPE_BATTERY_BACKED, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 4
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %19, %struct.regmap** %18, align 8
  %20 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 5
  %21 = load i32, i32* @ds3232_nvmem_write, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 6
  %23 = load i32, i32* @ds3232_nvmem_read, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %12, i32 0, i32 7
  %25 = load i32, i32* @DS3232_REG_SRAM_SIZE, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ds3232* @devm_kzalloc(%struct.device* %26, i32 24, i32 %27)
  store %struct.ds3232* %28, %struct.ds3232** %10, align 8
  %29 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %30 = icmp ne %struct.ds3232* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %118

34:                                               ; preds = %4
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %37 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %36, i32 0, i32 3
  store %struct.regmap* %35, %struct.regmap** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %40 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %43 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %42, i32 0, i32 2
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.ds3232* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @ds3232_check_rtc_status(%struct.device* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %118

53:                                               ; preds = %34
  %54 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %55 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @device_init_wakeup(%struct.device* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @ds3232_hwmon_register(%struct.device* %62, i8* %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = call i32 @devm_rtc_device_register(%struct.device* %65, i8* %66, i32* @ds3232_rtc_ops, i32 %67)
  %69 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %70 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %72 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %78 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %5, align 4
  br label %118

81:                                               ; preds = %61
  %82 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %83 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtc_nvmem_register(i32 %84, %struct.nvmem_config* %12)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %118

90:                                               ; preds = %81
  %91 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %92 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %98 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ds3232_irq, align 4
  %101 = load i32, i32* @IRQF_SHARED, align 4
  %102 = load i32, i32* @IRQF_ONESHOT, align 4
  %103 = or i32 %101, %102
  %104 = load i8*, i8** %9, align 8
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @devm_request_threaded_irq(%struct.device* %96, i32 %99, i32* null, i32 %100, i32 %103, i8* %104, %struct.device* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @device_set_wakeup_capable(%struct.device* %110, i32 0)
  %112 = load %struct.ds3232*, %struct.ds3232** %10, align 8
  %113 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %109, %95
  br label %117

117:                                              ; preds = %116, %90
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %88, %76, %51, %31
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.ds3232* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ds3232*) #1

declare dso_local i32 @ds3232_check_rtc_status(%struct.device*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @ds3232_hwmon_register(%struct.device*, i8*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.device*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rtc_nvmem_register(i32, %struct.nvmem_config*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
