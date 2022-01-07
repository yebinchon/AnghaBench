; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32)* }
%struct.wilc_vif = type { i32 }

@WILC_BUS_ACQUIRE_AND_WAKEUP = common dso_local global i32 0, align 4
@WILC_GP_REG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error while reading reg\0A\00", align 1
@WILC_BUS_RELEASE_ALLOW_SLEEP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WILC_ABORT_REQ_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error while writing reg\0A\00", align 1
@WILC_FW_HOST_COMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_stop(%struct.wilc* %0, %struct.wilc_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store %struct.wilc_vif* %1, %struct.wilc_vif** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.wilc*, %struct.wilc** %4, align 8
  %9 = load i32, i32* @WILC_BUS_ACQUIRE_AND_WAKEUP, align 4
  %10 = call i32 @acquire_bus(%struct.wilc* %8, i32 %9)
  %11 = load %struct.wilc*, %struct.wilc** %4, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32*)** %14, align 8
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = load i32, i32* @WILC_GP_REG_0, align 4
  %18 = call i32 %15(%struct.wilc* %16, i32 %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %23 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.wilc*, %struct.wilc** %4, align 8
  %27 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %28 = call i32 @release_bus(%struct.wilc* %26, i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %2
  %32 = load %struct.wilc*, %struct.wilc** %4, align 8
  %33 = getelementptr inbounds %struct.wilc, %struct.wilc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.wilc*, i32, i32)*, i32 (%struct.wilc*, i32, i32)** %35, align 8
  %37 = load %struct.wilc*, %struct.wilc** %4, align 8
  %38 = load i32, i32* @WILC_GP_REG_0, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WILC_ABORT_REQ_BIT, align 4
  %41 = or i32 %39, %40
  %42 = call i32 %36(%struct.wilc* %37, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %31
  %46 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %47 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.wilc*, %struct.wilc** %4, align 8
  %51 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %52 = call i32 @release_bus(%struct.wilc* %50, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %31
  %56 = load %struct.wilc*, %struct.wilc** %4, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32*)** %59, align 8
  %61 = load %struct.wilc*, %struct.wilc** %4, align 8
  %62 = load i32, i32* @WILC_FW_HOST_COMM, align 4
  %63 = call i32 %60(%struct.wilc* %61, i32 %62, i32* %6)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %55
  %67 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %68 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netdev_err(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.wilc*, %struct.wilc** %4, align 8
  %72 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %73 = call i32 @release_bus(%struct.wilc* %71, i32 %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %55
  %77 = call i32 @BIT(i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.wilc*, %struct.wilc** %4, align 8
  %79 = getelementptr inbounds %struct.wilc, %struct.wilc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.wilc*, i32, i32)*, i32 (%struct.wilc*, i32, i32)** %81, align 8
  %83 = load %struct.wilc*, %struct.wilc** %4, align 8
  %84 = load i32, i32* @WILC_FW_HOST_COMM, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 %82(%struct.wilc* %83, i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %76
  %90 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %91 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @netdev_err(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.wilc*, %struct.wilc** %4, align 8
  %95 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %96 = call i32 @release_bus(%struct.wilc* %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %76
  %100 = load %struct.wilc*, %struct.wilc** %4, align 8
  %101 = load i32, i32* @WILC_BUS_RELEASE_ALLOW_SLEEP, align 4
  %102 = call i32 @release_bus(%struct.wilc* %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %89, %66, %45, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @acquire_bus(%struct.wilc*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @release_bus(%struct.wilc*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
