; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_charge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"error reading charge register %02x: %d\0A\00", align 1
@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27XXX_CURRENT_CONSTANT = common dso_local global i32 0, align 4
@BQ27XXX_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32)* @bq27xxx_battery_read_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_charge(%struct.bq27xxx_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %14 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %22 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @BQ27XXX_CURRENT_CONSTANT, align 4
  %29 = load i32, i32* @BQ27XXX_RS, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 1000
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
