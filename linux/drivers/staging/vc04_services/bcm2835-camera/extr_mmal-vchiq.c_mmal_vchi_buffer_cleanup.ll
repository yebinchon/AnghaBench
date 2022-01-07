; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_mmal_vchi_buffer_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_mmal_vchi_buffer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmal_buffer = type { %struct.mmal_msg_context* }
%struct.mmal_msg_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_vchi_buffer_cleanup(%struct.mmal_buffer* %0) #0 {
  %2 = alloca %struct.mmal_buffer*, align 8
  %3 = alloca %struct.mmal_msg_context*, align 8
  store %struct.mmal_buffer* %0, %struct.mmal_buffer** %2, align 8
  %4 = load %struct.mmal_buffer*, %struct.mmal_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.mmal_buffer, %struct.mmal_buffer* %4, i32 0, i32 0
  %6 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %5, align 8
  store %struct.mmal_msg_context* %6, %struct.mmal_msg_context** %3, align 8
  %7 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %3, align 8
  %8 = icmp ne %struct.mmal_msg_context* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %3, align 8
  %11 = call i32 @release_msg_context(%struct.mmal_msg_context* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.mmal_buffer*, %struct.mmal_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.mmal_buffer, %struct.mmal_buffer* %13, i32 0, i32 0
  store %struct.mmal_msg_context* null, %struct.mmal_msg_context** %14, align 8
  ret i32 0
}

declare dso_local i32 @release_msg_context(%struct.mmal_msg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
