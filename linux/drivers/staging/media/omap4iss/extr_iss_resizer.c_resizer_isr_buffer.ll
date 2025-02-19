; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_resizer_device = type { i32 }
%struct.iss_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_resizer_device*)* @resizer_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_isr_buffer(%struct.iss_resizer_device* %0) #0 {
  %2 = alloca %struct.iss_resizer_device*, align 8
  %3 = alloca %struct.iss_buffer*, align 8
  store %struct.iss_resizer_device* %0, %struct.iss_resizer_device** %2, align 8
  %4 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %5 = call i32 @resizer_enable(%struct.iss_resizer_device* %4, i32 0)
  %6 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %7 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %6, i32 0, i32 0
  %8 = call %struct.iss_buffer* @omap4iss_video_buffer_next(i32* %7)
  store %struct.iss_buffer* %8, %struct.iss_buffer** %3, align 8
  %9 = load %struct.iss_buffer*, %struct.iss_buffer** %3, align 8
  %10 = icmp ne %struct.iss_buffer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %14 = load %struct.iss_buffer*, %struct.iss_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.iss_buffer, %struct.iss_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @resizer_set_outaddr(%struct.iss_resizer_device* %13, i32 %16)
  %18 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %19 = call i32 @resizer_enable(%struct.iss_resizer_device* %18, i32 1)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @resizer_enable(%struct.iss_resizer_device*, i32) #1

declare dso_local %struct.iss_buffer* @omap4iss_video_buffer_next(i32*) #1

declare dso_local i32 @resizer_set_outaddr(%struct.iss_resizer_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
