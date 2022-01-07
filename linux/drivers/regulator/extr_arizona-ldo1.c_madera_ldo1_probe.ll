; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_madera_ldo1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_madera_ldo1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.madera = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.arizona_ldo1 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@madera_ldo1_default = common dso_local global i32 0, align 4
@madera_ldo1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @madera_ldo1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_ldo1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.arizona_ldo1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.arizona_ldo1* @devm_kzalloc(%struct.TYPE_4__* %14, i32 8, i32 %15)
  store %struct.arizona_ldo1* %16, %struct.arizona_ldo1** %5, align 8
  %17 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %18 = icmp ne %struct.arizona_ldo1* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.madera*, %struct.madera** %4, align 8
  %24 = getelementptr inbounds %struct.madera, %struct.madera* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %27 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @madera_ldo1_default, align 4
  %29 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %30 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %5, align 8
  %33 = load %struct.madera*, %struct.madera** %4, align 8
  %34 = getelementptr inbounds %struct.madera, %struct.madera* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @arizona_ldo1_common_init(%struct.platform_device* %31, %struct.arizona_ldo1* %32, i32* @madera_ldo1, i32* %35, i32* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.madera*, %struct.madera** %4, align 8
  %47 = getelementptr inbounds %struct.madera, %struct.madera* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %39, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_ldo1* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @arizona_ldo1_common_init(%struct.platform_device*, %struct.arizona_ldo1*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
