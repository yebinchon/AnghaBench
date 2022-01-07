; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_data*)* @max8997_set_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_set_gpio(%struct.max8997_data* %0) #0 {
  %2 = alloca %struct.max8997_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max8997_data* %0, %struct.max8997_data** %2, align 8
  %6 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %7 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %11 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 1
  %14 = and i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %16 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %21 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gpio_set_value(i32 %24, i32 %25)
  %27 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %28 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gpio_set_value(i32 %31, i32 %32)
  %34 = load %struct.max8997_data*, %struct.max8997_data** %2, align 8
  %35 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @gpio_set_value(i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
