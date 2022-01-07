; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_wait_for_io_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_wait_for_io_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_XRI_EXCH_BUSY_WAIT_T1 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"6178 NVME IO not empty, cnt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nvme_wait_for_io_drain(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPFC_SLI_REV4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %1
  br label %76

18:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %73

36:                                               ; preds = %25
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %45, align 8
  store %struct.lpfc_sli_ring* %46, %struct.lpfc_sli_ring** %3, align 8
  %47 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %48 = icmp ne %struct.lpfc_sli_ring* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %73

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %71, %50
  %52 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %53 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %52, i32 0, i32 0
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* @LPFC_XRI_EXCH_BUSY_WAIT_T1, align 4
  %59 = call i32 @msleep(i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = urem i64 %62, 1000
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load i32, i32* @LOG_NVME_IOERR, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %65, %57
  br label %51

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %49, %35
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %19

76:                                               ; preds = %17, %19
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
