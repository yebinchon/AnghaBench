; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_set_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_set_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32, i32 }
%struct.cxgbi_sock = type { i32 }
%struct.cxgbi_task_tag_info = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.cxgbi_pagepod = type { i32 }
%struct.ulp_mem_io = type { i32 }
%struct.sk_buff = type { i32, i64 }

@PPOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@IPPOD_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPOD_PAGES_MAX = common dso_local global i32 0, align 4
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*)* @ddp_set_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_set_map(%struct.cxgbi_ppm* %0, %struct.cxgbi_sock* %1, %struct.cxgbi_task_tag_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbi_ppm*, align 8
  %6 = alloca %struct.cxgbi_sock*, align 8
  %7 = alloca %struct.cxgbi_task_tag_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.cxgbi_pagepod*, align 8
  %12 = alloca %struct.ulp_mem_io*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %5, align 8
  store %struct.cxgbi_sock* %1, %struct.cxgbi_sock** %6, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %7, align 8
  %17 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %18 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %21 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %24 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %23, i32 0, i32 2
  %25 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  store %struct.scatterlist* %25, %struct.scatterlist** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %30 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %28, %31
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %72, %3
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load i64, i64* @IPPOD_SIZE, align 8
  %39 = add i64 4, %38
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.sk_buff* @alloc_wr(i64 %39, i32 0, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %16, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ulp_mem_io_set_hdr(%struct.sk_buff* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ulp_mem_io*
  store %struct.ulp_mem_io* %54, %struct.ulp_mem_io** %12, align 8
  %55 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %12, align 8
  %56 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %55, i64 1
  %57 = bitcast %struct.ulp_mem_io* %56 to %struct.cxgbi_pagepod*
  store %struct.cxgbi_pagepod* %57, %struct.cxgbi_pagepod** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %11, align 8
  %62 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %7, align 8
  %63 = call i32 @cxgbi_ddp_set_one_ppod(%struct.cxgbi_pagepod* %61, %struct.cxgbi_task_tag_info* %62, %struct.scatterlist** %10, i32* %13)
  %64 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %68 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %71 = call i32 @cxgb3_ofld_send(i32 %69, %struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %47
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i64, i64* @IPPOD_SIZE, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  br label %33

82:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.sk_buff* @alloc_wr(i64, i32, i32) #1

declare dso_local i32 @ulp_mem_io_set_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_ddp_set_one_ppod(%struct.cxgbi_pagepod*, %struct.cxgbi_task_tag_info*, %struct.scatterlist**, i32*) #1

declare dso_local i32 @cxgb3_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
