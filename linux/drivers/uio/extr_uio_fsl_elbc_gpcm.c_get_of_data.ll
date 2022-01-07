; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_get_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_get_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_elbc_gpcm = type { i8*, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to get resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get bank number\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"elbc-gpcm-br\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"missing elbc-gpcm-br value\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"elbc-gpcm-or\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"missing elbc-gpcm-or value\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"uio_name\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"eLBC_GPCM\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_elbc_gpcm*, %struct.device_node*, %struct.resource*, i32*, i32*, i32*, i8**)* @get_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_of_data(%struct.fsl_elbc_gpcm* %0, %struct.device_node* %1, %struct.resource* %2, i32* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_elbc_gpcm*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.fsl_elbc_gpcm* %0, %struct.fsl_elbc_gpcm** %9, align 8
  store %struct.device_node* %1, %struct.device_node** %10, align 8
  store %struct.resource* %2, %struct.resource** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load %struct.device_node*, %struct.device_node** %10, align 8
  %20 = load %struct.resource*, %struct.resource** %11, align 8
  %21 = call i32 @of_address_to_resource(%struct.device_node* %19, i32 0, %struct.resource* %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %26 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %8, align 4
  br label %109

30:                                               ; preds = %7
  %31 = load %struct.device_node*, %struct.device_node** %10, align 8
  %32 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %33 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %32, i32 0, i32 2
  %34 = call i32 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %39 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %8, align 4
  br label %109

43:                                               ; preds = %30
  %44 = load %struct.device_node*, %struct.device_node** %10, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %51 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %109

55:                                               ; preds = %43
  %56 = load %struct.device_node*, %struct.device_node** %10, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %63 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %8, align 4
  br label %109

67:                                               ; preds = %55
  %68 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %69 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.device_node*, %struct.device_node** %10, align 8
  %71 = call i64 @of_property_read_string(%struct.device_node* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %17)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @setup_periph(%struct.fsl_elbc_gpcm* %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.device_node*, %struct.device_node** %10, align 8
  %79 = call i32 @irq_of_parse_and_map(%struct.device_node* %78, i32 0)
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %9, align 8
  %82 = load %struct.resource*, %struct.resource** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @check_of_data(%struct.fsl_elbc_gpcm* %81, %struct.resource* %82, i32 %84, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %8, align 4
  br label %109

92:                                               ; preds = %77
  %93 = load %struct.device_node*, %struct.device_node** %10, align 8
  %94 = call i64 @of_property_read_string(%struct.device_node* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %16)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kstrdup(i8* %98, i32 %99)
  %101 = load i8**, i8*** %15, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %15, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %109

108:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %105, %90, %61, %49, %37, %24
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @setup_periph(%struct.fsl_elbc_gpcm*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @check_of_data(%struct.fsl_elbc_gpcm*, %struct.resource*, i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
