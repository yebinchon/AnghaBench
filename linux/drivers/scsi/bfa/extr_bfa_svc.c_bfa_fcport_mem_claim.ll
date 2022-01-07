; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_mem_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_mem_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %union.bfa_fcport_stats_u*, i32, i64, %struct.bfa_mem_dma_s }
%union.bfa_fcport_stats_u = type { i32 }
%struct.bfa_mem_dma_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*)* @bfa_fcport_mem_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_mem_claim(%struct.bfa_fcport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcport_s*, align 8
  %3 = alloca %struct.bfa_mem_dma_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %2, align 8
  %4 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %4, i32 0, i32 3
  store %struct.bfa_mem_dma_s* %5, %struct.bfa_mem_dma_s** %3, align 8
  %6 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %3, align 8
  %7 = call i64 @bfa_mem_dma_virt(%struct.bfa_mem_dma_s* %6)
  %8 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %8, i32 0, i32 2
  store i64 %7, i64* %9, align 8
  %10 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %3, align 8
  %11 = call i32 @bfa_mem_dma_phys(%struct.bfa_mem_dma_s* %10)
  %12 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %3, align 8
  %15 = call i64 @bfa_mem_dma_virt(%struct.bfa_mem_dma_s* %14)
  %16 = inttoptr i64 %15 to %union.bfa_fcport_stats_u*
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 0
  store %union.bfa_fcport_stats_u* %16, %union.bfa_fcport_stats_u** %18, align 8
  ret void
}

declare dso_local i64 @bfa_mem_dma_virt(%struct.bfa_mem_dma_s*) #1

declare dso_local i32 @bfa_mem_dma_phys(%struct.bfa_mem_dma_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
