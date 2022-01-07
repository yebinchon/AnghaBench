; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_configure_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_configure_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.rockchip_thermal_data = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"rockchip,hw-tshut-temp\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Missing tshut temp property, using default %d\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid tshut temperature specified: %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"rockchip,hw-tshut-mode\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Missing tshut mode property, using default (%s)\0A\00", align 1
@TSHUT_MODE_GPIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cru\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid tshut mode specified: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"rockchip,hw-tshut-polarity\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Missing tshut-polarity property, using default (%s)\0A\00", align 1
@TSHUT_LOW_ACTIVE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Invalid tshut-polarity specified: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.rockchip_thermal_data*)* @rockchip_configure_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_configure_from_dt(%struct.device* %0, %struct.device_node* %1, %struct.rockchip_thermal_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rockchip_thermal_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.rockchip_thermal_data* %2, %struct.rockchip_thermal_data** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i64 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %17 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %23 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %28 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  br label %43

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @INT_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @ERANGE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %143

39:                                               ; preds = %29
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %42 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %14
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = call i64 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %50 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSHUT_MODE_GPIO, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %58 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %60 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %66 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %72

67:                                               ; preds = %43
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %71 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %47
  %73 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %74 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %80 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %143

86:                                               ; preds = %72
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = call i64 @of_property_read_u32(%struct.device_node* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64* %10)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %93 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TSHUT_LOW_ACTIVE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %101 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %91, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %100)
  %102 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %103 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %109 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %115

110:                                              ; preds = %86
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %114 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %90
  %116 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %117 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %123 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %143

129:                                              ; preds = %115
  %130 = load %struct.device_node*, %struct.device_node** %6, align 8
  %131 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %132 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %133 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %7, align 8
  %135 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @IS_ERR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %129
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %120, %77, %33
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
