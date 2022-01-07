; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_dt_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_dt_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_map = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.pinctrl_map* }
%struct.TYPE_4__ = type { %struct.pinctrl_map* }

@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i64 0, align 8
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_map*, i32)* @mxs_dt_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_dt_free_map(%struct.pinctrl_dev* %0, %struct.pinctrl_map* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_map* %1, %struct.pinctrl_map** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %13, i64 %15
  %17 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PIN_MAP_TYPE_MUX_GROUP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %22, i64 %24
  %26 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.pinctrl_map*, %struct.pinctrl_map** %28, align 8
  %30 = call i32 @kfree(%struct.pinctrl_map* %29)
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %32, i64 %34
  %36 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PIN_MAP_TYPE_CONFIGS_GROUP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %41, i64 %43
  %45 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.pinctrl_map*, %struct.pinctrl_map** %47, align 8
  %49 = call i32 @kfree(%struct.pinctrl_map* %48)
  br label %50

50:                                               ; preds = %40, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load %struct.pinctrl_map*, %struct.pinctrl_map** %5, align 8
  %56 = call i32 @kfree(%struct.pinctrl_map* %55)
  ret void
}

declare dso_local i32 @kfree(%struct.pinctrl_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
