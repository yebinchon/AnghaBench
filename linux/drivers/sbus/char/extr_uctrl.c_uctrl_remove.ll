; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_uctrl.c_uctrl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_uctrl.c_uctrl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, i32 }
%struct.uctrl_driver = type { i32, i32 }

@uctrl_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uctrl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uctrl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uctrl_driver*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 1
  %6 = call %struct.uctrl_driver* @dev_get_drvdata(i32* %5)
  store %struct.uctrl_driver* %6, %struct.uctrl_driver** %3, align 8
  %7 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %8 = icmp ne %struct.uctrl_driver* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = call i32 @misc_deregister(i32* @uctrl_dev)
  %11 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %12 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.uctrl_driver* %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %21 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @resource_size(i32* %26)
  %28 = call i32 @of_iounmap(i32* %19, i32 %22, i32 %27)
  %29 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %30 = call i32 @kfree(%struct.uctrl_driver* %29)
  br label %31

31:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.uctrl_driver* @dev_get_drvdata(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.uctrl_driver*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @kfree(%struct.uctrl_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
