; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_stop_charge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_stop_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_charger_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Stop charging!\0A\00", align 1
@PM8607_CHG_CTRL1 = common dso_local global i32 0, align 4
@CC1_MODE_OFF = common dso_local global i32 0, align 4
@CHARGE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_charger_info*, i32)* @stop_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_charge(%struct.pm860x_charger_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm860x_charger_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pm860x_charger_info* %0, %struct.pm860x_charger_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %6 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %10 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PM8607_CHG_CTRL1, align 4
  %13 = load i32, i32* @CC1_MODE_OFF, align 4
  %14 = call i32 @pm860x_set_bits(i32 %11, i32 %12, i32 3, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CHARGE_THRESHOLD, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %20 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %3, align 8
  %25 = load i32, i32* @CHARGE_THRESHOLD, align 4
  %26 = call i32 @set_vbatt_threshold(%struct.pm860x_charger_info* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %23, %18, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @set_vbatt_threshold(%struct.pm860x_charger_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
