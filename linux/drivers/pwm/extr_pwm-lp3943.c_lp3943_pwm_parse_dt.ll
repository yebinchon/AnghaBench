; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.lp3943_pwm = type { %struct.lp3943_platform_data* }
%struct.lp3943_platform_data = type { %struct.lp3943_pwm_map** }
%struct.lp3943_pwm_map = type { i32*, i32 }

@lp3943_pwm_parse_dt.name = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"ti,pwm0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ti,pwm1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LP3943_NUM_PWMS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.lp3943_pwm*)* @lp3943_pwm_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_parse_dt(%struct.device* %0, %struct.lp3943_pwm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lp3943_pwm*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.lp3943_platform_data*, align 8
  %8 = alloca %struct.lp3943_pwm_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.lp3943_pwm* %1, %struct.lp3943_pwm** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 8, i32 %25)
  %27 = bitcast i8* %26 to %struct.lp3943_platform_data*
  store %struct.lp3943_platform_data* %27, %struct.lp3943_platform_data** %7, align 8
  %28 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %7, align 8
  %29 = icmp ne %struct.lp3943_platform_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %104, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @LP3943_NUM_PWMS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* @lp3943_pwm_parse_dt.name, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @of_get_property(%struct.device_node* %39, i8* %43, i32* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %104

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %104

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @devm_kcalloc(%struct.device* %56, i32 %57, i32 4, i32 %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %117

65:                                               ; preds = %55
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* @lp3943_pwm_parse_dt.name, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @of_property_read_u32_array(%struct.device_node* %66, i8* %70, i32* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %3, align 4
  br label %117

78:                                               ; preds = %65
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @devm_kzalloc(%struct.device* %79, i32 16, i32 %80)
  %82 = bitcast i8* %81 to %struct.lp3943_pwm_map*
  store %struct.lp3943_pwm_map* %82, %struct.lp3943_pwm_map** %8, align 8
  %83 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %84 = icmp ne %struct.lp3943_pwm_map* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %117

88:                                               ; preds = %78
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %91 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %94 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %96 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %7, align 8
  %97 = getelementptr inbounds %struct.lp3943_platform_data, %struct.lp3943_platform_data* %96, i32 0, i32 0
  %98 = load %struct.lp3943_pwm_map**, %struct.lp3943_pwm_map*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %98, i64 %100
  store %struct.lp3943_pwm_map* %95, %struct.lp3943_pwm_map** %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %88, %54, %46
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %34

107:                                              ; preds = %34
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @ENODATA, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %117

113:                                              ; preds = %107
  %114 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %7, align 8
  %115 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %116 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %115, i32 0, i32 0
  store %struct.lp3943_platform_data* %114, %struct.lp3943_platform_data** %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %110, %85, %76, %62, %30, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
