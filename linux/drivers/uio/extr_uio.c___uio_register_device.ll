; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c___uio_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c___uio_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.device = type { i32 }
%struct.uio_info = type { i64, %struct.uio_device*, i32, i32, i32 }
%struct.uio_device = type { %struct.TYPE_7__, i32, i32, i32, i32, %struct.uio_info*, %struct.module* }
%struct.TYPE_7__ = type { i32, %struct.device*, i32*, i32 }

@uio_class_registered = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uio_major = common dso_local global i32 0, align 4
@uio_class = common dso_local global i32 0, align 4
@uio_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uio%d\00", align 1
@UIO_IRQ_CUSTOM = common dso_local global i64 0, align 8
@uio_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__uio_register_device(%struct.module* %0, %struct.device* %1, %struct.uio_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.uio_info*, align 8
  %8 = alloca %struct.uio_device*, align 8
  %9 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.uio_info* %2, %struct.uio_info** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @uio_class_registered, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EPROBE_DEFER, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %165

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %20 = icmp ne %struct.uio_info* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %23 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %28 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21, %18, %15
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %165

34:                                               ; preds = %26
  %35 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %36 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %35, i32 0, i32 1
  store %struct.uio_device* null, %struct.uio_device** %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.uio_device* @kzalloc(i32 64, i32 %37)
  store %struct.uio_device* %38, %struct.uio_device** %8, align 8
  %39 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %40 = icmp ne %struct.uio_device* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %165

44:                                               ; preds = %34
  %45 = load %struct.module*, %struct.module** %5, align 8
  %46 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %47 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %46, i32 0, i32 6
  store %struct.module* %45, %struct.module** %47, align 8
  %48 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %49 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %50 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %49, i32 0, i32 5
  store %struct.uio_info* %48, %struct.uio_info** %50, align 8
  %51 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %52 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %51, i32 0, i32 4
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %55 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %54, i32 0, i32 3
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %58 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %57, i32 0, i32 2
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %61 = call i32 @uio_get_minor(%struct.uio_device* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %66 = call i32 @kfree(%struct.uio_device* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %165

68:                                               ; preds = %44
  %69 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %70 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %69, i32 0, i32 0
  %71 = call i32 @device_initialize(%struct.TYPE_7__* %70)
  %72 = load i32, i32* @uio_major, align 4
  %73 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %74 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MKDEV(i32 %72, i32 %75)
  %77 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %78 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %81 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32* @uio_class, i32** %82, align 8
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %85 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store %struct.device* %83, %struct.device** %86, align 8
  %87 = load i32, i32* @uio_device_release, align 4
  %88 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %89 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %92 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %91, i32 0, i32 0
  %93 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %94 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %92, %struct.uio_device* %93)
  %95 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %96 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %95, i32 0, i32 0
  %97 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %98 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_set_name(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %68
  br label %158

104:                                              ; preds = %68
  %105 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %106 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %105, i32 0, i32 0
  %107 = call i32 @device_add(%struct.TYPE_7__* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %158

111:                                              ; preds = %104
  %112 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %113 = call i32 @uio_dev_add_attributes(%struct.uio_device* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %154

117:                                              ; preds = %111
  %118 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %119 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %120 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %119, i32 0, i32 1
  store %struct.uio_device* %118, %struct.uio_device** %120, align 8
  %121 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %122 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %117
  %126 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %127 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @UIO_IRQ_CUSTOM, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %133 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @uio_interrupt, align 4
  %136 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %137 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %140 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %143 = call i32 @request_irq(i64 %134, i32 %135, i32 %138, i32 %141, %struct.uio_device* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %131
  %147 = load %struct.uio_info*, %struct.uio_info** %7, align 8
  %148 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %147, i32 0, i32 1
  store %struct.uio_device* null, %struct.uio_device** %148, align 8
  br label %151

149:                                              ; preds = %131
  br label %150

150:                                              ; preds = %149, %125, %117
  store i32 0, i32* %4, align 4
  br label %165

151:                                              ; preds = %146
  %152 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %153 = call i32 @uio_dev_del_attributes(%struct.uio_device* %152)
  br label %154

154:                                              ; preds = %151, %116
  %155 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %156 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %155, i32 0, i32 0
  %157 = call i32 @device_del(%struct.TYPE_7__* %156)
  br label %158

158:                                              ; preds = %154, %110, %103
  %159 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %160 = call i32 @uio_free_minor(%struct.uio_device* %159)
  %161 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %162 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %161, i32 0, i32 0
  %163 = call i32 @put_device(%struct.TYPE_7__* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %158, %150, %64, %41, %31, %12
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.uio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @uio_get_minor(%struct.uio_device*) #1

declare dso_local i32 @kfree(%struct.uio_device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.uio_device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @uio_dev_add_attributes(%struct.uio_device*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.uio_device*) #1

declare dso_local i32 @uio_dev_del_attributes(%struct.uio_device*) #1

declare dso_local i32 @device_del(%struct.TYPE_7__*) #1

declare dso_local i32 @uio_free_minor(%struct.uio_device*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
