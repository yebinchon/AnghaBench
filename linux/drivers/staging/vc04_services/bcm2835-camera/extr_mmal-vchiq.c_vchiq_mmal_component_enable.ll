; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_component_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_component_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.vchiq_mmal_component = type { i32 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_mmal_component_enable(%struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_component* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_mmal_instance*, align 8
  %5 = alloca %struct.vchiq_mmal_component*, align 8
  %6 = alloca i32, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %4, align 8
  store %struct.vchiq_mmal_component* %1, %struct.vchiq_mmal_component** %5, align 8
  %7 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %8 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %7, i32 0, i32 0
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %5, align 8
  %16 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %21 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %3, align 4
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %25 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %5, align 8
  %26 = call i32 @enable_component(%struct.vchiq_mmal_instance* %24, %struct.vchiq_mmal_component* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %5, align 8
  %31 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %34 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %19, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @enable_component(%struct.vchiq_mmal_instance*, %struct.vchiq_mmal_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
