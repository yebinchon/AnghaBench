; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds278x_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds278x_info*, i32*)* @ds278x_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds278x_get_status(%struct.ds278x_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds278x_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ds278x_info* %0, %struct.ds278x_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %10 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ds278x_info*, i32*)**
  %14 = load i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)** %13, align 8
  %15 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %16 = call i32 %14(%struct.ds278x_info* %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %23 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = bitcast {}** %25 to i32 (%struct.ds278x_info*, i32*)**
  %27 = load i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)** %26, align 8
  %28 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %29 = call i32 %27(%struct.ds278x_info* %28, i32* %8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %37 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %60

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %40
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %32, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
