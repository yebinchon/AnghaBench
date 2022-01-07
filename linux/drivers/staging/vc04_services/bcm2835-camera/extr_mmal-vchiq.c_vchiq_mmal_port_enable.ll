; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.vchiq_mmal_port = type { i32, i64 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_mmal_port_enable(%struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_mmal_instance*, align 8
  %6 = alloca %struct.vchiq_mmal_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %5, align 8
  store %struct.vchiq_mmal_port* %1, %struct.vchiq_mmal_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %10 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINTR, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %6, align 8
  %18 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %6, align 8
  %25 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %27 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %6, align 8
  %28 = call i32 @port_enable(%struct.vchiq_mmal_instance* %26, %struct.vchiq_mmal_port* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %22, %21
  %30 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %31 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @port_enable(%struct.vchiq_mmal_instance*, %struct.vchiq_mmal_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
