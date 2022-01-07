; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_del_queue_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_del_queue_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.nvme_queue* }
%struct.nvme_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @nvme_del_queue_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_del_queue_end(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_queue*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  store %struct.nvme_queue* %8, %struct.nvme_queue** %5, align 8
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call i32 @blk_mq_free_request(%struct.request* %9)
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 0
  %13 = call i32 @complete(i32* %12)
  ret void
}

declare dso_local i32 @blk_mq_free_request(%struct.request*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
