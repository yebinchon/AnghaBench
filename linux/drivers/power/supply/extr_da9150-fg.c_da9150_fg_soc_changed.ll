; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_soc_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_soc_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i64 }
%union.power_supply_propval = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_fg*)* @da9150_fg_soc_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_soc_changed(%struct.da9150_fg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9150_fg*, align 8
  %4 = alloca %union.power_supply_propval, align 8
  store %struct.da9150_fg* %0, %struct.da9150_fg** %3, align 8
  %5 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %6 = call i32 @da9150_fg_capacity(%struct.da9150_fg* %5, %union.power_supply_propval* %4)
  %7 = bitcast %union.power_supply_propval* %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %10 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = bitcast %union.power_supply_propval* %4 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %17 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @da9150_fg_capacity(%struct.da9150_fg*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
