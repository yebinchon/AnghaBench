; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_els_wcqe_to_rspiocbq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_els_wcqe_to_rspiocbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.lpfc_wcqe_complete }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@lpfc_wcqe_c_request_tag = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"0386 ELS complete with no corresponding cmdiocb: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_iocbq*)* @lpfc_sli4_els_wcqe_to_rspiocbq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli4_els_wcqe_to_rspiocbq(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_iocbq*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_wcqe_complete*, align 8
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = call %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba* %10)
  store %struct.lpfc_sli_ring* %11, %struct.lpfc_sli_ring** %6, align 8
  %12 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %13 = icmp ne %struct.lpfc_sli_ring* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %3, align 8
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.lpfc_wcqe_complete* %23, %struct.lpfc_wcqe_complete** %8, align 8
  %24 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %31 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %32 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %33 = call i32 @bf_get(i32 %31, %struct.lpfc_wcqe_complete* %32)
  %34 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba* %29, %struct.lpfc_sli_ring* %30, i32 %33)
  store %struct.lpfc_iocbq* %34, %struct.lpfc_iocbq** %7, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %36 = icmp ne %struct.lpfc_iocbq* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %19
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load i32, i32* @LOG_SLI, align 4
  %45 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %46 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %52 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %60 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %58, %struct.lpfc_iocbq* %59)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %3, align 8
  br label %80

61:                                               ; preds = %19
  %62 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %62, i32 0, i32 0
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %69 = call i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %66, %struct.lpfc_sli_ring* %67, %struct.lpfc_iocbq* %68)
  %70 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %70, i32 0, i32 0
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %77 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %78 = call i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba* %74, %struct.lpfc_iocbq* %75, %struct.lpfc_iocbq* %76, %struct.lpfc_wcqe_complete* %77)
  %79 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %79, %struct.lpfc_iocbq** %3, align 8
  br label %80

80:                                               ; preds = %61, %41, %18
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %3, align 8
  ret %struct.lpfc_iocbq* %81
}

declare dso_local %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
