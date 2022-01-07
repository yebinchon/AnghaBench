; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-berlin.c_berlin_reset_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-berlin.c_berlin_reset_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.berlin_reset_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @berlin_reset_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_reset_reset(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.berlin_reset_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %9 = call %struct.berlin_reset_priv* @to_berlin_reset_priv(%struct.reset_controller_dev* %8)
  store %struct.berlin_reset_priv* %9, %struct.berlin_reset_priv** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = lshr i64 %10, 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, 31
  %15 = call i32 @BIT(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.berlin_reset_priv*, %struct.berlin_reset_priv** %5, align 8
  %17 = getelementptr inbounds %struct.berlin_reset_priv, %struct.berlin_reset_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @regmap_write(i32 %18, i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 10)
  ret i32 0
}

declare dso_local %struct.berlin_reset_priv* @to_berlin_reset_priv(%struct.reset_controller_dev*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
