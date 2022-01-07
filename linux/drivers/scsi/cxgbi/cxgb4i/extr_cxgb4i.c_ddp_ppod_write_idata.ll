; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_ppod_write_idata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_ppod_write_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32 }
%struct.cxgbi_sock = type { i32, i32, i32, %struct.cxgbi_device* }
%struct.cxgbi_device = type { i32 }
%struct.cxgbi_task_tag_info = type { i32 }
%struct.scatterlist = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ulp_mem_io = type { i32 }
%struct.ulptx_idata = type { i32 }
%struct.cxgbi_pagepod = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SKCBF_TX_MEM_WRITE = common dso_local global i32 0, align 4
@SKCBF_TX_FLAG_COMPL = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*, i32, i32, %struct.scatterlist**, i32*)* @ddp_ppod_write_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_ppod_write_idata(%struct.cxgbi_ppm* %0, %struct.cxgbi_sock* %1, %struct.cxgbi_task_tag_info* %2, i32 %3, i32 %4, %struct.scatterlist** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgbi_ppm*, align 8
  %10 = alloca %struct.cxgbi_sock*, align 8
  %11 = alloca %struct.cxgbi_task_tag_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.cxgbi_device*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.ulp_mem_io*, align 8
  %19 = alloca %struct.ulptx_idata*, align 8
  %20 = alloca %struct.cxgbi_pagepod*, align 8
  %21 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %9, align 8
  store %struct.cxgbi_sock* %1, %struct.cxgbi_sock** %10, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.scatterlist** %5, %struct.scatterlist*** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 3
  %24 = load %struct.cxgbi_device*, %struct.cxgbi_device** %23, align 8
  store %struct.cxgbi_device* %24, %struct.cxgbi_device** %16, align 8
  %25 = load %struct.cxgbi_device*, %struct.cxgbi_device** %16, align 8
  %26 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %30 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.sk_buff* @ddp_ppod_init_idata(%struct.cxgbi_device* %25, %struct.cxgbi_ppm* %26, i32 %27, i32 %28, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %17, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %86

38:                                               ; preds = %7
  %39 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ulp_mem_io*
  store %struct.ulp_mem_io* %42, %struct.ulp_mem_io** %18, align 8
  %43 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %18, align 8
  %44 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %43, i64 1
  %45 = bitcast %struct.ulp_mem_io* %44 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %45, %struct.ulptx_idata** %19, align 8
  %46 = load %struct.ulptx_idata*, %struct.ulptx_idata** %19, align 8
  %47 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %46, i64 1
  %48 = bitcast %struct.ulptx_idata* %47 to %struct.cxgbi_pagepod*
  store %struct.cxgbi_pagepod* %48, %struct.cxgbi_pagepod** %20, align 8
  store i32 0, i32* %21, align 4
  br label %49

49:                                               ; preds = %59, %38
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %55 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %11, align 8
  %56 = load %struct.scatterlist**, %struct.scatterlist*** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @cxgbi_ddp_set_one_ppod(%struct.cxgbi_pagepod* %54, %struct.cxgbi_task_tag_info* %55, %struct.scatterlist** %56, i32* %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %21, align 4
  %62 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %63 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %62, i32 1
  store %struct.cxgbi_pagepod* %63, %struct.cxgbi_pagepod** %20, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %66 = load i32, i32* @SKCBF_TX_MEM_WRITE, align 4
  %67 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %69 = load i32, i32* @SKCBF_TX_FLAG_COMPL, align 4
  %70 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %72 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %74 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_wr_txq(%struct.sk_buff* %71, i32 %72, i32 %75)
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %82 = call i32 @cxgbi_sock_skb_entail(%struct.cxgbi_sock* %80, %struct.sk_buff* %81)
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %10, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %64, %35
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.sk_buff* @ddp_ppod_init_idata(%struct.cxgbi_device*, %struct.cxgbi_ppm*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_ddp_set_one_ppod(%struct.cxgbi_pagepod*, %struct.cxgbi_task_tag_info*, %struct.scatterlist**, i32*) #1

declare dso_local i32 @cxgbi_skcb_set_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_skb_entail(%struct.cxgbi_sock*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
