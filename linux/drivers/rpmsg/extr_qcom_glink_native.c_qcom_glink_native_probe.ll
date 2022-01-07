; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_native_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_native_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i64, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe*, %struct.device* }
%struct.TYPE_5__ = type { i32, %struct.device* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qcom_glink_pipe = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_glink_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to acquire IPC channel\0A\00", align 1
@qcom_glink_native_intr = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"glink-native\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_glink* @qcom_glink_native_probe(%struct.device* %0, i64 %1, %struct.qcom_glink_pipe* %2, %struct.qcom_glink_pipe* %3, i32 %4) #0 {
  %6 = alloca %struct.qcom_glink*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qcom_glink_pipe*, align 8
  %10 = alloca %struct.qcom_glink_pipe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qcom_glink*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.qcom_glink_pipe* %2, %struct.qcom_glink_pipe** %9, align 8
  store %struct.qcom_glink_pipe* %3, %struct.qcom_glink_pipe** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qcom_glink* @devm_kzalloc(%struct.device* %15, i32 96, i32 %16)
  store %struct.qcom_glink* %17, %struct.qcom_glink** %14, align 8
  %18 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %19 = icmp ne %struct.qcom_glink* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.qcom_glink* @ERR_PTR(i32 %22)
  store %struct.qcom_glink* %23, %struct.qcom_glink** %6, align 8
  br label %145

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %27 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %26, i32 0, i32 15
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %10, align 8
  %29 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %30 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %29, i32 0, i32 14
  store %struct.qcom_glink_pipe* %28, %struct.qcom_glink_pipe** %30, align 8
  %31 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %9, align 8
  %32 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %33 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %32, i32 0, i32 13
  store %struct.qcom_glink_pipe* %31, %struct.qcom_glink_pipe** %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %36 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %39 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %41 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %40, i32 0, i32 12
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %44 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %43, i32 0, i32 11
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %47 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %46, i32 0, i32 10
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %50 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %49, i32 0, i32 9
  %51 = load i32, i32* @qcom_glink_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %54 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %53, i32 0, i32 8
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %57 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %56, i32 0, i32 7
  %58 = call i32 @idr_init(i32* %57)
  %59 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %60 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %59, i32 0, i32 6
  %61 = call i32 @idr_init(i32* %60)
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %66 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %65, i32 0, i32 5
  %67 = call i32 @of_property_read_string(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %24
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %77 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %70, %24
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %81 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store %struct.device* %79, %struct.device** %82, align 8
  %83 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %84 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %87 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %86, i32 0, i32 4
  %88 = call i32 @mbox_request_channel(%struct.TYPE_5__* %87, i32 0)
  %89 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %90 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %92 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %78
  %97 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %98 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  %101 = load i32, i32* @EPROBE_DEFER, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %109 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.qcom_glink* @ERR_CAST(i32 %110)
  store %struct.qcom_glink* %111, %struct.qcom_glink** %6, align 8
  br label %145

112:                                              ; preds = %78
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = call i32 @of_irq_get(%struct.TYPE_4__* %115, i32 0)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @qcom_glink_native_intr, align 4
  %120 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %121 = load i32, i32* @IRQF_SHARED, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %124 = call i32 @devm_request_irq(%struct.device* %117, i32 %118, i32 %119, i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.qcom_glink* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %112
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %13, align 4
  %131 = call %struct.qcom_glink* @ERR_PTR(i32 %130)
  store %struct.qcom_glink* %131, %struct.qcom_glink** %6, align 8
  br label %145

132:                                              ; preds = %112
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %135 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  %137 = call i32 @qcom_glink_send_version(%struct.qcom_glink* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* %13, align 4
  %142 = call %struct.qcom_glink* @ERR_PTR(i32 %141)
  store %struct.qcom_glink* %142, %struct.qcom_glink** %6, align 8
  br label %145

143:                                              ; preds = %132
  %144 = load %struct.qcom_glink*, %struct.qcom_glink** %14, align 8
  store %struct.qcom_glink* %144, %struct.qcom_glink** %6, align 8
  br label %145

145:                                              ; preds = %143, %140, %127, %107, %20
  %146 = load %struct.qcom_glink*, %struct.qcom_glink** %6, align 8
  ret %struct.qcom_glink* %146
}

declare dso_local %struct.qcom_glink* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.qcom_glink* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @of_property_read_string(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @mbox_request_channel(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.qcom_glink* @ERR_CAST(i32) #1

declare dso_local i32 @of_irq_get(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.qcom_glink*) #1

declare dso_local i32 @qcom_glink_send_version(%struct.qcom_glink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
