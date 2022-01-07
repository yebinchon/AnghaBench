; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ppod_init_idata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ppod_init_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cxgbit_device = type { i32 }
%struct.cxgbi_ppm = type { i32 }
%struct.ulp_mem_io = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.ulptx_idata = type { i8*, i8* }

@PPOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FW_ULPTX_WR = common dso_local global i32 0, align 4
@ULP_TX_MEM_WRITE = common dso_local global i32 0, align 4
@ULP_TX_SC_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.cxgbit_device*, %struct.cxgbi_ppm*, i32, i32, i32)* @cxgbit_ppod_init_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cxgbit_ppod_init_idata(%struct.cxgbit_device* %0, %struct.cxgbi_ppm* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cxgbit_device*, align 8
  %8 = alloca %struct.cxgbi_ppm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ulp_mem_io*, align 8
  %13 = alloca %struct.ulptx_idata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbit_device* %0, %struct.cxgbit_device** %7, align 8
  store %struct.cxgbi_ppm* %1, %struct.cxgbi_ppm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %8, align 8
  %22 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %20, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 56, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @roundup(i32 %31, i32 16)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %17, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %97

39:                                               ; preds = %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call %struct.ulp_mem_io* @__skb_put(%struct.sk_buff* %40, i32 %41)
  store %struct.ulp_mem_io* %42, %struct.ulp_mem_io** %12, align 8
  %43 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @INIT_ULPTX_WR(%struct.ulp_mem_io* %43, i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* @FW_ULPTX_WR, align 4
  %48 = call i32 @FW_WR_OP_V(i32 %47)
  %49 = call i32 @FW_WR_ATOMIC_V(i32 0)
  %50 = or i32 %48, %49
  %51 = call i8* @htonl(i32 %50)
  %52 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %53 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @ULP_TX_MEM_WRITE, align 4
  %56 = call i32 @ULPTX_CMD_V(i32 %55)
  %57 = call i32 @ULP_MEMIO_ORDER_V(i32 0)
  %58 = or i32 %56, %57
  %59 = call i32 @T5_ULP_MEMIO_IMM_V(i32 1)
  %60 = or i32 %58, %59
  %61 = call i8* @htonl(i32 %60)
  %62 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %63 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %15, align 4
  %65 = lshr i32 %64, 5
  %66 = call i32 @ULP_MEMIO_DATA_LEN_V(i32 %65)
  %67 = call i8* @htonl(i32 %66)
  %68 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %69 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = lshr i32 %70, 5
  %72 = call i32 @ULP_MEMIO_ADDR_V(i32 %71)
  %73 = call i8* @htonl(i32 %72)
  %74 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %75 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %16, align 4
  %77 = zext i32 %76 to i64
  %78 = sub i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @DIV_ROUND_UP(i32 %79, i32 16)
  %81 = call i8* @htonl(i32 %80)
  %82 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %83 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %85 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %84, i64 1
  %86 = bitcast %struct.ulp_mem_io* %85 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %86, %struct.ulptx_idata** %13, align 8
  %87 = load i32, i32* @ULP_TX_SC_IMM, align 4
  %88 = call i32 @ULPTX_CMD_V(i32 %87)
  %89 = call i8* @htonl(i32 %88)
  %90 = load %struct.ulptx_idata*, %struct.ulptx_idata** %13, align 8
  %91 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i8* @htonl(i32 %92)
  %94 = load %struct.ulptx_idata*, %struct.ulptx_idata** %13, align 8
  %95 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %6, align 8
  br label %97

97:                                               ; preds = %39, %38
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %98
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.ulp_mem_io* @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @INIT_ULPTX_WR(%struct.ulp_mem_io*, i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_ATOMIC_V(i32) #1

declare dso_local i32 @ULPTX_CMD_V(i32) #1

declare dso_local i32 @ULP_MEMIO_ORDER_V(i32) #1

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
