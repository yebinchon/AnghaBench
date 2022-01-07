; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_set_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_set_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32 }
%struct.cxgbi_sock = type { i32 }
%struct.cxgbi_task_tag_info = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@ULPMEM_IDATA_MAX_NPPODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*)* @ddp_set_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_set_map(%struct.cxgbi_ppm* %0, %struct.cxgbi_sock* %1, %struct.cxgbi_task_tag_info* %2) #0 {
  %4 = alloca %struct.cxgbi_ppm*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cxgbi_task_tag_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %4, align 8
  store %struct.cxgbi_sock* %1, %struct.cxgbi_sock** %5, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %6, align 8
  %14 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %15 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %18 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %21 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %20, i32 0, i32 3
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  store %struct.scatterlist* %22, %struct.scatterlist** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %27 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %52, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %4, align 8
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %44 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ddp_ppod_write_idata(%struct.cxgbi_ppm* %42, %struct.cxgbi_sock* %43, %struct.cxgbi_task_tag_info* %44, i32 %45, i32 %46, %struct.scatterlist** %12, i32* %13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %59

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %28

59:                                               ; preds = %50, %28
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @ddp_ppod_write_idata(%struct.cxgbi_ppm*, %struct.cxgbi_sock*, %struct.cxgbi_task_tag_info*, i32, i32, %struct.scatterlist**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
