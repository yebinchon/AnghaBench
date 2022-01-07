; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ddp_set_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ddp_set_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32 }
%struct.cxgbit_sock = type { i32 }
%struct.cxgbi_task_tag_info = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@ULPMEM_IDATA_MAX_NPPODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, %struct.cxgbit_sock*, %struct.cxgbi_task_tag_info*)* @cxgbit_ddp_set_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_ddp_set_map(%struct.cxgbi_ppm* %0, %struct.cxgbit_sock* %1, %struct.cxgbi_task_tag_info* %2) #0 {
  %4 = alloca %struct.cxgbi_ppm*, align 8
  %5 = alloca %struct.cxgbit_sock*, align 8
  %6 = alloca %struct.cxgbi_task_tag_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %4, align 8
  store %struct.cxgbit_sock* %1, %struct.cxgbit_sock** %5, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %6, align 8
  %14 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %15 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %18 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %21 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %20, i32 0, i32 2
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  store %struct.scatterlist* %22, %struct.scatterlist** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %47, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %4, align 8
  %38 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %39 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @cxgbit_ppod_write_idata(%struct.cxgbi_ppm* %37, %struct.cxgbit_sock* %38, %struct.cxgbi_task_tag_info* %39, i32 %40, i32 %41, %struct.scatterlist** %11, i32* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %54

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %23

54:                                               ; preds = %45, %23
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @cxgbit_ppod_write_idata(%struct.cxgbi_ppm*, %struct.cxgbit_sock*, %struct.cxgbi_task_tag_info*, i32, i32, %struct.scatterlist**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
