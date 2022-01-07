; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1374.c_ds1374_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1374.c_ds1374_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds1374 = type { i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ds1374_work = common dso_local global i32 0, align 4
@ds1374_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ds1374\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@ds1374_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to register the class device\0A\00", align 1
@ds1374_miscdev = common dso_local global i32 0, align 4
@ds1374_wdt_notifier = common dso_local global i32 0, align 4
@save_client = common dso_local global %struct.i2c_client* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds1374_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds1374*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ds1374* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.ds1374* %11, %struct.ds1374** %6, align 8
  %12 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %13 = icmp ne %struct.ds1374* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %20 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %19, i32 0, i32 3
  store %struct.i2c_client* %18, %struct.i2c_client** %20, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.ds1374* %22)
  %24 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %25 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %24, i32 0, i32 2
  %26 = load i32, i32* @ds1374_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %29 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %28, i32 0, i32 1
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @ds1374_check_rtc_status(%struct.i2c_client* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %17
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ds1374_irq, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @devm_request_irq(i32* %44, i64 %47, i32 %48, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.i2c_client* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %42
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = call i32 @device_set_wakeup_capable(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %58, %37
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @THIS_MODULE, align 4
  %69 = call i32 @devm_rtc_device_register(i32* %64, i32 %67, i32* @ds1374_rtc_ops, i32 %68)
  %70 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %71 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %73 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %62
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %82 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %77, %53, %35, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ds1374* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds1374*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ds1374_check_rtc_status(%struct.i2c_client*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
