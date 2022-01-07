; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.simplefb_params = type { %struct.TYPE_4__*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't parse width property\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't parse height property\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't parse stride property\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Can't parse format property\0A\00", align 1
@simplefb_formats = common dso_local global %struct.TYPE_4__* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid format value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.simplefb_params*)* @simplefb_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplefb_parse_dt(%struct.platform_device* %0, %struct.simplefb_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.simplefb_params*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.simplefb_params* %1, %struct.simplefb_params** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %16 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %15, i32 0, i32 3
  %17 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %28 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %27, i32 0, i32 2
  %29 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %100

37:                                               ; preds = %25
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %40 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %39, i32 0, i32 1
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %100

49:                                               ; preds = %37
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i32 @of_property_read_string(%struct.device_node* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %49
  %60 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %61 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %60, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %61, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %85, %59
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @simplefb_formats, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @simplefb_formats, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @strcmp(i8* %68, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %85

78:                                               ; preds = %67
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @simplefb_formats, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %84 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %83, i32 0, i32 0
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  br label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %62

88:                                               ; preds = %78, %62
  %89 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %90 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = icmp ne %struct.TYPE_4__* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(%struct.TYPE_5__* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %93, %54, %44, %32, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
