; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_bmdata.c_ab8500_bm_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_bmdata.c_ab8500_bm_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batres_vs_temp = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.batres_vs_temp* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.abx500_bm_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"battery node or reference missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"stericsson,battery-type\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"missing property battery-name/type\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LION\00", align 1
@BATTERY_UNKNOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"thermistor-on-batctrl\00", align 1
@temp_to_batres_tbl_9100 = common dso_local global %struct.batres_vs_temp* null, align 8
@temp_to_batres_tbl_thermistor = common dso_local global %struct.batres_vs_temp* null, align 8
@bat_type_ext_thermistor = common dso_local global %struct.TYPE_2__* null, align 8
@ABx500_ADC_THERM_BATTEMP = common dso_local global i32 0, align 4
@temp_to_batres_tbl_ext_thermistor = common dso_local global %struct.batres_vs_temp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab8500_bm_of_probe(%struct.device* %0, %struct.device_node* %1, %struct.abx500_bm_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.abx500_bm_data*, align 8
  %8 = alloca %struct.batres_vs_temp*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.abx500_bm_data* %2, %struct.abx500_bm_data** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %13, %struct.device_node** %9, align 8
  %14 = load %struct.device_node*, %struct.device_node** %9, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %117

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %9, align 8
  %23 = call i8* @of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %117

33:                                               ; preds = %21
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  %38 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %39 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %41 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %43 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 2600, i32* %47, align 8
  %48 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %49 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 4150, i32* %53, align 4
  %54 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %55 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 95, i32* %59, align 8
  %60 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %61 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 520, i32* %65, align 4
  %66 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %67 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @BATTERY_UNKNOWN, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  store i32 4200, i32* %71, align 8
  br label %72

72:                                               ; preds = %37, %33
  %73 = load %struct.device_node*, %struct.device_node** %9, align 8
  %74 = call i64 @of_property_read_bool(%struct.device_node* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load %struct.batres_vs_temp*, %struct.batres_vs_temp** @temp_to_batres_tbl_9100, align 8
  store %struct.batres_vs_temp* %81, %struct.batres_vs_temp** %8, align 8
  br label %84

82:                                               ; preds = %76
  %83 = load %struct.batres_vs_temp*, %struct.batres_vs_temp** @temp_to_batres_tbl_thermistor, align 8
  store %struct.batres_vs_temp* %83, %struct.batres_vs_temp** %8, align 8
  br label %84

84:                                               ; preds = %82, %80
  br label %95

85:                                               ; preds = %72
  %86 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %87 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %86, i32 0, i32 2
  store i32 4, i32* %87, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bat_type_ext_thermistor, align 8
  %89 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %90 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %89, i32 0, i32 3
  store %struct.TYPE_2__* %88, %struct.TYPE_2__** %90, align 8
  %91 = load i32, i32* @ABx500_ADC_THERM_BATTEMP, align 4
  %92 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %93 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.batres_vs_temp*, %struct.batres_vs_temp** @temp_to_batres_tbl_ext_thermistor, align 8
  store %struct.batres_vs_temp* %94, %struct.batres_vs_temp** %8, align 8
  br label %95

95:                                               ; preds = %85, %84
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %99 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load %struct.batres_vs_temp*, %struct.batres_vs_temp** %8, align 8
  %104 = load %struct.abx500_bm_data*, %struct.abx500_bm_data** %7, align 8
  %105 = getelementptr inbounds %struct.abx500_bm_data, %struct.abx500_bm_data* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  store %struct.batres_vs_temp* %103, %struct.batres_vs_temp** %110, align 8
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load %struct.device_node*, %struct.device_node** %9, align 8
  %116 = call i32 @of_node_put(%struct.device_node* %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %26, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
