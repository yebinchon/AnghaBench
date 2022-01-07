; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_madera_micsupp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_madera_micsupp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.madera = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.arizona_micsupp = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arizona_micsupp_ext_default = common dso_local global i32 0, align 4
@madera_micsupp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @madera_micsupp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_micsupp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.arizona_micsupp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.madera* @dev_get_drvdata(i32 %9)
  store %struct.madera* %10, %struct.madera** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.arizona_micsupp* @devm_kzalloc(%struct.TYPE_4__* %12, i32 24, i32 %13)
  store %struct.arizona_micsupp* %14, %struct.arizona_micsupp** %5, align 8
  %15 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %16 = icmp ne %struct.arizona_micsupp* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.madera*, %struct.madera** %4, align 8
  %22 = getelementptr inbounds %struct.madera, %struct.madera* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %25 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.madera*, %struct.madera** %4, align 8
  %27 = getelementptr inbounds %struct.madera, %struct.madera* %26, i32 0, i32 2
  %28 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %29 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.madera*, %struct.madera** %4, align 8
  %31 = getelementptr inbounds %struct.madera, %struct.madera* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %34 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @arizona_micsupp_ext_default, align 4
  %36 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %37 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %5, align 8
  %40 = load %struct.madera*, %struct.madera** %4, align 8
  %41 = getelementptr inbounds %struct.madera, %struct.madera* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @arizona_micsupp_common_init(%struct.platform_device* %38, %struct.arizona_micsupp* %39, i32* @madera_micsupp, i32* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %20, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_micsupp* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @arizona_micsupp_common_init(%struct.platform_device*, %struct.arizona_micsupp*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
