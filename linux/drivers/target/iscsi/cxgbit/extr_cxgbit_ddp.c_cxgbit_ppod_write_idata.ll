; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ppod_write_idata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ppod_write_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32 }
%struct.cxgbit_sock = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cxgbit_device* }
%struct.cxgbit_device = type { i32 }
%struct.cxgbi_task_tag_info = type { i32 }
%struct.scatterlist = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ulp_mem_io = type { i32 }
%struct.ulptx_idata = type { i32 }
%struct.cxgbi_pagepod = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, %struct.cxgbit_sock*, %struct.cxgbi_task_tag_info*, i32, i32, %struct.scatterlist**, i32*)* @cxgbit_ppod_write_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_ppod_write_idata(%struct.cxgbi_ppm* %0, %struct.cxgbit_sock* %1, %struct.cxgbi_task_tag_info* %2, i32 %3, i32 %4, %struct.scatterlist** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgbi_ppm*, align 8
  %10 = alloca %struct.cxgbit_sock*, align 8
  %11 = alloca %struct.cxgbi_task_tag_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.cxgbit_device*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.ulp_mem_io*, align 8
  %19 = alloca %struct.ulptx_idata*, align 8
  %20 = alloca %struct.cxgbi_pagepod*, align 8
  %21 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %9, align 8
  store %struct.cxgbit_sock* %1, %struct.cxgbit_sock** %10, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.scatterlist** %5, %struct.scatterlist*** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %23 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.cxgbit_device*, %struct.cxgbit_device** %24, align 8
  store %struct.cxgbit_device* %25, %struct.cxgbit_device** %16, align 8
  %26 = load %struct.cxgbit_device*, %struct.cxgbit_device** %16, align 8
  %27 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %31 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.sk_buff* @cxgbit_ppod_init_idata(%struct.cxgbit_device* %26, %struct.cxgbi_ppm* %27, i32 %28, i32 %29, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %70

39:                                               ; preds = %7
  %40 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ulp_mem_io*
  store %struct.ulp_mem_io* %43, %struct.ulp_mem_io** %18, align 8
  %44 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %18, align 8
  %45 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %44, i64 1
  %46 = bitcast %struct.ulp_mem_io* %45 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %46, %struct.ulptx_idata** %19, align 8
  %47 = load %struct.ulptx_idata*, %struct.ulptx_idata** %19, align 8
  %48 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %47, i64 1
  %49 = bitcast %struct.ulptx_idata* %48 to %struct.cxgbi_pagepod*
  store %struct.cxgbi_pagepod* %49, %struct.cxgbi_pagepod** %20, align 8
  store i32 0, i32* %21, align 4
  br label %50

50:                                               ; preds = %60, %39
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %56 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %11, align 8
  %57 = load %struct.scatterlist**, %struct.scatterlist*** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @cxgbit_set_one_ppod(%struct.cxgbi_pagepod* %55, %struct.cxgbi_task_tag_info* %56, %struct.scatterlist** %57, i32* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %21, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %21, align 4
  %63 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %64 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %63, i32 1
  store %struct.cxgbi_pagepod* %64, %struct.cxgbi_pagepod** %20, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %67 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %69 = call i32 @__skb_queue_tail(i32* %67, %struct.sk_buff* %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %36
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @cxgbit_ppod_init_idata(%struct.cxgbit_device*, %struct.cxgbi_ppm*, i32, i32, i32) #1

declare dso_local i32 @cxgbit_set_one_ppod(%struct.cxgbi_pagepod*, %struct.cxgbi_task_tag_info*, %struct.scatterlist**, i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
