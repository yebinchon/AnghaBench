; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_find_regulator_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_find_regulator_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6586x_regulator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@tps658623_regulator = common dso_local global %struct.tps6586x_regulator* null, align 8
@tps658640_regulator = common dso_local global %struct.tps6586x_regulator* null, align 8
@tps658643_regulator = common dso_local global %struct.tps6586x_regulator* null, align 8
@tps6586x_regulator = common dso_local global %struct.tps6586x_regulator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tps6586x_regulator* (i32, i32)* @find_regulator_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tps6586x_regulator* @find_regulator_info(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tps6586x_regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps6586x_regulator*, align 8
  %7 = alloca %struct.tps6586x_regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.tps6586x_regulator* null, %struct.tps6586x_regulator** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %23 [
    i32 132, label %11
    i32 131, label %11
    i32 130, label %15
    i32 129, label %15
    i32 128, label %19
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658623_regulator, align 8
  store %struct.tps6586x_regulator* %12, %struct.tps6586x_regulator** %7, align 8
  %13 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658623_regulator, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.tps6586x_regulator* %13)
  store i32 %14, i32* %8, align 4
  br label %23

15:                                               ; preds = %2, %2
  %16 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658640_regulator, align 8
  store %struct.tps6586x_regulator* %16, %struct.tps6586x_regulator** %7, align 8
  %17 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658640_regulator, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.tps6586x_regulator* %17)
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658643_regulator, align 8
  store %struct.tps6586x_regulator* %20, %struct.tps6586x_regulator** %7, align 8
  %21 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps658643_regulator, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.tps6586x_regulator* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %2, %19, %15, %11
  %24 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %7, align 8
  %25 = icmp ne %struct.tps6586x_regulator* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %32, i64 %34
  store %struct.tps6586x_regulator* %35, %struct.tps6586x_regulator** %6, align 8
  %36 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %6, align 8
  %37 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %6, align 8
  store %struct.tps6586x_regulator* %43, %struct.tps6586x_regulator** %3, align 8
  br label %73

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %27

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %23
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps6586x_regulator, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.tps6586x_regulator* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** @tps6586x_regulator, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %56, i64 %58
  store %struct.tps6586x_regulator* %59, %struct.tps6586x_regulator** %6, align 8
  %60 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %6, align 8
  %61 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %6, align 8
  store %struct.tps6586x_regulator* %67, %struct.tps6586x_regulator** %3, align 8
  br label %73

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %50

72:                                               ; preds = %50
  store %struct.tps6586x_regulator* null, %struct.tps6586x_regulator** %3, align 8
  br label %73

73:                                               ; preds = %72, %66, %42
  %74 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %3, align 8
  ret %struct.tps6586x_regulator* %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.tps6586x_regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
