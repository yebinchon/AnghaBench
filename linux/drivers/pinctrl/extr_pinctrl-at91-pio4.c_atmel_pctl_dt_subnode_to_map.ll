; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pctl_dt_subnode_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pctl_dt_subnode_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%pOF: could not parse node property\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no pins found in node %pOF\0A\00", align 1
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*, i32*)* @atmel_pctl_dt_subnode_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pctl_dt_subnode_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.pinctrl_map**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.property*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = call %struct.property* @of_find_property(%struct.device_node* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %23, %struct.property** %16, align 8
  %24 = load %struct.property*, %struct.property** %16, align 8
  %25 = icmp ne %struct.property* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %131

29:                                               ; preds = %5
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %32 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %30, %struct.pinctrl_dev* %31, i64** %15, i32* %13)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %39)
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %6, align 4
  br label %131

42:                                               ; preds = %29
  %43 = load %struct.property*, %struct.property** %16, align 8
  %44 = getelementptr inbounds %struct.property, %struct.property* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %42
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %53 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.device_node*, %struct.device_node** %8, align 8
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %18, align 4
  br label %127

59:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %70 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev* %69, %struct.pinctrl_map** %70, i32* %71, i32* %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %127

78:                                               ; preds = %65
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %123, %78
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %79
  %84 = load %struct.device_node*, %struct.device_node** %8, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @of_property_read_u32_index(%struct.device_node* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %85, i32* %17)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %127

90:                                               ; preds = %83
  %91 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %92 = load %struct.device_node*, %struct.device_node** %8, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @atmel_pctl_xlate_pinfunc(%struct.pinctrl_dev* %91, %struct.device_node* %92, i32 %93, i8** %20, i8** %21)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %127

98:                                               ; preds = %90
  %99 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %100 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = call i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev* %99, %struct.pinctrl_map** %100, i32* %101, i32* %102, i8* %103, i8* %104)
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %98
  %109 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %110 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = load i64*, i64** %15, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  %117 = call i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev* %109, %struct.pinctrl_map** %110, i32* %111, i32* %112, i8* %113, i64* %114, i32 %115, i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %127

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %79

126:                                              ; preds = %79
  br label %127

127:                                              ; preds = %126, %120, %97, %89, %77, %51
  %128 = load i64*, i64** %15, align 8
  %129 = call i32 @kfree(i64* %128)
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %35, %26
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @atmel_pctl_xlate_pinfunc(%struct.pinctrl_dev*, %struct.device_node*, i32, i8**, i8**) #1

declare dso_local i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i8*, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
