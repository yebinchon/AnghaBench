; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_op_unmap_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_op_unmap_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* @tee_shm_op_unmap_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tee_shm_op_unmap_dma_buf(%struct.dma_buf_attachment* %0, %struct.sg_table* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  store i32 %2, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
