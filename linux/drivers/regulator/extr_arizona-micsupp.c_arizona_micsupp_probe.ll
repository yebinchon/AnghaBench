; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_arizona_micsupp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_arizona_micsupp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.arizona = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.arizona_micsupp = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arizona_micsupp_ext = common dso_local global %struct.regulator_desc zeroinitializer, align 4
@arizona_micsupp_ext_default = common dso_local global i32 0, align 4
@arizona_micsupp = common dso_local global %struct.regulator_desc zeroinitializer, align 4
@arizona_micsupp_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arizona_micsupp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_micsupp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.arizona_micsupp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.arizona* @dev_get_drvdata(i32 %10)
  store %struct.arizona* %11, %struct.arizona** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.arizona_micsupp* @devm_kzalloc(%struct.TYPE_4__* %13, i32 24, i32 %14)
  store %struct.arizona_micsupp* %15, %struct.arizona_micsupp** %6, align 8
  %16 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %17 = icmp ne %struct.arizona_micsupp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.arizona*, %struct.arizona** %4, align 8
  %23 = getelementptr inbounds %struct.arizona, %struct.arizona* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %26 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.arizona*, %struct.arizona** %4, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 3
  %29 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %30 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.arizona*, %struct.arizona** %4, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %35 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.arizona*, %struct.arizona** %4, align 8
  %37 = getelementptr inbounds %struct.arizona, %struct.arizona* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %43 [
    i32 129, label %39
    i32 128, label %39
  ]

39:                                               ; preds = %21, %21
  store %struct.regulator_desc* @arizona_micsupp_ext, %struct.regulator_desc** %5, align 8
  %40 = load i32, i32* @arizona_micsupp_ext_default, align 4
  %41 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %42 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %47

43:                                               ; preds = %21
  store %struct.regulator_desc* @arizona_micsupp, %struct.regulator_desc** %5, align 8
  %44 = load i32, i32* @arizona_micsupp_default, align 4
  %45 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %46 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %6, align 8
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %51 = load %struct.arizona*, %struct.arizona** %4, align 8
  %52 = getelementptr inbounds %struct.arizona, %struct.arizona* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @arizona_micsupp_common_init(%struct.platform_device* %48, %struct.arizona_micsupp* %49, %struct.regulator_desc* %50, i32* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_micsupp* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @arizona_micsupp_common_init(%struct.platform_device*, %struct.arizona_micsupp*, %struct.regulator_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
