; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_set_voltage_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_set_voltage_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.s2mps11_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @s2mps11_regulator_set_voltage_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_regulator_set_voltage_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s2mps11_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.s2mps11_info* %13, %struct.s2mps11_info** %7, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %41 [
    i32 135, label %17
    i32 134, label %21
    i32 133, label %21
    i32 132, label %25
    i32 131, label %29
    i32 137, label %29
    i32 130, label %33
    i32 129, label %33
    i32 136, label %33
    i32 128, label %37
  ]

17:                                               ; preds = %3
  %18 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %19 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  br label %41

21:                                               ; preds = %3, %3
  %22 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %23 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %27 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %41

29:                                               ; preds = %3, %3
  %30 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %31 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %3, %3, %3
  %34 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %35 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %39 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %3, %33, %29, %25, %21, %17
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %57 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = mul i32 %60, %61
  %63 = add i32 %55, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %70 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul i32 %73, %74
  %76 = add i32 %68, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @abs(i32 %79) #3
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @DIV_ROUND_UP(i32 %80, i32 %81)
  ret i32 %82
}

declare dso_local %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

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
