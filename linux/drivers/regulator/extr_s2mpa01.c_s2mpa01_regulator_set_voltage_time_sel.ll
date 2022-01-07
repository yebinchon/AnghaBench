; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_regulator_set_voltage_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_regulator_set_voltage_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.s2mpa01_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @s2mpa01_regulator_set_voltage_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mpa01_regulator_set_voltage_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s2mpa01_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.s2mpa01_info* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.s2mpa01_info* %12, %struct.s2mpa01_info** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  switch i32 %14, label %39 [
    i32 135, label %15
    i32 133, label %15
    i32 134, label %19
    i32 132, label %23
    i32 137, label %27
    i32 131, label %27
    i32 130, label %31
    i32 129, label %35
    i32 128, label %35
    i32 136, label %35
  ]

15:                                               ; preds = %3, %3
  %16 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %17 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %21 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %25 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %39

27:                                               ; preds = %3, %3
  %28 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %29 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %33 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %3, %3, %3
  %36 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %37 = getelementptr inbounds %struct.s2mpa01_info, %struct.s2mpa01_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %3, %35, %31, %27, %23, %19, %15
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %50 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %58, %59
  %61 = add i32 %53, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %68 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul i32 %71, %72
  %74 = add i32 %66, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @abs(i32 %77) #3
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @DIV_ROUND_UP(i32 %78, i32 %79)
  ret i32 %80
}

declare dso_local %struct.s2mpa01_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
