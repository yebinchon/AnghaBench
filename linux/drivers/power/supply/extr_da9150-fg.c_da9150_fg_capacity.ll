; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9150_QIF_SOC_PCT = common dso_local global i32 0, align 4
@DA9150_QIF_SOC_PCT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_fg*, %union.power_supply_propval*)* @da9150_fg_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_capacity(%struct.da9150_fg* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9150_fg*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.da9150_fg* %0, %struct.da9150_fg** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %6 = load i32, i32* @DA9150_QIF_SOC_PCT, align 4
  %7 = load i32, i32* @DA9150_QIF_SOC_PCT_SIZE, align 4
  %8 = call i32 @da9150_fg_read_attr_sync(%struct.da9150_fg* %5, i32 %6, i32 %7)
  %9 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %10 = bitcast %union.power_supply_propval* %9 to i32*
  store i32 %8, i32* %10, align 4
  %11 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %12 = bitcast %union.power_supply_propval* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 100, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %2
  ret i32 0
}

declare dso_local i32 @da9150_fg_read_attr_sync(%struct.da9150_fg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
