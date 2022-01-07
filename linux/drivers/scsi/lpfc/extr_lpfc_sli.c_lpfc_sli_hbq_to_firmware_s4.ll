; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.lpfc_queue = type { i32 }
%struct.hbq_dmabuf = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_rqe = type { i8*, i8* }

@LPFC_ELS_HBQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, %struct.hbq_dmabuf*)* @lpfc_sli_hbq_to_firmware_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_hbq_to_firmware_s4(%struct.lpfc_hba* %0, i32 %1, %struct.hbq_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hbq_dmabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_rqe, align 8
  %10 = alloca %struct.lpfc_rqe, align 8
  %11 = alloca %struct.lpfc_queue*, align 8
  %12 = alloca %struct.lpfc_queue*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hbq_dmabuf* %2, %struct.hbq_dmabuf** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %20, align 8
  store %struct.lpfc_queue* %21, %struct.lpfc_queue** %11, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.lpfc_queue*, %struct.lpfc_queue** %24, align 8
  store %struct.lpfc_queue* %25, %struct.lpfc_queue** %12, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %30 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @putPaddrLow(i32 %32)
  %34 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %9, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %36 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @putPaddrHigh(i32 %38)
  %40 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %9, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %42 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @putPaddrLow(i32 %44)
  %46 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %10, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %48 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @putPaddrHigh(i32 %50)
  %52 = getelementptr inbounds %struct.lpfc_rqe, %struct.lpfc_rqe* %10, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %54 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %55 = call i32 @lpfc_sli4_rq_put(%struct.lpfc_queue* %53, %struct.lpfc_queue* %54, %struct.lpfc_rqe* %9, %struct.lpfc_rqe* %10)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %17
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %78

60:                                               ; preds = %17
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %61, %63
  %65 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %66 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %7, align 8
  %68 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %69, i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %60, %58, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i32 @lpfc_sli4_rq_put(%struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_rqe*, %struct.lpfc_rqe*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
