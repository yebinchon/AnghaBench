; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_iocbq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, %struct.lpfc_iocbq** }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"0317 iotag x%x is out of range: max iotag x%x wd0 x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_iocbq_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPFC_SLI_REV4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %18, i32 0, i32 1
  store i32* %19, i32** %10, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  store i32* %22, i32** %10, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %23
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ule i64 %34, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %44, i64 %45
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %46, align 8
  store %struct.lpfc_iocbq* %47, %struct.lpfc_iocbq** %8, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %40
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 2
  %57 = call i32 @list_del_init(i32* %56)
  %58 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %65 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_iocbq* %71, %struct.lpfc_iocbq** %4, align 8
  br label %91

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %72, %33, %23
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* @LOG_SLI, align 4
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %85, i32 0, i32 1
  %87 = bitcast %struct.TYPE_4__* %86 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %84, i32 %89)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %4, align 8
  br label %91

91:                                               ; preds = %73, %54
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  ret %struct.lpfc_iocbq* %92
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
