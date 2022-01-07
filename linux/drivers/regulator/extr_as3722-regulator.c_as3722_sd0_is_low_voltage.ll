; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd0_is_low_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_sd0_is_low_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_regulators = type { i32, i32 }

@AS3722_FUSE7_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@AS3722_FUSE7_SD0_LOW_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_regulators*)* @as3722_sd0_is_low_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_sd0_is_low_voltage(%struct.as3722_regulators* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3722_regulators*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.as3722_regulators* %0, %struct.as3722_regulators** %3, align 8
  %6 = load %struct.as3722_regulators*, %struct.as3722_regulators** %3, align 8
  %7 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AS3722_FUSE7_REG, align 4
  %10 = call i32 @as3722_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.as3722_regulators*, %struct.as3722_regulators** %3, align 8
  %15 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AS3722_FUSE7_REG, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AS3722_FUSE7_SD0_LOW_VOLTAGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @as3722_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
