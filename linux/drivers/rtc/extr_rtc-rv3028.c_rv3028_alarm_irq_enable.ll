; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rv3028_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RV3028_CTRL2_UIE = common dso_local global i32 0, align 4
@RV3028_CTRL2_AIE = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_AF = common dso_local global i32 0, align 4
@RV3028_STATUS_UF = common dso_local global i32 0, align 4
@RV3028_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rv3028_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.rv3028_data* %10, %struct.rv3028_data** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %15 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %27 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %25
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %40 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RV3028_STATUS, align 4
  %43 = load i32, i32* @RV3028_STATUS_AF, align 4
  %44 = load i32, i32* @RV3028_STATUS_UF, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %38
  %52 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %53 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RV3028_CTRL2, align 4
  %56 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %57 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %49
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
