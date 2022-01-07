; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_charger_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_charger_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lp8727_chg = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@LP8727_ICHG_SHIFT = common dso_local global i32 0, align 4
@LP8727_CHGCTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @lp8727_charger_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8727_charger_changed(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.lp8727_chg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %7 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.lp8727_chg* @dev_get_drvdata(i32 %10)
  store %struct.lp8727_chg* %11, %struct.lp8727_chg** %3, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %13 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %18 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lp8727_is_charger_attached(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %25 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %30 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %35 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LP8727_ICHG_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %45 = load i32, i32* @LP8727_CHGCTRL2, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @lp8727_write_byte(%struct.lp8727_chg* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %22, %28, %23
  ret void
}

declare dso_local %struct.lp8727_chg* @dev_get_drvdata(i32) #1

declare dso_local i32 @lp8727_is_charger_attached(i32, i32) #1

declare dso_local i32 @lp8727_write_byte(%struct.lp8727_chg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
