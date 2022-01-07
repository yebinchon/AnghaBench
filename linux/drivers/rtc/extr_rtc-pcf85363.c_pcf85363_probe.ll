; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf85x63_config = type { i32, i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.pcf85363*, i32, i32 }
%struct.pcf85363 = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }

@pcf_85363_config = common dso_local global %struct.pcf85x63_config zeroinitializer, align 4
@pcf85363_probe.nvmem_cfg = internal global [2 x %struct.nvmem_config] [%struct.nvmem_config { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i32 1, %struct.pcf85363* null, i32 128, i32 129 }, %struct.nvmem_config { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 1, i32 132, %struct.pcf85363* null, i32 130, i32 131 }], align 16
@.str = private unnamed_addr constant [10 x i8] c"pcf85x63-\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pcf85363-\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"regmap allocation failed\0A\00", align 1
@rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@CTRL_FLAGS = common dso_local global i32 0, align 4
@CTRL_PIN_IO = common dso_local global i32 0, align 4
@PIN_IO_INTA_OUT = common dso_local global i32 0, align 4
@PIN_IO_INTAPM = common dso_local global i32 0, align 4
@pcf85363_rtc_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pcf85363\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@rtc_ops_alarm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf85363_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85363_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf85363*, align 8
  %7 = alloca %struct.pcf85x63_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.pcf85x63_config* @pcf_85363_config, %struct.pcf85x63_config** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call i8* @of_device_get_match_data(i32* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.pcf85x63_config*
  store %struct.pcf85x63_config* %18, %struct.pcf85x63_config** %7, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pcf85363* @devm_kzalloc(i32* %21, i32 16, i32 %22)
  store %struct.pcf85363* %23, %struct.pcf85363** %6, align 8
  %24 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %25 = icmp ne %struct.pcf85363* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %152

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.pcf85x63_config*, %struct.pcf85x63_config** %7, align 8
  %32 = getelementptr inbounds %struct.pcf85x63_config, %struct.pcf85x63_config* %31, i32 0, i32 1
  %33 = call %struct.TYPE_9__* @devm_regmap_init_i2c(%struct.i2c_client* %30, i32* %32)
  %34 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %35 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %34, i32 0, i32 1
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %35, align 8
  %36 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %37 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call i64 @IS_ERR(%struct.TYPE_9__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %46 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.TYPE_9__* %47)
  store i32 %48, i32* %3, align 4
  br label %152

49:                                               ; preds = %29
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %52 = call i32 @i2c_set_clientdata(%struct.i2c_client* %50, %struct.pcf85363* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = call %struct.TYPE_9__* @devm_rtc_allocate_device(i32* %54)
  %56 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %57 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %56, i32 0, i32 0
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %59 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i64 @IS_ERR(%struct.TYPE_9__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %65 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.TYPE_9__* %66)
  store i32 %67, i32* %3, align 4
  br label %152

68:                                               ; preds = %49
  %69 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %70 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32* @rtc_ops, i32** %72, align 8
  %73 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %74 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %75 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %79 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %80 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %68
  %88 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %89 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* @CTRL_FLAGS, align 4
  %92 = call i32 @regmap_write(%struct.TYPE_9__* %90, i32 %91, i32 0)
  %93 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %94 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* @CTRL_PIN_IO, align 4
  %97 = load i32, i32* @PIN_IO_INTA_OUT, align 4
  %98 = load i32, i32* @PIN_IO_INTAPM, align 4
  %99 = call i32 @regmap_update_bits(%struct.TYPE_9__* %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 1
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @pcf85363_rtc_handle_irq, align 4
  %106 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %107 = load i32, i32* @IRQF_ONESHOT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = call i32 @devm_request_threaded_irq(i32* %101, i64 %104, i32* null, i32 %105, i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.i2c_client* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %87
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = call i32 @dev_warn(i32* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %122

117:                                              ; preds = %87
  %118 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %119 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32* @rtc_ops_alarm, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %113
  br label %123

123:                                              ; preds = %122, %68
  %124 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %125 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i32 @rtc_register_device(%struct.TYPE_9__* %126)
  store i32 %127, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %147, %123
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.pcf85x63_config*, %struct.pcf85x63_config** %7, align 8
  %131 = getelementptr inbounds %struct.pcf85x63_config, %struct.pcf85x63_config* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %128
  %135 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [2 x %struct.nvmem_config], [2 x %struct.nvmem_config]* @pcf85363_probe.nvmem_cfg, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %138, i32 0, i32 4
  store %struct.pcf85363* %135, %struct.pcf85363** %139, align 8
  %140 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %141 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x %struct.nvmem_config], [2 x %struct.nvmem_config]* @pcf85363_probe.nvmem_cfg, i64 0, i64 %144
  %146 = call i32 @rtc_nvmem_register(%struct.TYPE_9__* %142, %struct.nvmem_config* %145)
  br label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %128

150:                                              ; preds = %128
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %63, %41, %26
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i8* @of_device_get_match_data(i32*) #1

declare dso_local %struct.pcf85363* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf85363*) #1

declare dso_local %struct.TYPE_9__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @regmap_write(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_9__*, %struct.nvmem_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
