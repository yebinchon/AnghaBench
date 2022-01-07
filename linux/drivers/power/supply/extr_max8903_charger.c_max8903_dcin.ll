; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_dcin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_dcin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8903_data = type { i32, i32, %struct.TYPE_2__, i64, i32, %struct.max8903_pdata* }
%struct.TYPE_2__ = type { i32 }
%struct.max8903_pdata = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TA(DC-IN) Charger %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8903_dcin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8903_dcin(i32 %0, i8* %1) #0 {
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
  %16 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %15, i32 0, i32 2
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
  br label %122

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %32 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %34 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %40 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = call i32 @gpio_set_value(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %49 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @gpio_is_valid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %55 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %67

60:                                               ; preds = %53
  %61 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %62 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  br label %67

67:                                               ; preds = %60, %59
  %68 = phi i32 [ 0, %59 ], [ %66, %60 ]
  %69 = call i32 @gpio_set_value(i32 %56, i32 %68)
  br label %70

70:                                               ; preds = %67, %47
  %71 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %72 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %80 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %9, align 4
  %83 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %84 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %70
  %88 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %89 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %90 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %108

92:                                               ; preds = %70
  %93 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %94 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %99 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %100 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %107

102:                                              ; preds = %92
  %103 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %104 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %105 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %87
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %111 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %117 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @power_supply_changed(i32 %118)
  br label %120

120:                                              ; preds = %115, %108
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %27
  %123 = load i32, i32* %3, align 4
  ret i32 %123
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
