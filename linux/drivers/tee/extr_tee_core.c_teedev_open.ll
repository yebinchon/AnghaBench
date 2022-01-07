; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_teedev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_teedev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32, %struct.tee_device*, i32 }
%struct.tee_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.tee_context*)* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tee_context* (%struct.tee_device*)* @teedev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tee_context* @teedev_open(%struct.tee_device* %0) #0 {
  %2 = alloca %struct.tee_context*, align 8
  %3 = alloca %struct.tee_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_context*, align 8
  store %struct.tee_device* %0, %struct.tee_device** %3, align 8
  %6 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %7 = call i32 @tee_device_get(%struct.tee_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.tee_context* @ERR_PTR(i32 %11)
  store %struct.tee_context* %12, %struct.tee_context** %2, align 8
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tee_context* @kzalloc(i32 24, i32 %14)
  store %struct.tee_context* %15, %struct.tee_context** %5, align 8
  %16 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %17 = icmp ne %struct.tee_context* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %23 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %22, i32 0, i32 2
  %24 = call i32 @kref_init(i32* %23)
  %25 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %26 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %27 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %26, i32 0, i32 1
  store %struct.tee_device* %25, %struct.tee_device** %27, align 8
  %28 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %29 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %32 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.tee_context*)*, i32 (%struct.tee_context*)** %36, align 8
  %38 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %39 = call i32 %37(%struct.tee_context* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %45

43:                                               ; preds = %21
  %44 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  store %struct.tee_context* %44, %struct.tee_context** %2, align 8
  br label %52

45:                                               ; preds = %42, %18
  %46 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %47 = call i32 @kfree(%struct.tee_context* %46)
  %48 = load %struct.tee_device*, %struct.tee_device** %3, align 8
  %49 = call i32 @tee_device_put(%struct.tee_device* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call %struct.tee_context* @ERR_PTR(i32 %50)
  store %struct.tee_context* %51, %struct.tee_context** %2, align 8
  br label %52

52:                                               ; preds = %45, %43, %9
  %53 = load %struct.tee_context*, %struct.tee_context** %2, align 8
  ret %struct.tee_context* %53
}

declare dso_local i32 @tee_device_get(%struct.tee_device*) #1

declare dso_local %struct.tee_context* @ERR_PTR(i32) #1

declare dso_local %struct.tee_context* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.tee_context*) #1

declare dso_local i32 @tee_device_put(%struct.tee_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
