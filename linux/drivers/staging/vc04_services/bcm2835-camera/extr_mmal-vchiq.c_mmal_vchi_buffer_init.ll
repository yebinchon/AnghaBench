; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_mmal_vchi_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_mmal_vchi_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.mmal_buffer = type { %struct.mmal_msg_context* }
%struct.mmal_msg_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_vchi_buffer_init(%struct.vchiq_mmal_instance* %0, %struct.mmal_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_mmal_instance*, align 8
  %5 = alloca %struct.mmal_buffer*, align 8
  %6 = alloca %struct.mmal_msg_context*, align 8
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %4, align 8
  store %struct.mmal_buffer* %1, %struct.mmal_buffer** %5, align 8
  %7 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %8 = call %struct.mmal_msg_context* @get_msg_context(%struct.vchiq_mmal_instance* %7)
  store %struct.mmal_msg_context* %8, %struct.mmal_msg_context** %6, align 8
  %9 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %6, align 8
  %10 = call i64 @IS_ERR(%struct.mmal_msg_context* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.mmal_msg_context* %13)
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %6, align 8
  %17 = load %struct.mmal_buffer*, %struct.mmal_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.mmal_buffer, %struct.mmal_buffer* %17, i32 0, i32 0
  store %struct.mmal_msg_context* %16, %struct.mmal_msg_context** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.mmal_msg_context* @get_msg_context(%struct.vchiq_mmal_instance*) #1

declare dso_local i64 @IS_ERR(%struct.mmal_msg_context*) #1

declare dso_local i32 @PTR_ERR(%struct.mmal_msg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
