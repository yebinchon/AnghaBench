; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_nac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_nac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }

@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27XXX_REG_FLAGS = common dso_local global i32 0, align 4
@BQ27000_FLAG_CI = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@BQ27XXX_REG_NAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*)* @bq27xxx_battery_read_nac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_nac(%struct.bq27xxx_device_info* %0) #0 {
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
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %13 = load i32, i32* @BQ27XXX_REG_FLAGS, align 4
  %14 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %12, i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BQ27000_FLAG_CI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODATA, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %17, %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %28 = load i32, i32* @BQ27XXX_REG_NAC, align 4
  %29 = call i32 @bq27xxx_battery_read_charge(%struct.bq27xxx_device_info* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @bq27xxx_battery_read_charge(%struct.bq27xxx_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
