; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_cq_interrupt_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_cq_interrupt_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_cq = type { i32, i64, %struct.hisi_hba* }
%struct.hisi_hba = type { i32, %struct.hisi_sas_slot*, i64* }
%struct.hisi_sas_slot = type { i64, i32 }
%struct.hisi_sas_complete_v1_hdr = type { i32 }

@OQ_INT_SRC = common dso_local global i64 0, align 8
@COMPL_Q_0_WR_PTR = common dso_local global i64 0, align 8
@CMPLT_HDR_IPTT_MSK = common dso_local global i64 0, align 8
@CMPLT_HDR_IPTT_OFF = common dso_local global i64 0, align 8
@HISI_SAS_QUEUE_SLOTS = common dso_local global i64 0, align 8
@COMPL_Q_0_RD_PTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cq_interrupt_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cq_interrupt_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_cq*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.hisi_sas_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_complete_v1_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hisi_sas_complete_v1_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.hisi_sas_cq*
  store %struct.hisi_sas_cq* %16, %struct.hisi_sas_cq** %5, align 8
  %17 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %5, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %17, i32 0, i32 2
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %18, align 8
  store %struct.hisi_hba* %19, %struct.hisi_hba** %6, align 8
  %20 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %5, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.hisi_sas_complete_v1_hdr*
  store %struct.hisi_sas_complete_v1_hdr* %30, %struct.hisi_sas_complete_v1_hdr** %9, align 8
  %31 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %5, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %35 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %38 = load i64, i64* @OQ_INT_SRC, align 8
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = call i32 @hisi_sas_write32(%struct.hisi_hba* %37, i64 %38, i64 %41)
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %44 = load i64, i64* @COMPL_Q_0_WR_PTR, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 20, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i64 @hisi_sas_read32(%struct.hisi_hba* %43, i64 %48)
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %88, %2
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load %struct.hisi_sas_complete_v1_hdr*, %struct.hisi_sas_complete_v1_hdr** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.hisi_sas_complete_v1_hdr, %struct.hisi_sas_complete_v1_hdr* %55, i64 %56
  store %struct.hisi_sas_complete_v1_hdr* %57, %struct.hisi_sas_complete_v1_hdr** %12, align 8
  %58 = load %struct.hisi_sas_complete_v1_hdr*, %struct.hisi_sas_complete_v1_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.hisi_sas_complete_v1_hdr, %struct.hisi_sas_complete_v1_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @CMPLT_HDR_IPTT_MSK, align 8
  %64 = and i64 %62, %63
  %65 = load i64, i64* @CMPLT_HDR_IPTT_OFF, align 8
  %66 = lshr i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %69 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %68, i32 0, i32 1
  %70 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %70, i64 %72
  store %struct.hisi_sas_slot* %73, %struct.hisi_sas_slot** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %79 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %81 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %82 = call i32 @slot_complete_v1_hw(%struct.hisi_hba* %80, %struct.hisi_sas_slot* %81)
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @HISI_SAS_QUEUE_SLOTS, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %54
  store i64 0, i64* %10, align 8
  br label %88

88:                                               ; preds = %87, %54
  br label %50

89:                                               ; preds = %50
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %5, align 8
  %92 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %94 = load i64, i64* @COMPL_Q_0_RD_PTR, align 8
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 20, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @hisi_sas_write32(%struct.hisi_hba* %93, i64 %98, i64 %99)
  %101 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %102 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i64) #1

declare dso_local i64 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @slot_complete_v1_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
