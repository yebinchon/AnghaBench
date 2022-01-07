; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_hbq_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_hbq_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hbq_entry = type { i32 }
%struct.lpfc_hba = type { i64*, %struct.hbq_s*, i32, i32 }
%struct.hbq_s = type { i64, i64, i64, i64, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"1802 HBQ %d: local_hbqGetIdx %u is > than hbqp->entry_count %u\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_hbq_entry* (%struct.lpfc_hba*, i64)* @lpfc_sli_next_hbq_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.lpfc_hbq_entry*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hbq_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %11, i64 %12
  store %struct.hbq_s* %13, %struct.hbq_s** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 3
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %18 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %21 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %26 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %30 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %35 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24, %2
  %37 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %38 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %41 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %36
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @le32_to_cpu(i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %58 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %60 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %63 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %47
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load i32, i32* @LOG_SLI, align 4
  %73 = load i32, i32* @LOG_VPORT, align 4
  %74 = or i32 %72, %73
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %77 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %80 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %75, i64 %78, i64 %81)
  %83 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  store %struct.lpfc_hbq_entry* null, %struct.lpfc_hbq_entry** %3, align 8
  br label %109

86:                                               ; preds = %47
  %87 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %88 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %91 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store %struct.lpfc_hbq_entry* null, %struct.lpfc_hbq_entry** %3, align 8
  br label %109

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %36
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 1
  %99 = load %struct.hbq_s*, %struct.hbq_s** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %99, i64 %100
  %102 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.lpfc_hbq_entry*
  %105 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %106 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %104, i64 %107
  store %struct.lpfc_hbq_entry* %108, %struct.lpfc_hbq_entry** %3, align 8
  br label %109

109:                                              ; preds = %96, %94, %69
  %110 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %3, align 8
  ret %struct.lpfc_hbq_entry* %110
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
