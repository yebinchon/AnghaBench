; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec.c_cros_ec_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec.c_cros_ec_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32, i32, %struct.device*, i8*, i8*, i64, i32, i8*, i32, i8*, i32, i32 }
%struct.device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot identify the EC: error %d\0A\00", align 1
@ec_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"chromeos-ec\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ %d: %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cros-ec-dev\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@ec_p = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to create CrOS EC platform device\0A\00", align 1
@pd_p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to create CrOS PD platform device\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to register sub-devices\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Error %d clearing sleep event to ec\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Chrome EC device registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_register(%struct.cros_ec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  %6 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %7 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %6, i32 0, i32 3
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 12
  %11 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %10)
  %12 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %13 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %15 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %14, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %17 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %20 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %18, i32 %21, i32 %22)
  %24 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %25 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %24, i32 0, i32 10
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 10
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %184

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %36 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.device* %34, i32 %37, i32 %38)
  %40 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %41 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %43 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %42, i32 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %184

49:                                               ; preds = %33
  %50 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %51 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %50, i32 0, i32 7
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %54 = call i32 @cros_ec_query_all(%struct.cros_ec_device* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %184

62:                                               ; preds = %49
  %63 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %64 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %70 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ec_irq_thread, align 4
  %73 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %74 = load i32, i32* @IRQF_ONESHOT, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %77 = call i32 @devm_request_threaded_irq(%struct.device* %68, i32 %71, i32* null, i32 %72, i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.cros_ec_device* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %67
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %83 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %184

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %91 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %90, i32 0, i32 3
  %92 = load %struct.device*, %struct.device** %91, align 8
  %93 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %94 = call i8* @platform_device_register_data(%struct.device* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32* @ec_p, i32 4)
  %95 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %96 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %98 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %89
  %103 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %104 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %103, i32 0, i32 3
  %105 = load %struct.device*, %struct.device** %104, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %108 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %2, align 4
  br label %184

111:                                              ; preds = %89
  %112 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %113 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %111
  %117 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %118 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %117, i32 0, i32 3
  %119 = load %struct.device*, %struct.device** %118, align 8
  %120 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %121 = call i8* @platform_device_register_data(%struct.device* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32* @pd_p, i32 4)
  %122 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %123 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %125 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %116
  %130 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %131 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %130, i32 0, i32 3
  %132 = load %struct.device*, %struct.device** %131, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %135 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @platform_device_unregister(i8* %136)
  %138 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %139 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @PTR_ERR(i8* %140)
  store i32 %141, i32* %2, align 4
  br label %184

142:                                              ; preds = %116
  br label %143

143:                                              ; preds = %142, %111
  %144 = load i32, i32* @CONFIG_OF, align 4
  %145 = call i64 @IS_ENABLED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %143
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = getelementptr inbounds %struct.device, %struct.device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = call i32 @devm_of_platform_populate(%struct.device* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %159 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @platform_device_unregister(i8* %160)
  %162 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %163 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @platform_device_unregister(i8* %164)
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %184

169:                                              ; preds = %152
  br label %170

170:                                              ; preds = %169, %147, %143
  %171 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %172 = call i32 @cros_ec_sleep_event(%struct.cros_ec_device* %171, i32 0)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %177 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %176, i32 0, i32 3
  %178 = load %struct.device*, %struct.device** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @dev_dbg(%struct.device* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %175, %170
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = call i32 @dev_info(%struct.device* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %181, %157, %129, %102, %80, %57, %46, %30
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cros_ec_query_all(%struct.cros_ec_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.cros_ec_device*) #1

declare dso_local i8* @platform_device_register_data(%struct.device*, i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_device_unregister(i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

declare dso_local i32 @cros_ec_sleep_event(%struct.cros_ec_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
