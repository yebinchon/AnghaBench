; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ulp_mem_io_set_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ulp_mem_io_set_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.ulp_mem_io = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.cxgb4_lld_info = type { i32 }
%struct.ulptx_idata = type { i8*, i8* }

@FW_ULPTX_WR = common dso_local global i32 0, align 4
@ULP_TX_MEM_WRITE = common dso_local global i32 0, align 4
@ULP_TX_SC_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.ulp_mem_io*, i32, i32, i32, i32)* @ulp_mem_io_set_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulp_mem_io_set_hdr(%struct.cxgbi_device* %0, %struct.ulp_mem_io* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cxgbi_device*, align 8
  %8 = alloca %struct.ulp_mem_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cxgb4_lld_info*, align 8
  %14 = alloca %struct.ulptx_idata*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %7, align 8
  store %struct.ulp_mem_io* %1, %struct.ulp_mem_io** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.cxgbi_device*, %struct.cxgbi_device** %7, align 8
  %16 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %15)
  store %struct.cxgb4_lld_info* %16, %struct.cxgb4_lld_info** %13, align 8
  %17 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %18 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %17, i64 1
  %19 = bitcast %struct.ulp_mem_io* %18 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %19, %struct.ulptx_idata** %14, align 8
  %20 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @INIT_ULPTX_WR(%struct.ulp_mem_io* %20, i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* @FW_ULPTX_WR, align 4
  %25 = call i32 @FW_WR_OP_V(i32 %24)
  %26 = call i32 @FW_WR_ATOMIC_V(i32 0)
  %27 = or i32 %25, %26
  %28 = call i8* @htonl(i32 %27)
  %29 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %30 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @ULP_TX_MEM_WRITE, align 4
  %33 = call i32 @ULPTX_CMD_V(i32 %32)
  %34 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %13, align 8
  %35 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_t4(i32 %36)
  %38 = call i32 @ULP_MEMIO_ORDER_V(i32 %37)
  %39 = or i32 %33, %38
  %40 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %13, align 8
  %41 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @is_t4(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @T5_ULP_MEMIO_IMM_V(i32 %46)
  %48 = or i32 %39, %47
  %49 = call i8* @htonl(i32 %48)
  %50 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %51 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = lshr i32 %52, 5
  %54 = call i32 @ULP_MEMIO_DATA_LEN_V(i32 %53)
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %57 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = lshr i32 %58, 5
  %60 = call i32 @ULP_MEMIO_ADDR_V(i32 %59)
  %61 = call i8* @htonl(i32 %60)
  %62 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %63 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = sub i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @DIV_ROUND_UP(i32 %67, i32 16)
  %69 = call i8* @htonl(i32 %68)
  %70 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %8, align 8
  %71 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @ULP_TX_SC_IMM, align 4
  %73 = call i32 @ULPTX_CMD_V(i32 %72)
  %74 = call i8* @htonl(i32 %73)
  %75 = load %struct.ulptx_idata*, %struct.ulptx_idata** %14, align 8
  %76 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.ulptx_idata*, %struct.ulptx_idata** %14, align 8
  %80 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  ret void
}

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local i32 @INIT_ULPTX_WR(%struct.ulp_mem_io*, i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_ATOMIC_V(i32) #1

declare dso_local i32 @ULPTX_CMD_V(i32) #1

declare dso_local i32 @ULP_MEMIO_ORDER_V(i32) #1

declare dso_local i32 @is_t4(i32) #1

declare dso_local i32 @T5_ULP_MEMIO_IMM_V(i32) #1

declare dso_local i32 @ULP_MEMIO_DATA_LEN_V(i32) #1

declare dso_local i32 @ULP_MEMIO_ADDR_V(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
