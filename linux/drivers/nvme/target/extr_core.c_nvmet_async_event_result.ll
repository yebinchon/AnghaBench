; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_async_event_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_async_event_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_async_event = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_async_event*)* @nvmet_async_event_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_async_event_result(%struct.nvmet_async_event* %0) #0 {
  %2 = alloca %struct.nvmet_async_event*, align 8
  store %struct.nvmet_async_event* %0, %struct.nvmet_async_event** %2, align 8
  %3 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 8
  %10 = or i32 %5, %9
  %11 = load %struct.nvmet_async_event*, %struct.nvmet_async_event** %2, align 8
  %12 = getelementptr inbounds %struct.nvmet_async_event, %struct.nvmet_async_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = or i32 %10, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
