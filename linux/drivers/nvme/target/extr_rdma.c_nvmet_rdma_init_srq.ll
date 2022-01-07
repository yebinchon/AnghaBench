; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_init_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_init_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_device = type { i64, %struct.ib_srq*, %struct.ib_srq*, i32, i64 }
%struct.ib_srq = type { i32 }
%struct.ib_srq_init_attr = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@IB_SRQT_BASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SRQ requested but not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_device*)* @nvmet_rdma_init_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_init_srq(%struct.nvmet_rdma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_rdma_device*, align 8
  %4 = alloca %struct.ib_srq_init_attr, align 8
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_device** %3, align 8
  %9 = bitcast %struct.ib_srq_init_attr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  store i64 4095, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 1, %15
  %17 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @IB_SRQT_BASIC, align 4
  %22 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.ib_srq* @ib_create_srq(i32 %25, %struct.ib_srq_init_attr* %4)
  store %struct.ib_srq* %26, %struct.ib_srq** %5, align 8
  %27 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %28 = call i64 @IS_ERR(%struct.ib_srq* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %90

32:                                               ; preds = %1
  %33 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.ib_srq* @nvmet_rdma_alloc_cmds(%struct.nvmet_rdma_device* %33, i64 %34, i32 0)
  %36 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %37 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %36, i32 0, i32 1
  store %struct.ib_srq* %35, %struct.ib_srq** %37, align 8
  %38 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %39 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %38, i32 0, i32 1
  %40 = load %struct.ib_srq*, %struct.ib_srq** %39, align 8
  %41 = call i64 @IS_ERR(%struct.ib_srq* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %45 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %44, i32 0, i32 1
  %46 = load %struct.ib_srq*, %struct.ib_srq** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.ib_srq* %46)
  store i32 %47, i32* %7, align 4
  br label %86

48:                                               ; preds = %32
  %49 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %50 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %51 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %50, i32 0, i32 2
  store %struct.ib_srq* %49, %struct.ib_srq** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %54 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %73, %48
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %62 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %63 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %62, i32 0, i32 1
  %64 = load %struct.ib_srq*, %struct.ib_srq** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %64, i64 %66
  %68 = call i32 @nvmet_rdma_post_recv(%struct.nvmet_rdma_device* %61, %struct.ib_srq* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %77

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %55

76:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %90

77:                                               ; preds = %71
  %78 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %79 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %80 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %79, i32 0, i32 1
  %81 = load %struct.ib_srq*, %struct.ib_srq** %80, align 8
  %82 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %83 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @nvmet_rdma_free_cmds(%struct.nvmet_rdma_device* %78, %struct.ib_srq* %81, i64 %84, i32 0)
  br label %86

86:                                               ; preds = %77, %43
  %87 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %88 = call i32 @ib_destroy_srq(%struct.ib_srq* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %76, %30
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_srq* @ib_create_srq(i32, %struct.ib_srq_init_attr*) #2

declare dso_local i64 @IS_ERR(%struct.ib_srq*) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local %struct.ib_srq* @nvmet_rdma_alloc_cmds(%struct.nvmet_rdma_device*, i64, i32) #2

declare dso_local i32 @PTR_ERR(%struct.ib_srq*) #2

declare dso_local i32 @nvmet_rdma_post_recv(%struct.nvmet_rdma_device*, %struct.ib_srq*) #2

declare dso_local i32 @nvmet_rdma_free_cmds(%struct.nvmet_rdma_device*, %struct.ib_srq*, i64, i32) #2

declare dso_local i32 @ib_destroy_srq(%struct.ib_srq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
