; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.bbc_i2c_bus = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bbc_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbc_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bbc_i2c_bus*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 2
  %6 = call %struct.bbc_i2c_bus* @dev_get_drvdata(i32* %5)
  store %struct.bbc_i2c_bus* %6, %struct.bbc_i2c_bus** %3, align 8
  %7 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %8 = call i32 @bbc_envctrl_cleanup(%struct.bbc_i2c_bus* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.bbc_i2c_bus* %15)
  %17 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %18 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %27 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @of_iounmap(i32* %25, i64 %28, i32 1)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %32 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %41 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @of_iounmap(i32* %39, i64 %42, i32 2)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %46 = call i32 @kfree(%struct.bbc_i2c_bus* %45)
  ret i32 0
}

declare dso_local %struct.bbc_i2c_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @bbc_envctrl_cleanup(%struct.bbc_i2c_bus*) #1

declare dso_local i32 @free_irq(i32, %struct.bbc_i2c_bus*) #1

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.bbc_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
