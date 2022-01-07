; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_unmap_refs_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_unmap_refs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntab_unmap_queue_data = type { %struct.unmap_refs_callback_data* }
%struct.unmap_refs_callback_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gntab_unmap_queue_data*)* @unmap_refs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_refs_callback(i32 %0, %struct.gntab_unmap_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gntab_unmap_queue_data*, align 8
  %5 = alloca %struct.unmap_refs_callback_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gntab_unmap_queue_data* %1, %struct.gntab_unmap_queue_data** %4, align 8
  %6 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %4, align 8
  %7 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %6, i32 0, i32 0
  %8 = load %struct.unmap_refs_callback_data*, %struct.unmap_refs_callback_data** %7, align 8
  store %struct.unmap_refs_callback_data* %8, %struct.unmap_refs_callback_data** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.unmap_refs_callback_data*, %struct.unmap_refs_callback_data** %5, align 8
  %11 = getelementptr inbounds %struct.unmap_refs_callback_data, %struct.unmap_refs_callback_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.unmap_refs_callback_data*, %struct.unmap_refs_callback_data** %5, align 8
  %13 = getelementptr inbounds %struct.unmap_refs_callback_data, %struct.unmap_refs_callback_data* %12, i32 0, i32 1
  %14 = call i32 @complete(i32* %13)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
