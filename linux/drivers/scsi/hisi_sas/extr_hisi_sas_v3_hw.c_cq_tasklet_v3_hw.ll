; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_cq_tasklet_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_cq_tasklet_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_cq = type { i64, i32, %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.hisi_sas_slot*, %struct.device*, %struct.hisi_sas_complete_v3_hdr** }
%struct.hisi_sas_slot = type { i64, i32 }
%struct.device = type { i32 }
%struct.hisi_sas_complete_v3_hdr = type { i32 }

@COMPL_Q_0_WR_PTR = common dso_local global i64 0, align 8
@CMPLT_HDR_IPTT_MSK = common dso_local global i64 0, align 8
@HISI_SAS_COMMAND_ENTRIES_V3_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"IPTT %d is invalid, discard it.\0A\00", align 1
@HISI_SAS_QUEUE_SLOTS = common dso_local global i64 0, align 8
@COMPL_Q_0_RD_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cq_tasklet_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_tasklet_v3_hw(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hisi_sas_cq*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.hisi_sas_slot*, align 8
  %6 = alloca %struct.hisi_sas_complete_v3_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_sas_complete_v3_hdr*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.hisi_sas_cq*
  store %struct.hisi_sas_cq* %15, %struct.hisi_sas_cq** %3, align 8
  %16 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %16, i32 0, i32 2
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %17, align 8
  store %struct.hisi_hba* %18, %struct.hisi_hba** %4, align 8
  %19 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 2
  %27 = load %struct.hisi_sas_complete_v3_hdr**, %struct.hisi_sas_complete_v3_hdr*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hisi_sas_complete_v3_hdr*, %struct.hisi_sas_complete_v3_hdr** %27, i64 %29
  %31 = load %struct.hisi_sas_complete_v3_hdr*, %struct.hisi_sas_complete_v3_hdr** %30, align 8
  store %struct.hisi_sas_complete_v3_hdr* %31, %struct.hisi_sas_complete_v3_hdr** %6, align 8
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %33 = load i64, i64* @COMPL_Q_0_WR_PTR, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 20, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i64 @hisi_sas_read32(%struct.hisi_hba* %32, i64 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %90, %1
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %39
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 1
  %46 = load %struct.device*, %struct.device** %45, align 8
  store %struct.device* %46, %struct.device** %11, align 8
  %47 = load %struct.hisi_sas_complete_v3_hdr*, %struct.hisi_sas_complete_v3_hdr** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.hisi_sas_complete_v3_hdr, %struct.hisi_sas_complete_v3_hdr* %47, i64 %48
  store %struct.hisi_sas_complete_v3_hdr* %49, %struct.hisi_sas_complete_v3_hdr** %10, align 8
  %50 = load %struct.hisi_sas_complete_v3_hdr*, %struct.hisi_sas_complete_v3_hdr** %10, align 8
  %51 = getelementptr inbounds %struct.hisi_sas_complete_v3_hdr, %struct.hisi_sas_complete_v3_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @CMPLT_HDR_IPTT_MSK, align 8
  %56 = and i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @HISI_SAS_COMMAND_ENTRIES_V3_HW, align 4
  %60 = icmp slt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %43
  %65 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %66 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %65, i32 0, i32 0
  %67 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %67, i64 %69
  store %struct.hisi_sas_slot* %70, %struct.hisi_sas_slot** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %73 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %78 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %79 = call i32 @slot_complete_v3_hw(%struct.hisi_hba* %77, %struct.hisi_sas_slot* %78)
  br label %84

80:                                               ; preds = %43
  %81 = load %struct.device*, %struct.device** %11, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %64
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* @HISI_SAS_QUEUE_SLOTS, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %89, %84
  br label %39

91:                                               ; preds = %39
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %94 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %96 = load i64, i64* @COMPL_Q_0_RD_PTR, align 8
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 20, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @hisi_sas_write32(%struct.hisi_hba* %95, i64 %100, i64 %101)
  ret void
}

declare dso_local i64 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @slot_complete_v3_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
