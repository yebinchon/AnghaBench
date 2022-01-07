; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_soc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }

@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27XXX_REG_SOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error reading State-of-Charge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*)* @bq27xxx_battery_read_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_soc(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca %struct.bq27xxx_device_info*, align 8
  %3 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %2, align 8
  %4 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %12 = load i32, i32* @BQ27XXX_REG_SOC, align 4
  %13 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %11, i32 %12, i32 1)
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %16 = load i32, i32* @BQ27XXX_REG_SOC, align 4
  %17 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %15, i32 %16, i32 0)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %23 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
