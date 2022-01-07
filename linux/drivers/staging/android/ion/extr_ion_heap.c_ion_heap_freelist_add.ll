; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_heap.c_ion_heap_freelist_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_heap.c_ion_heap_freelist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { i32, i32, i32, i32 }
%struct.ion_buffer = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ion_heap_freelist_add(%struct.ion_heap* %0, %struct.ion_buffer* %1) #0 {
  %3 = alloca %struct.ion_heap*, align 8
  %4 = alloca %struct.ion_buffer*, align 8
  store %struct.ion_heap* %0, %struct.ion_heap** %3, align 8
  store %struct.ion_buffer* %1, %struct.ion_buffer** %4, align 8
  %5 = load %struct.ion_heap*, %struct.ion_heap** %3, align 8
  %6 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ion_buffer*, %struct.ion_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %8, i32 0, i32 1
  %10 = load %struct.ion_heap*, %struct.ion_heap** %3, align 8
  %11 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %10, i32 0, i32 3
  %12 = call i32 @list_add(i32* %9, i32* %11)
  %13 = load %struct.ion_buffer*, %struct.ion_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ion_heap*, %struct.ion_heap** %3, align 8
  %17 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.ion_heap*, %struct.ion_heap** %3, align 8
  %23 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.ion_heap*, %struct.ion_heap** %3, align 8
  %26 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
