; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_cell = type { %struct.nvmem_cell*, i32, i32 }

@nvmem_notifier = common dso_local global i32 0, align 4
@NVMEM_CELL_REMOVE = common dso_local global i32 0, align 4
@nvmem_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmem_cell*)* @nvmem_cell_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmem_cell_drop(%struct.nvmem_cell* %0) #0 {
  %2 = alloca %struct.nvmem_cell*, align 8
  store %struct.nvmem_cell* %0, %struct.nvmem_cell** %2, align 8
  %3 = load i32, i32* @NVMEM_CELL_REMOVE, align 4
  %4 = load %struct.nvmem_cell*, %struct.nvmem_cell** %2, align 8
  %5 = call i32 @blocking_notifier_call_chain(i32* @nvmem_notifier, i32 %3, %struct.nvmem_cell* %4)
  %6 = call i32 @mutex_lock(i32* @nvmem_mutex)
  %7 = load %struct.nvmem_cell*, %struct.nvmem_cell** %2, align 8
  %8 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %7, i32 0, i32 2
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @mutex_unlock(i32* @nvmem_mutex)
  %11 = load %struct.nvmem_cell*, %struct.nvmem_cell** %2, align 8
  %12 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @of_node_put(i32 %13)
  %15 = load %struct.nvmem_cell*, %struct.nvmem_cell** %2, align 8
  %16 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %15, i32 0, i32 0
  %17 = load %struct.nvmem_cell*, %struct.nvmem_cell** %16, align 8
  %18 = call i32 @kfree(%struct.nvmem_cell* %17)
  %19 = load %struct.nvmem_cell*, %struct.nvmem_cell** %2, align 8
  %20 = call i32 @kfree(%struct.nvmem_cell* %19)
  ret void
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.nvmem_cell*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.nvmem_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
