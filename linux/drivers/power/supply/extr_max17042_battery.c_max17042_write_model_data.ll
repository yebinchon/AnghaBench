; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_write_model_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_write_model_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.TYPE_4__*, %struct.regmap* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max17042_chip*, i64, i32)* @max17042_write_model_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17042_write_model_data(%struct.max17042_chip* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.max17042_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.max17042_chip* %0, %struct.max17042_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %10 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %23 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regmap_write(%struct.regmap* %17, i64 %21, i32 %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %12

37:                                               ; preds = %12
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
