; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_slot_index_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_slot_index_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32, i8* }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HISI_SAS_UNRESERVED_IPTT = common dso_local global i32 0, align 4
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, %struct.scsi_cmnd*)* @hisi_sas_slot_index_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_slot_index_alloc(%struct.hisi_hba* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = icmp ne %struct.scsi_cmnd* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @find_next_zero_bit(i8* %25, i32 %28, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %36 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %20
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HISI_SAS_UNRESERVED_IPTT, align 4
  %45 = call i32 @find_next_zero_bit(i8* %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %53 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %52, i32 0, i32 2
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %20
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @hisi_sas_slot_index_set(%struct.hisi_hba* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %65 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %67 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %66, i32 0, i32 2
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %51, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hisi_sas_slot_index_set(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
