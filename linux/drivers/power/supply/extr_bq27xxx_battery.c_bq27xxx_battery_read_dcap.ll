; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_dcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_dcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }

@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27XXX_REG_DCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"error reading initial last measured discharge\0A\00", align 1
@BQ27XXX_CURRENT_CONSTANT = common dso_local global i32 0, align 4
@BQ27XXX_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*)* @bq27xxx_battery_read_dcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_dcap(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  %5 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %6 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %13 = load i32, i32* @BQ27XXX_REG_DCAP, align 4
  %14 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %12, i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %17 = load i32, i32* @BQ27XXX_REG_DCAP, align 4
  %18 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* @BQ27XXX_CURRENT_CONSTANT, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @BQ27XXX_RS, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 1000
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
