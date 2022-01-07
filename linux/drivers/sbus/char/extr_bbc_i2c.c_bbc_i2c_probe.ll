; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bbc_i2c_bus = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bbc_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbc_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call %struct.bbc_i2c_bus* @attach_one_i2c(%struct.platform_device* %7, i32 %8)
  store %struct.bbc_i2c_bus* %9, %struct.bbc_i2c_bus** %4, align 8
  %10 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %11 = icmp ne %struct.bbc_i2c_bus* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %17 = call i32 @bbc_envctrl_init(%struct.bbc_i2c_bus* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.bbc_i2c_bus* %27)
  %29 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %30 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %39 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @of_iounmap(i32* %37, i64 %40, i32 1)
  br label %42

42:                                               ; preds = %33, %20
  %43 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %44 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %53 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @of_iounmap(i32* %51, i64 %54, i32 2)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %58 = call i32 @kfree(%struct.bbc_i2c_bus* %57)
  br label %64

59:                                               ; preds = %15
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %63 = call i32 @dev_set_drvdata(i32* %61, %struct.bbc_i2c_bus* %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.bbc_i2c_bus* @attach_one_i2c(%struct.platform_device*, i32) #1

declare dso_local i32 @bbc_envctrl_init(%struct.bbc_i2c_bus*) #1

declare dso_local i32 @free_irq(i32, %struct.bbc_i2c_bus*) #1

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.bbc_i2c_bus*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.bbc_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
