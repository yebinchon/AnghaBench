; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_unmap_refs_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntab_unmap_queue_data = type { i64, i32 }

@gnttab_unmap_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data* %0) #0 {
  %2 = alloca %struct.gntab_unmap_queue_data*, align 8
  store %struct.gntab_unmap_queue_data* %0, %struct.gntab_unmap_queue_data** %2, align 8
  %3 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %4 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %3, i32 0, i32 1
  %5 = load i32, i32* @gnttab_unmap_work, align 4
  %6 = call i32 @INIT_DELAYED_WORK(i32* %4, i32 %5)
  %7 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %8 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %2, align 8
  %10 = call i32 @__gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data* %9)
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @__gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
