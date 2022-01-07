; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.supply_info = type { i32, i32*, i32 }
%struct.regulator_dev = type { i32 }
%struct.tps6524x = type { i32 }

@supply_info = common dso_local global %struct.supply_info* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.supply_info*, align 8
  %5 = alloca %struct.tps6524x*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.tps6524x* %8, %struct.tps6524x** %5, align 8
  %9 = load %struct.supply_info*, %struct.supply_info** @supply_info, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i64 @rdev_get_id(%struct.regulator_dev* %10)
  %12 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %9, i64 %11
  store %struct.supply_info* %12, %struct.supply_info** %4, align 8
  %13 = load %struct.supply_info*, %struct.supply_info** %4, align 8
  %14 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.supply_info*, %struct.supply_info** %4, align 8
  %19 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %25 = load %struct.supply_info*, %struct.supply_info** %4, align 8
  %26 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %25, i32 0, i32 2
  %27 = call i32 @read_field(%struct.tps6524x* %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.supply_info*, %struct.supply_info** %4, align 8
  %35 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %52

44:                                               ; preds = %32
  %45 = load %struct.supply_info*, %struct.supply_info** %4, align 8
  %46 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %44, %41, %30, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @read_field(%struct.tps6524x*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
