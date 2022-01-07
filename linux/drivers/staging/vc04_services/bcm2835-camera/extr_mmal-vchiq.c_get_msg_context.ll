; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_get_msg_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_get_msg_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmal_msg_context = type { i32, %struct.vchiq_mmal_instance* }
%struct.vchiq_mmal_instance = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmal_msg_context* (%struct.vchiq_mmal_instance*)* @get_msg_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmal_msg_context* @get_msg_context(%struct.vchiq_mmal_instance* %0) #0 {
  %2 = alloca %struct.mmal_msg_context*, align 8
  %3 = alloca %struct.vchiq_mmal_instance*, align 8
  %4 = alloca %struct.mmal_msg_context*, align 8
  %5 = alloca i32, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mmal_msg_context* @kzalloc(i32 16, i32 %6)
  store %struct.mmal_msg_context* %7, %struct.mmal_msg_context** %4, align 8
  %8 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  %9 = icmp ne %struct.mmal_msg_context* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mmal_msg_context* @ERR_PTR(i32 %12)
  store %struct.mmal_msg_context* %13, %struct.mmal_msg_context** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %16 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %19 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %18, i32 0, i32 1
  %20 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @idr_alloc(i32* %19, %struct.mmal_msg_context* %20, i32 0, i32 0, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %24 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  %30 = call i32 @kfree(%struct.mmal_msg_context* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.mmal_msg_context* @ERR_PTR(i32 %31)
  store %struct.mmal_msg_context* %32, %struct.mmal_msg_context** %2, align 8
  br label %41

33:                                               ; preds = %14
  %34 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %35 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  %36 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %35, i32 0, i32 1
  store %struct.vchiq_mmal_instance* %34, %struct.vchiq_mmal_instance** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  %39 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %4, align 8
  store %struct.mmal_msg_context* %40, %struct.mmal_msg_context** %2, align 8
  br label %41

41:                                               ; preds = %33, %28, %10
  %42 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %2, align 8
  ret %struct.mmal_msg_context* %42
}

declare dso_local %struct.mmal_msg_context* @kzalloc(i32, i32) #1

declare dso_local %struct.mmal_msg_context* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.mmal_msg_context*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mmal_msg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
