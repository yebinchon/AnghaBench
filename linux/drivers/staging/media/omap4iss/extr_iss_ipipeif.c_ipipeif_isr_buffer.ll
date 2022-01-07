; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iss_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipeif_device*)* @ipipeif_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipeif_isr_buffer(%struct.iss_ipipeif_device* %0) #0 {
  %2 = alloca %struct.iss_ipipeif_device*, align 8
  %3 = alloca %struct.iss_buffer*, align 8
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %2, align 8
  %4 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %5 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %12 = call i32 @ipipeif_write_enable(%struct.iss_ipipeif_device* %11, i32 0)
  %13 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %14 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %13, i32 0, i32 0
  %15 = call %struct.iss_buffer* @omap4iss_video_buffer_next(%struct.TYPE_2__* %14)
  store %struct.iss_buffer* %15, %struct.iss_buffer** %3, align 8
  %16 = load %struct.iss_buffer*, %struct.iss_buffer** %3, align 8
  %17 = icmp ne %struct.iss_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %27

19:                                               ; preds = %10
  %20 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %21 = load %struct.iss_buffer*, %struct.iss_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.iss_buffer, %struct.iss_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ipipeif_set_outaddr(%struct.iss_ipipeif_device* %20, i32 %23)
  %25 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %26 = call i32 @ipipeif_write_enable(%struct.iss_ipipeif_device* %25, i32 1)
  br label %27

27:                                               ; preds = %19, %18, %9
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @ipipeif_write_enable(%struct.iss_ipipeif_device*, i32) #1

declare dso_local %struct.iss_buffer* @omap4iss_video_buffer_next(%struct.TYPE_2__*) #1

declare dso_local i32 @ipipeif_set_outaddr(%struct.iss_ipipeif_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
