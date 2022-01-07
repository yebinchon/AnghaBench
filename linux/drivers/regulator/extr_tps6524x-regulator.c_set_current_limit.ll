; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.supply_info = type { i32, i32*, i32 }
%struct.regulator_dev = type { i32 }
%struct.tps6524x = type { i32 }

@supply_info = common dso_local global %struct.supply_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.supply_info*, align 8
  %9 = alloca %struct.tps6524x*, align 8
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.tps6524x* %12, %struct.tps6524x** %9, align 8
  %13 = load %struct.supply_info*, %struct.supply_info** @supply_info, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call i64 @rdev_get_id(%struct.regulator_dev* %14)
  %16 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %13, i64 %15
  store %struct.supply_info* %16, %struct.supply_info** %8, align 8
  %17 = load %struct.supply_info*, %struct.supply_info** %8, align 8
  %18 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.supply_info*, %struct.supply_info** %8, align 8
  %26 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %59, %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.supply_info*, %struct.supply_info** %8, align 8
  %35 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %33, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.supply_info*, %struct.supply_info** %8, align 8
  %45 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %43, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.tps6524x*, %struct.tps6524x** %9, align 8
  %54 = load %struct.supply_info*, %struct.supply_info** %8, align 8
  %55 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %54, i32 0, i32 2
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @write_field(%struct.tps6524x* %53, i32* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %42, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %52, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @write_field(%struct.tps6524x*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
