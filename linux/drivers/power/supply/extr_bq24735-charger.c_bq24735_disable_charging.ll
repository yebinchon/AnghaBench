; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_disable_charging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_disable_charging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24735 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BQ24735_CHG_OPT = common dso_local global i32 0, align 4
@BQ24735_CHG_OPT_CHARGE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24735*)* @bq24735_disable_charging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_disable_charging(%struct.bq24735* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24735*, align 8
  store %struct.bq24735* %0, %struct.bq24735** %3, align 8
  %4 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %5 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %13 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BQ24735_CHG_OPT, align 4
  %16 = load i32, i32* @BQ24735_CHG_OPT_CHARGE_DISABLE, align 4
  %17 = load i32, i32* @BQ24735_CHG_OPT_CHARGE_DISABLE, align 4
  %18 = call i32 @bq24735_update_word(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @bq24735_update_word(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
