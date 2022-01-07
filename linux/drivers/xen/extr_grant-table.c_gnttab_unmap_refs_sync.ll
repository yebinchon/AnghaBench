; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntab_unmap_queue_data = type { i32*, %struct.unmap_refs_callback_data* }
%struct.unmap_refs_callback_data = type { i32, i32 }

@unmap_refs_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_unmap_refs_sync(%struct.gntab_unmap_queue_data* %0) #0 {
  %2 = alloca %struct.gntab_unmap_queue_data*, align 8
  %3 = alloca %struct.unmap_refs_callback_data, align 4
  store %struct.gntab_unmap_queue_data* %0, %struct.gntab_unmap_queue_data** %2, align 8
  %4 = getelementptr inbounds %struct.unmap_refs_callback_data, %struct.unmap_refs_callback_data* %3, i32 0, i32 1
  %5 = call i32 @init_completion(i32* %4)
  %6 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %7 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %6, i32 0, i32 1
  store %struct.unmap_refs_callback_data* %3, %struct.unmap_refs_callback_data** %7, align 8
  %8 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %9 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %8, i32 0, i32 0
  store i32* @unmap_refs_callback, i32** %9, align 8
  %10 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %11 = call i32 @gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data* %10)
  %12 = getelementptr inbounds %struct.unmap_refs_callback_data, %struct.unmap_refs_callback_data* %3, i32 0, i32 1
  %13 = call i32 @wait_for_completion(i32* %12)
  %14 = getelementptr inbounds %struct.unmap_refs_callback_data, %struct.unmap_refs_callback_data* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
