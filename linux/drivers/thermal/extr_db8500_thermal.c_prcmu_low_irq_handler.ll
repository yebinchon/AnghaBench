; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_prcmu_low_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_prcmu_low_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db8500_thermal_zone = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@db8500_thermal_points = common dso_local global i64* null, align 8
@PRCMU_DEFAULT_LOW_TEMP = common dso_local global i64 0, align 8
@THERMAL_TREND_DROPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PRCMU set max %ld, min %ld\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @prcmu_low_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcmu_low_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.db8500_thermal_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.db8500_thermal_zone*
  store %struct.db8500_thermal_zone* %11, %struct.db8500_thermal_zone** %6, align 8
  %12 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %13 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64*, i64** @db8500_thermal_points, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* @PRCMU_DEFAULT_LOW_TEMP, align 8
  store i64 %26, i64* %8, align 8
  br label %40

27:                                               ; preds = %19
  %28 = load i64*, i64** @db8500_thermal_points, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64*, i64** @db8500_thermal_points, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 2
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %27, %22
  %41 = load i32, i32* %7, align 4
  %42 = sub i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @THERMAL_TREND_DROPPING, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone* %43, i32 %44, i32 %45, i64 %46, i64 %47)
  %49 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %50 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %6, align 8
  %57 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %60 = call i32 @thermal_zone_device_update(%struct.TYPE_2__* %58, i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %40, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone*, i32, i32, i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

declare dso_local i32 @thermal_zone_device_update(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
