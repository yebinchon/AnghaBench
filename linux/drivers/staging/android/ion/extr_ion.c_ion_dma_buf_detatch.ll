; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_dma_buf_detatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_dma_buf_detatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.ion_buffer* }
%struct.ion_buffer = type { i32 }
%struct.dma_buf_attachment = type { %struct.ion_dma_buf_attachment* }
%struct.ion_dma_buf_attachment = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @ion_dma_buf_detatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ion_dma_buf_detatch(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.ion_dma_buf_attachment*, align 8
  %6 = alloca %struct.ion_buffer*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 0
  %9 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %8, align 8
  store %struct.ion_dma_buf_attachment* %9, %struct.ion_dma_buf_attachment** %5, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %11 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %10, i32 0, i32 0
  %12 = load %struct.ion_buffer*, %struct.ion_buffer** %11, align 8
  store %struct.ion_buffer* %12, %struct.ion_buffer** %6, align 8
  %13 = load %struct.ion_buffer*, %struct.ion_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %5, align 8
  %17 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.ion_buffer*, %struct.ion_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %5, align 8
  %23 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free_duped_table(i32 %24)
  %26 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %5, align 8
  %27 = call i32 @kfree(%struct.ion_dma_buf_attachment* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_duped_table(i32) #1

declare dso_local i32 @kfree(%struct.ion_dma_buf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
