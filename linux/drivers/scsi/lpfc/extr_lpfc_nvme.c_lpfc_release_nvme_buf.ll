; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_release_nvme_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_release_nvme_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_io_buf = type { i32, i32, %struct.TYPE_4__, %struct.lpfc_sli4_hdw_queue*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lpfc_sli4_hdw_queue = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LPFC_SBUF_BUMP_QDEPTH = common dso_local global i32 0, align 4
@LPFC_SBUF_XBUSY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"6310 XB release deferred for ox_id x%x on reqtag x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_release_nvme_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_release_nvme_buf(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LPFC_SBUF_BUMP_QDEPTH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @atomic_dec(i32* %22)
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %25, i32 0, i32 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %26, align 8
  %27 = load i32, i32* @LPFC_SBUF_BUMP_QDEPTH, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %33, i32 0, i32 3
  %35 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %34, align 8
  store %struct.lpfc_sli4_hdw_queue* %35, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %36 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LPFC_SBUF_XBUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %24
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load i32, i32* @LOG_NVME_ABTS, align 4
  %46 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %59, i32 0, i32 1
  %61 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %61, i32 0, i32 2
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %77

72:                                               ; preds = %24
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %75 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %5, align 8
  %76 = call i32 @lpfc_release_io_buf(%struct.lpfc_hba* %73, %struct.lpfc_io_buf* %74, %struct.lpfc_sli4_hdw_queue* %75)
  br label %77

77:                                               ; preds = %72, %42
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_release_io_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*, %struct.lpfc_sli4_hdw_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
