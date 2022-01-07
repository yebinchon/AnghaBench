; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbals_from_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbals_from_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32 }
%struct.zfcp_qdio_req = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.qdio_buffer_element = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %0, %struct.zfcp_qdio_req* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca %struct.zfcp_qdio_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.qdio_buffer_element*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %5, align 8
  store %struct.zfcp_qdio_req* %1, %struct.zfcp_qdio_req** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %10 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %11 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %9, %struct.zfcp_qdio_req* %10)
  store %struct.qdio_buffer_element* %11, %struct.qdio_buffer_element** %8, align 8
  %12 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %16 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %54, %3
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = icmp ne %struct.scatterlist* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %24 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %25 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_next(%struct.zfcp_qdio* %23, %struct.zfcp_qdio_req* %24)
  store %struct.qdio_buffer_element* %25, %struct.qdio_buffer_element** %8, align 8
  %26 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %27 = icmp ne %struct.qdio_buffer_element* %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %22
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %30 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %33 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %6, align 8
  %39 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @zfcp_qdio_zero_sbals(i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %22
  %45 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %46 = call i32 @sg_virt(%struct.scatterlist* %45)
  %47 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %48 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %53 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %56 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %55)
  store %struct.scatterlist* %56, %struct.scatterlist** %7, align 8
  br label %19

57:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_next(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
