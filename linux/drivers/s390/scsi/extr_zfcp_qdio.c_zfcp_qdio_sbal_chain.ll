; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer_element = type { i32, i32 }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_qdio_req = type { i64, i32, i64, i32, i32 }

@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_MORE_SBALS = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@ZFCP_QDIO_MAX_SBALS_PER_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qdio_buffer_element* (%struct.zfcp_qdio*, %struct.zfcp_qdio_req*)* @zfcp_qdio_sbal_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qdio_buffer_element* @zfcp_qdio_sbal_chain(%struct.zfcp_qdio* %0, %struct.zfcp_qdio_req* %1) #0 {
  %3 = alloca %struct.qdio_buffer_element*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_qdio_req*, align 8
  %6 = alloca %struct.qdio_buffer_element*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.zfcp_qdio_req* %1, %struct.zfcp_qdio_req** %5, align 8
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %8 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %9 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %7, %struct.zfcp_qdio_req* %8)
  store %struct.qdio_buffer_element* %9, %struct.qdio_buffer_element** %6, align 8
  %10 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %11 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %12 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %19 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.qdio_buffer_element* null, %struct.qdio_buffer_element** %3, align 8
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %25 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %26 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %24, %struct.zfcp_qdio_req* %25)
  store %struct.qdio_buffer_element* %26, %struct.qdio_buffer_element** %6, align 8
  %27 = load i32, i32* @SBAL_SFLAGS0_MORE_SBALS, align 4
  %28 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %29 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %33 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %37 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %42 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 8
  %49 = icmp sgt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %53 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %55 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %56 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %54, %struct.zfcp_qdio_req* %55)
  store %struct.qdio_buffer_element* %56, %struct.qdio_buffer_element** %6, align 8
  %57 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %61 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  store %struct.qdio_buffer_element* %64, %struct.qdio_buffer_element** %3, align 8
  br label %65

65:                                               ; preds = %23, %22
  %66 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %3, align 8
  ret %struct.qdio_buffer_element* %66
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.zfcp_qdio_req*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
