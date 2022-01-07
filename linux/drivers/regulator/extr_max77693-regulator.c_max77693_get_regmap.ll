; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_get_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_get_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.max77693_dev = type { %struct.regmap*, %struct.regmap* }

@TYPE_MAX77693 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap* (i32, %struct.max77693_dev*, i32)* @max77693_get_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap* @max77693_get_regmap(i32 %0, %struct.max77693_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77693_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.max77693_dev* %1, %struct.max77693_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TYPE_MAX77693, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %13 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %4, align 8
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %21
  ]

17:                                               ; preds = %15, %15
  %18 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %19 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %18, i32 0, i32 0
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %4, align 8
  br label %29

21:                                               ; preds = %15
  %22 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %23 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %22, i32 0, i32 1
  %24 = load %struct.regmap*, %struct.regmap** %23, align 8
  store %struct.regmap* %24, %struct.regmap** %4, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %27 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %26, i32 0, i32 0
  %28 = load %struct.regmap*, %struct.regmap** %27, align 8
  store %struct.regmap* %28, %struct.regmap** %4, align 8
  br label %29

29:                                               ; preds = %25, %21, %17, %11
  %30 = load %struct.regmap*, %struct.regmap** %4, align 8
  ret %struct.regmap* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
