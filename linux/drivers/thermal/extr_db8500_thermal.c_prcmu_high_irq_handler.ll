; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_prcmu_high_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_prcmu_high_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db8500_thermal_zone = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@db8500_thermal_points = common dso_local global i32* null, align 8
@THERMAL_TREND_RAISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PRCMU set max %ld, min %ld\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @prcmu_high_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcmu_high_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.db8500_thermal_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.db8500_thermal_zone*
  store %struct.db8500_thermal_zone* %11, %struct.db8500_thermal_zone** %5, align 8
  %12 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %5, align 8
  %13 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** @db8500_thermal_points, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load i32*, i32** @db8500_thermal_points, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i32*, i32** @db8500_thermal_points, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone* %37, i32 %38, i32 %39, i64 %40, i64 %41)
  %43 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %5, align 8
  %44 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48)
  br label %65

50:                                               ; preds = %2
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32*, i32** @db8500_thermal_points, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %5, align 8
  %63 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %50
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %5, align 8
  %67 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %70 = call i32 @thermal_zone_device_update(%struct.TYPE_2__* %68, i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone*, i32, i32, i64, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i32 @thermal_zone_device_update(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
