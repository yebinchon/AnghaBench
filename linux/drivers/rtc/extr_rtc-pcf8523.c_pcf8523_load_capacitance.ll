; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_load_capacitance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_load_capacitance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_CONTROL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"quartz-load-femtofarads\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Unknown quartz-load-femtofarads value: %d. Assuming 12500\00", align 1
@REG_CONTROL1_CAP_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pcf8523_load_capacitance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_load_capacitance(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = load i32, i32* @REG_CONTROL1, align 4
  %9 = call i32 @pcf8523_read(%struct.i2c_client* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  store i32 12500, i32* %4, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_property_read_u32(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %4)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %21 [
    i32 12500, label %26
    i32 7000, label %30
  ]

21:                                               ; preds = %14
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_warn(%struct.TYPE_2__* %23, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %14, %21
  %27 = load i32, i32* @REG_CONTROL1_CAP_SEL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %14
  %31 = load i32, i32* @REG_CONTROL1_CAP_SEL, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* @REG_CONTROL1, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pcf8523_write(%struct.i2c_client* %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pcf8523_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @pcf8523_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
