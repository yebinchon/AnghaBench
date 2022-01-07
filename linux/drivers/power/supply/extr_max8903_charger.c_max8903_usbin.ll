; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_usbin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_usbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8903_data = type { i32, i32, %struct.TYPE_2__, i64, i32, %struct.max8903_pdata* }
%struct.TYPE_2__ = type { i32 }
%struct.max8903_pdata = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"USB Charger %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8903_usbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8903_usbin(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.max8903_data*, align 8
  %7 = alloca %struct.max8903_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.max8903_data*
  store %struct.max8903_data* %11, %struct.max8903_data** %6, align 8
  %12 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %13 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %12, i32 0, i32 5
  %14 = load %struct.max8903_pdata*, %struct.max8903_pdata** %13, align 8
  store %struct.max8903_pdata* %14, %struct.max8903_pdata** %7, align 8
  %15 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %16 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gpio_get_value(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %24 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %32 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %34 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %40 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %38
  %46 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %47 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  br label %52

52:                                               ; preds = %45, %44
  %53 = phi i32 [ 0, %44 ], [ %51, %45 ]
  %54 = call i32 @gpio_set_value(i32 %41, i32 %53)
  br label %55

55:                                               ; preds = %52, %29
  %56 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %57 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %65 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  %68 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %69 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %74 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %75 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %93

77:                                               ; preds = %55
  %78 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %79 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %84 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %85 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %89 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %90 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %96 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %102 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @power_supply_changed(i32 %103)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %27
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
