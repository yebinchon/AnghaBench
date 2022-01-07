; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rproc = type { %struct.st_rproc* }
%struct.st_rproc = type { i8*, i32, i8*, i32, i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"sw_reset\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get S/W Reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pwr_reset\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get Power Reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to get clock frequency\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Boot base not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Boot offset not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rproc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_parse_dt(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca %struct.st_rproc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.rproc* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.rproc* %12, %struct.rproc** %5, align 8
  %13 = load %struct.rproc*, %struct.rproc** %5, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 0
  %15 = load %struct.st_rproc*, %struct.st_rproc** %14, align 8
  store %struct.st_rproc* %15, %struct.st_rproc** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %20 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i8* @devm_reset_control_get_exclusive(%struct.device* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %29 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %31 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %39 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %38, i32 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %137

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %45 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i8* @devm_reset_control_get_exclusive(%struct.device* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %54 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %56 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %64 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %2, align 4
  br label %137

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i8* @devm_clk_get(%struct.device* %69, i32* null)
  %71 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %72 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %74 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %82 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %137

85:                                               ; preds = %68
  %86 = load %struct.device_node*, %struct.device_node** %7, align 8
  %87 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %88 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %87, i32 0, i32 3
  %89 = call i32 @of_property_read_u32(%struct.device_node* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %137

96:                                               ; preds = %85
  %97 = load %struct.device_node*, %struct.device_node** %7, align 8
  %98 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %99 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %100 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %102 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %109 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %110 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %2, align 4
  br label %137

113:                                              ; preds = %96
  %114 = load %struct.device_node*, %struct.device_node** %7, align 8
  %115 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %116 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %115, i32 0, i32 1
  %117 = call i32 @of_property_read_u32_index(%struct.device_node* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 1, i32* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %137

125:                                              ; preds = %113
  %126 = load %struct.st_rproc*, %struct.st_rproc** %6, align 8
  %127 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @clk_prepare(i8* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %125
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %120, %106, %92, %78, %60, %35
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.rproc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @clk_prepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
