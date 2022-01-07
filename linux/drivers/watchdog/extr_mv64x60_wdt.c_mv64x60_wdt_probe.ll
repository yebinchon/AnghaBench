; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv64x60_wdt_pdata = type { i32, i32 }
%struct.resource = type { i32 }

@bus_clk = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mv64x60_wdt_regs = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mv64x60_wdt_miscdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv64x60_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv64x60_wdt_pdata*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.mv64x60_wdt_pdata* @dev_get_platdata(i32* %8)
  store %struct.mv64x60_wdt_pdata* %9, %struct.mv64x60_wdt_pdata** %4, align 8
  store i32 10, i32* %6, align 4
  store i32 133, i32* @bus_clk, align 4
  %10 = load %struct.mv64x60_wdt_pdata*, %struct.mv64x60_wdt_pdata** %4, align 8
  %11 = icmp ne %struct.mv64x60_wdt_pdata* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mv64x60_wdt_pdata*, %struct.mv64x60_wdt_pdata** %4, align 8
  %14 = getelementptr inbounds %struct.mv64x60_wdt_pdata, %struct.mv64x60_wdt_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mv64x60_wdt_pdata*, %struct.mv64x60_wdt_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.mv64x60_wdt_pdata, %struct.mv64x60_wdt_pdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @bus_clk, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @bus_clk, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @bus_clk, align 4
  %22 = load i32, i32* @bus_clk, align 4
  %23 = mul nsw i32 %22, 1000000
  store i32 %23, i32* @bus_clk, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %51

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i32* @devm_ioremap(i32* %34, i32 %37, i32 %39)
  store i32* %40, i32** @mv64x60_wdt_regs, align 8
  %41 = load i32*, i32** @mv64x60_wdt_regs, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mv64x60_wdt_set_timeout(i32 %47)
  %49 = call i32 (...) @mv64x60_wdt_handler_disable()
  %50 = call i32 @misc_register(i32* @mv64x60_wdt_miscdev)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %43, %29
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mv64x60_wdt_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mv64x60_wdt_set_timeout(i32) #1

declare dso_local i32 @mv64x60_wdt_handler_disable(...) #1

declare dso_local i32 @misc_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
