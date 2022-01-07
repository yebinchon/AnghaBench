; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2780.c_w1_ds2780_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2780.c_w1_ds2780_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"ds2780-battery\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_ds2780_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2780_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %6 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %7 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %6)
  store %struct.platform_device* %7, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = icmp ne %struct.platform_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 0
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = call i32 @platform_device_add(%struct.platform_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %26 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %25, i32 0, i32 0
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = call i32 @dev_set_drvdata(i32* %26, %struct.platform_device* %27)
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = call i32 @platform_device_put(%struct.platform_device* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %24, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
