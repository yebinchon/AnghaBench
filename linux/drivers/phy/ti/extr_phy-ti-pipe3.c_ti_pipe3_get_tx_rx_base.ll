; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_tx_rx_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_tx_rx_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i8*, i8*, %struct.device* }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.platform_device = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"phy_rx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"phy_tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_get_tx_rx_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_get_tx_rx_base(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %7 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %8 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %12, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %14, %struct.resource** %4, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = call i8* @devm_ioremap_resource(%struct.device* %15, %struct.resource* %16)
  %18 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %19 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %21 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %27 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %33, %struct.resource** %4, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = call i8* @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %38 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %40 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR_OR_ZERO(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
