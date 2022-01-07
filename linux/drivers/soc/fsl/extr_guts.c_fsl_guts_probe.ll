; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_guts.c_fsl_guts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_guts.c_fsl_guts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.fsl_soc_die_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@guts = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@root = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@soc_dev_attr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@fsl_soc_die = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"QorIQ %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"QorIQ\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"svr:0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@soc_dev = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Machine: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"SoC family: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SoC ID: %s, Revision: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_guts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_guts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.fsl_soc_die_attr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_6__* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** @guts, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @guts, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %124

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i32 @of_property_read_bool(%struct.device_node* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @guts, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %6, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i32 @devm_ioremap_resource(%struct.device* %32, %struct.resource* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @guts, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @guts, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @guts, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %124

47:                                               ; preds = %24
  %48 = call i32 @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* @root, align 4
  %49 = load i32, i32* @root, align 4
  %50 = call i64 @of_property_read_string(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @root, align 4
  %54 = call i32 @of_property_read_string_index(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i8** %8)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 0), align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 (...) @fsl_guts_get_svr()
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @fsl_soc_die, align 4
  %64 = call %struct.fsl_soc_die_attr* @fsl_soc_die_match(i32 %62, i32 %63)
  store %struct.fsl_soc_die_attr* %64, %struct.fsl_soc_die_attr** %7, align 8
  %65 = load %struct.fsl_soc_die_attr*, %struct.fsl_soc_die_attr** %7, align 8
  %66 = icmp ne %struct.fsl_soc_die_attr* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load %struct.fsl_soc_die_attr*, %struct.fsl_soc_die_attr** %7, align 8
  %71 = getelementptr inbounds %struct.fsl_soc_die_attr, %struct.fsl_soc_die_attr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %68, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 3), align 8
  br label %78

74:                                               ; preds = %60
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 3), align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 3), align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %124

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %85, i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  store i8* %88, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 2), align 8
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 2), align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %124

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 15
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 15
  %102 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %95, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %101)
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 1), align 8
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 1), align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %124

108:                                              ; preds = %94
  %109 = call i32 @soc_device_register(%struct.TYPE_5__* @soc_dev_attr)
  store i32 %109, i32* @soc_dev, align 4
  %110 = load i32, i32* @soc_dev, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @soc_dev, align 4
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %124

116:                                              ; preds = %108
  %117 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 0), align 8
  %118 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 3), align 8
  %120 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 2), align 8
  %122 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_dev_attr, i32 0, i32 1), align 8
  %123 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %121, i8* %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %116, %113, %105, %91, %81, %42, %21
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_6__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_find_node_by_path(i8*) #1

declare dso_local i64 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @fsl_guts_get_svr(...) #1

declare dso_local %struct.fsl_soc_die_attr* @fsl_soc_die_match(i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, ...) #1

declare dso_local i32 @soc_device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
