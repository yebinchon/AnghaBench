; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32, i32, %struct.TYPE_3__*, %struct.serdev_controller* }
%struct.TYPE_3__ = type { i32 }
%struct.serdev_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.serdev_controller*, i8*, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_device_write(%struct.serdev_device* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.serdev_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.serdev_controller*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %14 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %13, i32 0, i32 3
  %15 = load %struct.serdev_controller*, %struct.serdev_controller** %14, align 8
  store %struct.serdev_controller* %15, %struct.serdev_controller** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %17 = icmp ne %struct.serdev_controller* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %20 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.serdev_controller*, i8*, i64)*, i32 (%struct.serdev_controller*, i8*, i64)** %22, align 8
  %24 = icmp ne i32 (%struct.serdev_controller*, i8*, i64)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %27 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %18, %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %111

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %42 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  br label %44

44:                                               ; preds = %80, %40
  %45 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %46 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %45, i32 0, i32 1
  %47 = call i32 @reinit_completion(i32* %46)
  %48 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %49 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.serdev_controller*, i8*, i64)*, i32 (%struct.serdev_controller*, i8*, i64)** %51, align 8
  %53 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 %52(%struct.serdev_controller* %53, i8* %54, i64 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %83

60:                                               ; preds = %44
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %83

75:                                               ; preds = %60
  %76 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %77 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @wait_for_completion_interruptible_timeout(i32* %77, i64 %78)
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %44, label %83

83:                                               ; preds = %80, %74, %59
  %84 = load %struct.serdev_device*, %struct.serdev_device** %6, align 8
  %85 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %111

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @ERESTARTSYS, align 8
  %100 = sub nsw i64 0, %99
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* @ERESTARTSYS, align 8
  %104 = sub nsw i64 0, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %111

109:                                              ; preds = %94, %91
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %106, %102, %89, %32
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
