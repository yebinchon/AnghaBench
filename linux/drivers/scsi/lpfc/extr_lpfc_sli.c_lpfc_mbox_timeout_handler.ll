; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_mbox_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_mbox_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_6__*, %struct.lpfc_sli }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_sli = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"0353 Active Mailbox cleared - mailbox timeout exiting\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"0310 Mailbox command x%x timeout Data: x%x x%x x%px\0A\00", align 1
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@LPFC_LINK_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"0345 Resetting board due to mailbox timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbox_timeout_handler(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 3
  store %struct.lpfc_sli* %11, %struct.lpfc_sli** %5, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = call i64 @lpfc_sli4_process_missed_mbox_completions(%struct.lpfc_hba* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %4, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load i32, i32* @LOG_MBOX, align 4
  %33 = load i32, i32* @LOG_SLI, align 4
  %34 = or i32 %32, %33
  %35 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  br label %108

39:                                               ; preds = %23
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* @LOG_MBOX, align 4
  %43 = load i32, i32* @LOG_SLI, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %52, i32 %56, %struct.TYPE_8__* %60)
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  %85 = call i32 @spin_lock_irq(i32* %84)
  %86 = load i32, i32* @LPFC_LINK_UNKNOWN, align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_irq(i32* %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = call i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_MBOX, align 4
  %103 = load i32, i32* @LOG_SLI, align 4
  %104 = or i32 %102, %103
  %105 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = call i32 @lpfc_reset_hba(%struct.lpfc_hba* %106)
  br label %108

108:                                              ; preds = %39, %29, %15
  ret void
}

declare dso_local i64 @lpfc_sli4_process_missed_mbox_completions(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_reset_hba(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
