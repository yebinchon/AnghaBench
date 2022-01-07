; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@MAX14577_MUIC_REG_STATUS2 = common dso_local global i32 0, align 4
@STATUS2_CHGTYP_MASK = common dso_local global i32 0, align 4
@STATUS2_CHGTYP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32*)* @max14577_get_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_get_online(%struct.max14577_charger* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %11 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %6, align 8
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @MAX14577_MUIC_REG_STATUS2, align 4
  %17 = call i32 @max14577_read_reg(%struct.regmap* %15, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @STATUS2_CHGTYP_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @STATUS2_CHGTYP_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %29 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @maxim_get_charger_type(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %39 [
    i32 130, label %36
    i32 136, label %36
    i32 131, label %36
    i32 132, label %36
    i32 137, label %36
    i32 128, label %36
    i32 134, label %38
    i32 135, label %38
    i32 133, label %38
    i32 129, label %38
  ]

36:                                               ; preds = %22, %22, %22, %22, %22, %22
  %37 = load i32*, i32** %5, align 8
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %22, %22, %22, %22
  br label %39

39:                                               ; preds = %22, %38
  %40 = load i32*, i32** %5, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @max14577_read_reg(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @maxim_get_charger_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
