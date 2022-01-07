; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32)* }

@WILC_BUS_ACQUIRE_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fail read reg 0x1118\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"fail write reg 0x1118\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"fail write reg 0xc0000\0A\00", align 1
@WILC_BUS_RELEASE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chip(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %8)
  store %struct.wilc_vif* %9, %struct.wilc_vif** %6, align 8
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 0
  %12 = load %struct.wilc*, %struct.wilc** %11, align 8
  store %struct.wilc* %12, %struct.wilc** %7, align 8
  %13 = load %struct.wilc*, %struct.wilc** %7, align 8
  %14 = load i32, i32* @WILC_BUS_ACQUIRE_ONLY, align 4
  %15 = call i32 @acquire_bus(%struct.wilc* %13, i32 %14)
  %16 = load %struct.wilc*, %struct.wilc** %7, align 8
  %17 = call i32 @wilc_get_chipid(%struct.wilc* %16, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 4095
  %20 = icmp ne i32 %19, 160
  br i1 %20, label %21, label %65

21:                                               ; preds = %1
  %22 = load %struct.wilc*, %struct.wilc** %7, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32*)** %25, align 8
  %27 = load %struct.wilc*, %struct.wilc** %7, align 8
  %28 = call i32 %26(%struct.wilc* %27, i32 4376, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

34:                                               ; preds = %21
  %35 = call i32 @BIT(i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.wilc*, %struct.wilc** %7, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.wilc*, i32, i32)*, i32 (%struct.wilc*, i32, i32)** %41, align 8
  %43 = load %struct.wilc*, %struct.wilc** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %42(%struct.wilc* %43, i32 4376, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %66

51:                                               ; preds = %34
  %52 = load %struct.wilc*, %struct.wilc** %7, align 8
  %53 = getelementptr inbounds %struct.wilc, %struct.wilc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.wilc*, i32, i32)*, i32 (%struct.wilc*, i32, i32)** %55, align 8
  %57 = load %struct.wilc*, %struct.wilc** %7, align 8
  %58 = call i32 %56(%struct.wilc* %57, i32 786432, i32 113)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %66

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %1
  br label %66

66:                                               ; preds = %65, %61, %48, %31
  %67 = load %struct.wilc*, %struct.wilc** %7, align 8
  %68 = load i32, i32* @WILC_BUS_RELEASE_ONLY, align 4
  %69 = call i32 @release_bus(%struct.wilc* %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @acquire_bus(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_get_chipid(%struct.wilc*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @release_bus(%struct.wilc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
