; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_supply_is_couple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_supply_is_couple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.regulator_dev* }
%struct.TYPE_3__ = type { i32, %struct.regulator_dev** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @regulator_supply_is_couple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_supply_is_couple(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.regulator_dev**, %struct.regulator_dev*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %17, i64 %19
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %20, align 8
  store %struct.regulator_dev* %21, %struct.regulator_dev** %4, align 8
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %25, align 8
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %28 = icmp eq %struct.regulator_dev* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
