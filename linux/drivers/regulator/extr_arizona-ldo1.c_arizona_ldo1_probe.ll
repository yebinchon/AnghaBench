; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.arizona = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.arizona_ldo1 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arizona_ldo1_hc = common dso_local global %struct.regulator_desc zeroinitializer, align 4
@arizona_ldo1_dvfs = common dso_local global i32 0, align 4
@arizona_ldo1 = common dso_local global %struct.regulator_desc zeroinitializer, align 4
@arizona_ldo1_wm5110 = common dso_local global i32 0, align 4
@arizona_ldo1_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arizona_ldo1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_ldo1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.arizona_ldo1*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.arizona* @dev_get_drvdata(i32 %12)
  store %struct.arizona* %13, %struct.arizona** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.arizona_ldo1* @devm_kzalloc(%struct.TYPE_4__* %15, i32 8, i32 %16)
  store %struct.arizona_ldo1* %17, %struct.arizona_ldo1** %5, align 8
  %18 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %19 = icmp ne %struct.arizona_ldo1* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load %struct.arizona*, %struct.arizona** %4, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %28 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.arizona*, %struct.arizona** %4, align 8
  %30 = getelementptr inbounds %struct.arizona, %struct.arizona* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %40 [
    i32 132, label %32
    i32 129, label %32
    i32 128, label %32
    i32 133, label %32
    i32 131, label %36
    i32 130, label %36
  ]

32:                                               ; preds = %23, %23, %23, %23
  store %struct.regulator_desc* @arizona_ldo1_hc, %struct.regulator_desc** %6, align 8
  %33 = load i32, i32* @arizona_ldo1_dvfs, align 4
  %34 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %35 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %23, %23
  store %struct.regulator_desc* @arizona_ldo1, %struct.regulator_desc** %6, align 8
  %37 = load i32, i32* @arizona_ldo1_wm5110, align 4
  %38 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %39 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %23
  store %struct.regulator_desc* @arizona_ldo1, %struct.regulator_desc** %6, align 8
  %41 = load i32, i32* @arizona_ldo1_default, align 4
  %42 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %43 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %47 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %48 = load %struct.arizona*, %struct.arizona** %4, align 8
  %49 = getelementptr inbounds %struct.arizona, %struct.arizona* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @arizona_ldo1_common_init(%struct.platform_device* %45, %struct.arizona_ldo1* %46, %struct.regulator_desc* %47, i32* %50, i32* %7)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.arizona*, %struct.arizona** %4, align 8
  %57 = getelementptr inbounds %struct.arizona, %struct.arizona* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %44
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %20
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_ldo1* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @arizona_ldo1_common_init(%struct.platform_device*, %struct.arizona_ldo1*, %struct.regulator_desc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
