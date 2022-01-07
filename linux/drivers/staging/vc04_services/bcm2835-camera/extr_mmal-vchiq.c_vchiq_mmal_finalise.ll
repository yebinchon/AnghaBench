; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_finalise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_finalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mmal-vchiq: VCHIQ close failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_mmal_finalise(%struct.vchiq_mmal_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vchiq_mmal_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %6 = icmp ne %struct.vchiq_mmal_instance* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %12 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %11, i32 0, i32 3
  %13 = call i64 @mutex_lock_interruptible(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINTR, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %10
  %19 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %20 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vchi_service_use(i32 %21)
  %23 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %24 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vchi_service_close(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  %32 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %33 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %32, i32 0, i32 3
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %36 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @flush_workqueue(i32 %37)
  %39 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %40 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @destroy_workqueue(i32 %41)
  %43 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %44 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vfree(i32 %45)
  %47 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %48 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %47, i32 0, i32 0
  %49 = call i32 @idr_destroy(i32* %48)
  %50 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %3, align 8
  %51 = call i32 @kfree(%struct.vchiq_mmal_instance* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %31, %15, %7
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vchi_service_use(i32) #1

declare dso_local i32 @vchi_service_close(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.vchiq_mmal_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
