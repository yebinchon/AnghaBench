; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_core.c_wilco_ec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_core.c_wilco_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wilco_ec_device = type { i32, i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i8*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_MAILBOX_DATA_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wilco-ec-debugfs\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rtc-wilco-ec\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to create RTC platform device\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to create sysfs entries: %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"wilco_telem\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to create telemetry platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wilco_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_ec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wilco_ec_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(%struct.device* %9, i32 80, i32 %10)
  %12 = bitcast i8* %11 to %struct.wilco_ec_device*
  store %struct.wilco_ec_device* %12, %struct.wilco_ec_device** %5, align 8
  %13 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %14 = icmp ne %struct.wilco_ec_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %166

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.wilco_ec_device* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %24 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %23, i32 0, i32 9
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %26 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %25, i32 0, i32 8
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load i32, i32* @EC_MAILBOX_DATA_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %33 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %36 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.device* %34, i32 %37, i32 %38)
  %40 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %41 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %43 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %18
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %166

49:                                               ; preds = %18
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i8* @wilco_get_resource(%struct.platform_device* %50, i32 0)
  %52 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %53 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i8* @wilco_get_resource(%struct.platform_device* %54, i32 1)
  %56 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %57 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i8* @wilco_get_resource(%struct.platform_device* %58, i32 2)
  %60 = bitcast i8* %59 to %struct.TYPE_2__*
  %61 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %62 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %61, i32 0, i32 4
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %62, align 8
  %63 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %64 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %49
  %68 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %69 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %74 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72, %67, %49
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %166

80:                                               ; preds = %72
  %81 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %82 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %87 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EC_MAILBOX_DATA_SIZE, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @cros_ec_lpc_mec_init(i32 %85, i32 %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %96 = call i8* @platform_device_register_data(%struct.device* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %95, %struct.wilco_ec_device* null, i32 0)
  %97 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %98 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %101 = call i8* @platform_device_register_data(%struct.device* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %100, %struct.wilco_ec_device* null, i32 0)
  %102 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %103 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %105 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %80
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %113 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %6, align 4
  br label %153

116:                                              ; preds = %80
  %117 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %118 = call i32 @wilco_ec_add_sysfs(%struct.wilco_ec_device* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %148

125:                                              ; preds = %116
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %128 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %129 = call i8* @platform_device_register_data(%struct.device* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %127, %struct.wilco_ec_device* %128, i32 80)
  %130 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %131 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %133 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %125
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %141 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %6, align 4
  br label %145

144:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %166

145:                                              ; preds = %137
  %146 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %147 = call i32 @wilco_ec_remove_sysfs(%struct.wilco_ec_device* %146)
  br label %148

148:                                              ; preds = %145, %121
  %149 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %150 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @platform_device_unregister(i8* %151)
  br label %153

153:                                              ; preds = %148, %109
  %154 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %155 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %160 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @platform_device_unregister(i8* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = call i32 (...) @cros_ec_lpc_mec_destroy()
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %163, %144, %77, %46, %15
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wilco_ec_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @wilco_get_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @cros_ec_lpc_mec_init(i32, i32) #1

declare dso_local i8* @platform_device_register_data(%struct.device*, i8*, i32, %struct.wilco_ec_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @wilco_ec_add_sysfs(%struct.wilco_ec_device*) #1

declare dso_local i32 @wilco_ec_remove_sysfs(%struct.wilco_ec_device*) #1

declare dso_local i32 @platform_device_unregister(i8*) #1

declare dso_local i32 @cros_ec_lpc_mec_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
