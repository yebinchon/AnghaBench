; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinctrl_parse_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinctrl_parse_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { i8* }
%struct.mxs_pinctrl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mxs_group* }
%struct.mxs_group = type { i8*, i32, i32*, i32* }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fsl,pinmux-ids\00", align 1
@SUFFIX_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*, i32, i8**)* @mxs_pinctrl_parse_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_pinctrl_parse_group(%struct.platform_device* %0, %struct.device_node* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.mxs_pinctrl_data*, align 8
  %11 = alloca %struct.mxs_group*, align 8
  %12 = alloca %struct.property*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %19 = call %struct.mxs_pinctrl_data* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.mxs_pinctrl_data* %19, %struct.mxs_pinctrl_data** %10, align 8
  %20 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %10, align 8
  %21 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mxs_group*, %struct.mxs_group** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %24, i64 %26
  store %struct.mxs_group* %27, %struct.mxs_group** %11, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @SUFFIX_LEN, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kzalloc(i32* %35, i32 %36, i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %174

44:                                               ; preds = %4
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = call i64 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = getelementptr inbounds %struct.device_node, %struct.device_node* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %63

55:                                               ; preds = %44
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %66 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %7, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call %struct.property* @of_find_property(%struct.device_node* %67, i8* %68, i32* %15)
  store %struct.property* %69, %struct.property** %12, align 8
  %70 = load %struct.property*, %struct.property** %12, align 8
  %71 = icmp ne %struct.property* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %174

75:                                               ; preds = %63
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = udiv i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %81 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %85 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kcalloc(i32* %83, i32 %86, i32 4, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %91 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %93 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %174

99:                                               ; preds = %75
  %100 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %103 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @devm_kcalloc(i32* %101, i32 %104, i32 4, i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %109 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %108, i32 0, i32 3
  store i32* %107, i32** %109, align 8
  %110 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %111 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %174

117:                                              ; preds = %99
  %118 = load %struct.device_node*, %struct.device_node** %7, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %121 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %124 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @of_property_read_u32_array(%struct.device_node* %118, i8* %119, i32* %122, i32 %125)
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %162, %117
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %130 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %135 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @MUXID_TO_MUXSEL(i32 %140)
  %142 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %143 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %149 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @MUXID_TO_PINID(i32 %154)
  %156 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %157 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %133
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %127

165:                                              ; preds = %127
  %166 = load i8**, i8*** %9, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.mxs_group*, %struct.mxs_group** %11, align 8
  %170 = getelementptr inbounds %struct.mxs_group, %struct.mxs_group* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8**, i8*** %9, align 8
  store i8* %171, i8** %172, align 8
  br label %173

173:                                              ; preds = %168, %165
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %114, %96, %72, %41
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.mxs_pinctrl_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @MUXID_TO_MUXSEL(i32) #1

declare dso_local i32 @MUXID_TO_PINID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
