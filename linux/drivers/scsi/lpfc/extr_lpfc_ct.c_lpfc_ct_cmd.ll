; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_iocbq = type opaque
%struct.ulp_bde64 = type { i32 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_iocbq.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32, i32)* @lpfc_ct_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_ct_cmd(%struct.lpfc_vport* %0, %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf* %2, %struct.lpfc_nodelist* %3, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lpfc_hba*, align 8
  %17 = alloca %struct.ulp_bde64*, align 8
  %18 = alloca %struct.lpfc_dmabuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf** %10, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %11, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %12, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %4, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %16, align 8
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %26 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %28, %struct.ulp_bde64** %17, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %30 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lpfc_sli_ct_request*
  %33 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %21, align 4
  %37 = load %struct.ulp_bde64*, %struct.ulp_bde64** %17, align 8
  %38 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %37, i32 1
  store %struct.ulp_bde64* %38, %struct.ulp_bde64** %17, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %40 = load i32, i32* %21, align 4
  %41 = load %struct.ulp_bde64*, %struct.ulp_bde64** %17, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.lpfc_dmabuf* @lpfc_alloc_ct_rsp(%struct.lpfc_hba* %39, i32 %40, %struct.ulp_bde64* %41, i32 %42, i32* %19)
  store %struct.lpfc_dmabuf* %43, %struct.lpfc_dmabuf** %18, align 8
  %44 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %45 = icmp ne %struct.lpfc_dmabuf* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %7
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %71

49:                                               ; preds = %7
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %19, align 4
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %53 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %54 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %55 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %56 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %13, align 8
  %57 = bitcast void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %56 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)*
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @lpfc_gen_req(%struct.lpfc_vport* %52, %struct.lpfc_dmabuf* %53, %struct.lpfc_dmabuf* %54, %struct.lpfc_dmabuf* %55, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)* %57, %struct.lpfc_nodelist* %58, i32 0, i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %66 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %67 = call i32 @lpfc_free_ct_rsp(%struct.lpfc_hba* %65, %struct.lpfc_dmabuf* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %71

70:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %64, %46
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_ct_rsp(%struct.lpfc_hba*, i32, %struct.ulp_bde64*, i32, i32*) #1

declare dso_local i32 @lpfc_gen_req(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)*, %struct.lpfc_nodelist*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_free_ct_rsp(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
