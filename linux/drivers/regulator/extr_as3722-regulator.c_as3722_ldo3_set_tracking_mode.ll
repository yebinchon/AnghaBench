; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_ldo3_set_tracking_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_ldo3_set_tracking_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.as3722_regulators = type { %struct.as3722* }
%struct.as3722 = type { i32 }

@as3722_reg_lookup = common dso_local global %struct.TYPE_2__* null, align 8
@AS3722_LDO3_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_regulators*, i32, i32)* @as3722_ldo3_set_tracking_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_ldo3_set_tracking_mode(%struct.as3722_regulators* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3722_regulators*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.as3722*, align 8
  store %struct.as3722_regulators* %0, %struct.as3722_regulators** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %10 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %9, i32 0, i32 0
  %11 = load %struct.as3722*, %struct.as3722** %10, align 8
  store %struct.as3722* %11, %struct.as3722** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %24 [
    i32 130, label %13
    i32 129, label %13
    i32 131, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %3, %3, %3, %3
  %14 = load %struct.as3722*, %struct.as3722** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @as3722_reg_lookup, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AS3722_LDO3_MODE_MASK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @as3722_update_bits(%struct.as3722* %14, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @as3722_update_bits(%struct.as3722*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
