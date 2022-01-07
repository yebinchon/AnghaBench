; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_bq27xxx_battery_hdq_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_bq27xxx_battery_hdq_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }
%struct.bq27xxx_device_info = type { i8*, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BQ27000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bq27000-battery\00", align 1
@bq27xxx_battery_hdq_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @bq27xxx_battery_hdq_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_hdq_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %5 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %6 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bq27xxx_device_info* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.bq27xxx_device_info* %8, %struct.bq27xxx_device_info** %4, align 8
  %9 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %10 = icmp ne %struct.bq27xxx_device_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %16 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %15, i32 0, i32 0
  %17 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %18 = call i32 @dev_set_drvdata(i32* %16, %struct.bq27xxx_device_info* %17)
  %19 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %20 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %19, i32 0, i32 0
  %21 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %22 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @BQ27000, align 4
  %24 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %27 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @bq27xxx_battery_hdq_read, align 4
  %29 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %30 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %33 = call i32 @bq27xxx_battery_setup(%struct.bq27xxx_device_info* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.bq27xxx_device_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.bq27xxx_device_info*) #1

declare dso_local i32 @bq27xxx_battery_setup(%struct.bq27xxx_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
