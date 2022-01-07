; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.h_zfcp_qdio_skip_to_last_sbale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.h_zfcp_qdio_skip_to_last_sbale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i64 }
%struct.zfcp_qdio_req = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, %struct.zfcp_qdio_req*)* @zfcp_qdio_skip_to_last_sbale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_skip_to_last_sbale(%struct.zfcp_qdio* %0, %struct.zfcp_qdio_req* %1) #0 {
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_qdio_req*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  store %struct.zfcp_qdio_req* %1, %struct.zfcp_qdio_req** %4, align 8
  %5 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
