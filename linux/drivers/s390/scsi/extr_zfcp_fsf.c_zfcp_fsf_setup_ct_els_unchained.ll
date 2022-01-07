; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_unchained.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_unchained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32 }
%struct.zfcp_qdio_req = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, %struct.zfcp_qdio_req*, %struct.scatterlist*, %struct.scatterlist*)* @zfcp_fsf_setup_ct_els_unchained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_setup_ct_els_unchained(%struct.zfcp_qdio* %0, %struct.zfcp_qdio_req* %1, %struct.scatterlist* %2, %struct.scatterlist* %3) #0 {
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca %struct.zfcp_qdio_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %5, align 8
  store %struct.zfcp_qdio_req* %1, %struct.zfcp_qdio_req** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %8, align 8
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %10 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %12 = call i32 @sg_virt(%struct.scatterlist* %11)
  %13 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @zfcp_qdio_fill_next(%struct.zfcp_qdio* %9, %struct.zfcp_qdio_req* %10, i32 %12, i32 %15)
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %18 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %20 = call i32 @sg_virt(%struct.scatterlist* %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @zfcp_qdio_fill_next(%struct.zfcp_qdio* %17, %struct.zfcp_qdio_req* %18, i32 %20, i32 %23)
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %26 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %27 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %25, %struct.zfcp_qdio_req* %26)
  ret void
}

declare dso_local i32 @zfcp_qdio_fill_next(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
