; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_calc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_calc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_hba = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.lpfc_sli_ring* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_iocbq = type { i32, i64, i64 }
%struct.lpfc_io_buf = type { i64 }

@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_sli_ring*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_io_buf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %7 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %8 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LPFC_IO_FCP, align 4
  %11 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store %struct.lpfc_sli_ring* null, %struct.lpfc_sli_ring** %3, align 8
  br label %76

26:                                               ; preds = %15
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.lpfc_io_buf*
  store %struct.lpfc_io_buf* %37, %struct.lpfc_io_buf** %6, align 8
  %38 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %54, align 8
  store %struct.lpfc_sli_ring* %55, %struct.lpfc_sli_ring** %3, align 8
  br label %76

56:                                               ; preds = %2
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store %struct.lpfc_sli_ring* null, %struct.lpfc_sli_ring** %3, align 8
  br label %76

67:                                               ; preds = %56
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %74, align 8
  store %struct.lpfc_sli_ring* %75, %struct.lpfc_sli_ring** %3, align 8
  br label %76

76:                                               ; preds = %67, %66, %43, %25
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  ret %struct.lpfc_sli_ring* %77
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
