; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_del_group_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_del_group_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }
%struct.vfio_device = type { %struct.TYPE_6__*, i8*, %struct.vfio_group* }
%struct.TYPE_6__ = type { i32 (i8*, i32)* }
%struct.vfio_group = type { i32, i32, i32, i32, i32 }
%struct.vfio_unbound_dev = type { i32, %struct.device* }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vfio = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [76 x i8] c"Device is currently in use, task \22%s\22 (%d) blocked until device is released\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vfio_del_group_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.vfio_device*, align 8
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_unbound_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @woken_wake_function, align 4
  %11 = call i32 @DEFINE_WAIT_FUNC(i32 %9, i32 %10)
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call %struct.vfio_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.vfio_device* %13, %struct.vfio_device** %3, align 8
  %14 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %15 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %14, i32 0, i32 2
  %16 = load %struct.vfio_group*, %struct.vfio_group** %15, align 8
  store %struct.vfio_group* %16, %struct.vfio_group** %4, align 8
  %17 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %18 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %21 = call i32 @vfio_group_get(%struct.vfio_group* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vfio_unbound_dev* @kzalloc(i32 16, i32 %22)
  store %struct.vfio_unbound_dev* %23, %struct.vfio_unbound_dev** %6, align 8
  %24 = load %struct.vfio_unbound_dev*, %struct.vfio_unbound_dev** %6, align 8
  %25 = icmp ne %struct.vfio_unbound_dev* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = load %struct.vfio_unbound_dev*, %struct.vfio_unbound_dev** %6, align 8
  %29 = getelementptr inbounds %struct.vfio_unbound_dev, %struct.vfio_unbound_dev* %28, i32 0, i32 1
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %31 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %30, i32 0, i32 3
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.vfio_unbound_dev*, %struct.vfio_unbound_dev** %6, align 8
  %34 = getelementptr inbounds %struct.vfio_unbound_dev, %struct.vfio_unbound_dev* %33, i32 0, i32 0
  %35 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %36 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %35, i32 0, i32 4
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %39 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %38, i32 0, i32 3
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %26, %1
  %42 = load %struct.vfio_unbound_dev*, %struct.vfio_unbound_dev** %6, align 8
  %43 = icmp ne %struct.vfio_unbound_dev* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %48 = call i32 @vfio_device_put(%struct.vfio_device* %47)
  %49 = call i32 @add_wait_queue(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vfio, i32 0, i32 0), i32* @wait)
  br label %50

50:                                               ; preds = %102, %41
  %51 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = call %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group* %51, %struct.device* %52)
  store %struct.vfio_device* %53, %struct.vfio_device** %3, align 8
  %54 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %55 = icmp ne %struct.vfio_device* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %103

57:                                               ; preds = %50
  %58 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %59 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i8*, i32)*, i32 (i8*, i32)** %61, align 8
  %63 = icmp ne i32 (i8*, i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %66 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (i8*, i32)*, i32 (i8*, i32)** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = call i32 %69(i8* %70, i32 %71)
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.vfio_device*, %struct.vfio_device** %3, align 8
  %76 = call i32 @vfio_device_put(%struct.vfio_device* %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %81 = load i32, i32* @HZ, align 4
  %82 = mul nsw i32 %81, 10
  %83 = call i32 @wait_woken(i32* @wait, i32 %80, i32 %82)
  br label %101

84:                                               ; preds = %74
  %85 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 %86, 10
  %88 = call i32 @wait_woken(i32* @wait, i32 %85, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %90 = call i64 @signal_pending(%struct.TYPE_8__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  %93 = load %struct.device*, %struct.device** %2, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %98 = call i32 @task_pid_nr(%struct.TYPE_8__* %97)
  %99 = call i32 @dev_warn(%struct.device* %93, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101
  br i1 true, label %50, label %103

103:                                              ; preds = %102, %56
  %104 = call i32 @remove_wait_queue(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vfio, i32 0, i32 0), i32* @wait)
  %105 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %106 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %105, i32 0, i32 2
  %107 = call i64 @list_empty(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %111 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %114 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @wait_event(i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %109, %103
  %121 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %122 = call i32 @vfio_group_put(%struct.vfio_group* %121)
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local %struct.vfio_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @vfio_group_get(%struct.vfio_group*) #1

declare dso_local %struct.vfio_unbound_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group*, %struct.device*) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i64 @signal_pending(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_8__*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
