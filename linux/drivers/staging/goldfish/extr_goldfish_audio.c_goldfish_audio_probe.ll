; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/goldfish/extr_goldfish_audio.c_goldfish_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/goldfish/extr_goldfish_audio.c_goldfish_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_audio = type { i64, i32, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"platform_get_resource failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@COMBINED_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"allocate buffer failed\0A\00", align 1
@WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@goldfish_audio_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@goldfish_audio_device = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"misc_register returned %d in goldfish_audio_init\0A\00", align 1
@AUDIO_SET_WRITE_BUFFER_1 = common dso_local global i32 0, align 4
@AUDIO_SET_WRITE_BUFFER_1_HIGH = common dso_local global i32 0, align 4
@AUDIO_SET_WRITE_BUFFER_2 = common dso_local global i32 0, align 4
@AUDIO_SET_WRITE_BUFFER_2_HIGH = common dso_local global i32 0, align 4
@AUDIO_READ_SUPPORTED = common dso_local global i32 0, align 4
@AUDIO_SET_READ_BUFFER = common dso_local global i32 0, align 4
@AUDIO_SET_READ_BUFFER_HIGH = common dso_local global i32 0, align 4
@audio_data = common dso_local global %struct.goldfish_audio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.goldfish_audio*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.goldfish_audio* @devm_kzalloc(i32* %9, i32 72, i32 %10)
  store %struct.goldfish_audio* %11, %struct.goldfish_audio** %6, align 8
  %12 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %13 = icmp ne %struct.goldfish_audio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %174

17:                                               ; preds = %1
  %18 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %19 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %18, i32 0, i32 9
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %22 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %21, i32 0, i32 8
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.goldfish_audio* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %5, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %17
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %174

38:                                               ; preds = %17
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @devm_ioremap(i32* %40, i32 %43, i32 %44)
  %46 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %47 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %49 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %174

55:                                               ; preds = %38
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i64 @platform_get_irq(%struct.platform_device* %56, i32 0)
  %58 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %59 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %61 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %174

67:                                               ; preds = %55
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* @COMBINED_BUFFER_SIZE, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i64 @dmam_alloc_coherent(i32* %69, i32 %70, i32* %7, i32 %71)
  %73 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %74 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %76 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %67
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %174

85:                                               ; preds = %67
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %88 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %90 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %93 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %92, i32 0, i32 6
  store i64 %91, i64* %93, align 8
  %94 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %95 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %101 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %103 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %110 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %114 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @goldfish_audio_interrupt, align 4
  %117 = load i32, i32* @IRQF_SHARED, align 4
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %122 = call i32 @devm_request_irq(i32* %112, i64 %115, i32 %116, i32 %117, i32 %120, %struct.goldfish_audio* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %85
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %174

130:                                              ; preds = %85
  %131 = call i32 @misc_register(i32* @goldfish_audio_device)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* %4, align 4
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %174

140:                                              ; preds = %130
  %141 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %142 = load i32, i32* @AUDIO_SET_WRITE_BUFFER_1, align 4
  %143 = load i32, i32* @AUDIO_SET_WRITE_BUFFER_1_HIGH, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @audio_write64(%struct.goldfish_audio* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %150 = load i32, i32* @AUDIO_SET_WRITE_BUFFER_2, align 4
  %151 = load i32, i32* @AUDIO_SET_WRITE_BUFFER_2_HIGH, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @audio_write64(%struct.goldfish_audio* %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %158 = load i32, i32* @AUDIO_READ_SUPPORTED, align 4
  %159 = call i64 @audio_read(%struct.goldfish_audio* %157, i32 %158)
  %160 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %161 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %163 = getelementptr inbounds %struct.goldfish_audio, %struct.goldfish_audio* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %140
  %167 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  %168 = load i32, i32* @AUDIO_SET_READ_BUFFER, align 4
  %169 = load i32, i32* @AUDIO_SET_READ_BUFFER_HIGH, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @audio_write64(%struct.goldfish_audio* %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %166, %140
  %173 = load %struct.goldfish_audio*, %struct.goldfish_audio** %6, align 8
  store %struct.goldfish_audio* %173, %struct.goldfish_audio** @audio_data, align 8
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %134, %125, %79, %64, %52, %32, %14
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.goldfish_audio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.goldfish_audio*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @dmam_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.goldfish_audio*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @audio_write64(%struct.goldfish_audio*, i32, i32, i32) #1

declare dso_local i64 @audio_read(%struct.goldfish_audio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
