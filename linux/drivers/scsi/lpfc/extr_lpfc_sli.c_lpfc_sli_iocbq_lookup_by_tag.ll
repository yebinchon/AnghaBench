; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup_by_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32, i32 }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.lpfc_iocbq** }
%struct.lpfc_sli_ring = type { i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"0372 iotag x%x lookup error: max iotag (x%x) iocb_flag x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i64)* @lpfc_sli_iocbq_lookup_by_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i64 %2) #0 {
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LPFC_SLI_REV4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %17, i32 0, i32 1
  store i32* %18, i32** %9, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 2
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ule i64 %29, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %28
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %39, i64 %40
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %41, align 8
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %8, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %35
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 1
  %52 = call i32 @list_del_init(i32* %51)
  %53 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_iocbq* %66, %struct.lpfc_iocbq** %4, align 8
  br label %90

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67, %28, %22
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @LOG_SLI, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %81 = icmp ne %struct.lpfc_iocbq* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %87

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 65535, %86 ]
  %89 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %75, i64 %79, i32 %88)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %4, align 8
  br label %90

90:                                               ; preds = %87, %49
  %91 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  ret %struct.lpfc_iocbq* %91
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
