; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_pri_list_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_pri_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.lpfc_fcf_pri* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_fcf_pri = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"3058 deleting idx x%x pri x%x flg x%x\0A\00", align 1
@LPFC_FCF_ON_PRI_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i64)* @lpfc_sli4_fcf_pri_list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_fcf_pri_list_del(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpfc_fcf_pri*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %9, i64 %10
  store %struct.lpfc_fcf_pri* %11, %struct.lpfc_fcf_pri** %5, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @LOG_FIP, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %19, i32 %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LPFC_FCF_ON_PRI_LIST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %2
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %35
  %53 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %54 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %53, i32 0, i32 1
  %55 = call i32 @list_del_init(i32* %54)
  %56 = load i32, i32* @LPFC_FCF_ON_PRI_LIST, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %2
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
