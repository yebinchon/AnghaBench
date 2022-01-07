; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_chg_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_chg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5061_state = type { i32 }
%union.power_supply_propval = type { i32 }

@adp5061_chg_type = common dso_local global i32* null, align 8
@ADP5061_CHG_FAST_CV = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5061_state*, %union.power_supply_propval*)* @adp5061_get_chg_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_get_chg_type(%struct.adp5061_state* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp5061_state*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adp5061_state* %0, %struct.adp5061_state** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %10 = load %struct.adp5061_state*, %struct.adp5061_state** %4, align 8
  %11 = call i32 @adp5061_get_status(%struct.adp5061_state* %10, i32* %6, i32* %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i32*, i32** @adp5061_chg_type, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ADP5061_CHG_STATUS_1_CHG_STATUS(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ADP5061_CHG_FAST_CV, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @adp5061_get_status(%struct.adp5061_state*, i32*, i32*) #1

declare dso_local i64 @ADP5061_CHG_STATUS_1_CHG_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
