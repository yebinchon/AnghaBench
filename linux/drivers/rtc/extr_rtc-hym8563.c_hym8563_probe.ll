; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.hym8563 = type { i32, %struct.TYPE_4__*, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not init device, %d\0A\00", align 1
@hym8563_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"irq %d request failed, %d\0A\00", align 1
@HYM8563_SEC = common dso_local global i32 0, align 4
@HYM8563_SEC_VL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rtc information is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@hym8563_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @hym8563_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hym8563_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.hym8563*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hym8563* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.hym8563* %11, %struct.hym8563** %6, align 8
  %12 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %13 = icmp ne %struct.hym8563* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %20 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %19, i32 0, i32 2
  store %struct.i2c_client* %18, %struct.i2c_client** %20, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.hym8563* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = call i32 @device_set_wakeup_capable(i32* %25, i32 1)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @hym8563_init_device(%struct.i2c_client* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %119

37:                                               ; preds = %17
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @hym8563_irq, align 4
  %49 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %50 = load i32, i32* @IRQF_ONESHOT, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %56 = call i32 @devm_request_threaded_irq(i32* %44, i32 %47, i32* null, i32 %48, i32 %51, i32 %54, %struct.hym8563* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %42
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %119

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* @HYM8563_SEC, align 4
  %72 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %119

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @HYM8563_SEC_VL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %85 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 1
  %88 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %89 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %94 = call i32 @dev_dbg(i32* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @THIS_MODULE, align 4
  %101 = call %struct.TYPE_4__* @devm_rtc_device_register(i32* %96, i32 %99, i32* @hym8563_rtc_ops, i32 %100)
  %102 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %103 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %102, i32 0, i32 1
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %105 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i64 @IS_ERR(%struct.TYPE_4__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %77
  %110 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %111 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @PTR_ERR(%struct.TYPE_4__* %112)
  store i32 %113, i32* %3, align 4
  br label %119

114:                                              ; preds = %77
  %115 = load %struct.hym8563*, %struct.hym8563** %6, align 8
  %116 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 4
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %109, %75, %59, %31, %14
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.hym8563* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.hym8563*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @hym8563_init_device(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.hym8563*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
