; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3_button.c_surface3_button_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3_button.c_surface3_button_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.surface3_button_info = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.gpio_keys_button = type { i32, i32, i64, i32, i32, i32 }
%struct.gpio_keys_platform_data = type { i32, i32, %struct.gpio_keys_button* }

@MAX_NBUTTONS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gpio-keys\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.i2c_client*, %struct.surface3_button_info*, i32)* @surface3_button_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @surface3_button_device_create(%struct.i2c_client* %0, %struct.surface3_button_info* %1, i32 %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.surface3_button_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.surface3_button_info*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.gpio_keys_button*, align 8
  %11 = alloca %struct.gpio_keys_platform_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.surface3_button_info* %1, %struct.surface3_button_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @MAX_NBUTTONS, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 32, %18
  %20 = add i64 16, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.gpio_keys_platform_data* @devm_kzalloc(i32* %16, i32 %21, i32 %22)
  store %struct.gpio_keys_platform_data* %23, %struct.gpio_keys_platform_data** %11, align 8
  %24 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %25 = icmp ne %struct.gpio_keys_platform_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.platform_device* @ERR_PTR(i32 %28)
  store %struct.platform_device* %29, %struct.platform_device** %4, align 8
  br label %159

30:                                               ; preds = %3
  %31 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %32 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %31, i64 1
  %33 = bitcast %struct.gpio_keys_platform_data* %32 to i8*
  %34 = bitcast i8* %33 to %struct.gpio_keys_button*
  store %struct.gpio_keys_button* %34, %struct.gpio_keys_button** %10, align 8
  %35 = load %struct.surface3_button_info*, %struct.surface3_button_info** %6, align 8
  store %struct.surface3_button_info* %35, %struct.surface3_button_info** %8, align 8
  br label %36

36:                                               ; preds = %108, %30
  %37 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %38 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %111

41:                                               ; preds = %36
  %42 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %43 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %108

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %52 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @surface3_button_lookup_gpio(i32* %50, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @gpio_is_valid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %108

59:                                               ; preds = %48
  %60 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %61 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %63, i64 %65
  %67 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %66, i32 0, i32 5
  store i32 %62, i32* %67, align 8
  %68 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %69 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %71, i64 %73
  %75 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %74, i32 0, i32 4
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %77, i64 %79
  %81 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 8
  %82 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %83 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %85, i64 %87
  %89 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %88, i32 0, i32 3
  store i32 %84, i32* %89, align 8
  %90 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %91 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %93, i64 %95
  %97 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %96, i32 0, i32 2
  store i64 %92, i64* %97, align 8
  %98 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %99 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %101, i64 %103
  %105 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %59, %58, %47
  %109 = load %struct.surface3_button_info*, %struct.surface3_button_info** %8, align 8
  %110 = getelementptr inbounds %struct.surface3_button_info, %struct.surface3_button_info* %109, i32 1
  store %struct.surface3_button_info* %110, %struct.surface3_button_info** %8, align 8
  br label %36

111:                                              ; preds = %36
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  br label %152

117:                                              ; preds = %111
  %118 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %10, align 8
  %119 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %120 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %119, i32 0, i32 2
  store %struct.gpio_keys_button* %118, %struct.gpio_keys_button** %120, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %123 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %126 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %128 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %127)
  store %struct.platform_device* %128, %struct.platform_device** %9, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %130 = icmp ne %struct.platform_device* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %117
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %152

134:                                              ; preds = %117
  %135 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %136 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %137 = call i32 @platform_device_add_data(%struct.platform_device* %135, %struct.gpio_keys_platform_data* %136, i32 16)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %149

141:                                              ; preds = %134
  %142 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %143 = call i32 @platform_device_add(%struct.platform_device* %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %149

147:                                              ; preds = %141
  %148 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %148, %struct.platform_device** %4, align 8
  br label %159

149:                                              ; preds = %146, %140
  %150 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %151 = call i32 @platform_device_put(%struct.platform_device* %150)
  br label %152

152:                                              ; preds = %149, %131, %114
  %153 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %11, align 8
  %156 = call i32 @devm_kfree(i32* %154, %struct.gpio_keys_platform_data* %155)
  %157 = load i32, i32* %14, align 4
  %158 = call %struct.platform_device* @ERR_PTR(i32 %157)
  store %struct.platform_device* %158, %struct.platform_device** %4, align 8
  br label %159

159:                                              ; preds = %152, %147, %26
  %160 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  ret %struct.platform_device* %160
}

declare dso_local %struct.gpio_keys_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local i32 @surface3_button_lookup_gpio(i32*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.gpio_keys_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.gpio_keys_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
