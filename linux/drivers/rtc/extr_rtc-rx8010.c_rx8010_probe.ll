; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.i2c_client = type { i64, i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rx8010_data = type { %struct.TYPE_7__*, %struct.i2c_client* }
%struct.TYPE_7__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"doesn't support required functionality\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"IRQ %d supplied\0A\00", align 1
@rx8010_irq_1_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rx8010\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@rx8010_read_alarm = common dso_local global i32 0, align 4
@rx8010_rtc_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@rx8010_set_alarm = common dso_local global i32 0, align 4
@rx8010_alarm_irq_enable = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to register the class device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rx8010_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.rx8010_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.rx8010_data* @devm_kzalloc(i32* %26, i32 16, i32 %27)
  store %struct.rx8010_data* %28, %struct.rx8010_data** %7, align 8
  %29 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %30 = icmp ne %struct.rx8010_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %37 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %36, i32 0, i32 1
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.rx8010_data* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @rx8010_init_client(%struct.i2c_client* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %112

47:                                               ; preds = %34
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %47
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @rx8010_irq_1_handler, align 4
  %65 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %66 = load i32, i32* @IRQF_ONESHOT, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = call i32 @devm_request_threaded_irq(i32* %60, i64 %63, i32* null, i32 %64, i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.i2c_client* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %82

78:                                               ; preds = %52
  %79 = load i32, i32* @rx8010_read_alarm, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rx8010_rtc_ops, i32 0, i32 2), align 4
  %80 = load i32, i32* @rx8010_set_alarm, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rx8010_rtc_ops, i32 0, i32 1), align 4
  %81 = load i32, i32* @rx8010_alarm_irq_enable, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rx8010_rtc_ops, i32 0, i32 0), align 4
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %82, %47
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 1
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @THIS_MODULE, align 4
  %90 = call %struct.TYPE_7__* @devm_rtc_device_register(i32* %85, i32 %88, %struct.TYPE_6__* @rx8010_rtc_ops, i32 %89)
  %91 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %92 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %91, i32 0, i32 0
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %94 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i64 @IS_ERR(%struct.TYPE_7__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %83
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 1
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %103 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @PTR_ERR(%struct.TYPE_7__* %104)
  store i32 %105, i32* %3, align 4
  br label %112

106:                                              ; preds = %83
  %107 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %108 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %98, %45, %31, %18
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.rx8010_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rx8010_data*) #1

declare dso_local i32 @rx8010_init_client(%struct.i2c_client*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local %struct.TYPE_7__* @devm_rtc_device_register(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
