; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_submit_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_submit_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"IOCB cmd ring:   wd4:x%08x wd6:x%08x wd7:x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32*, %struct.lpfc_iocbq*)* @lpfc_sli_submit_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_submit_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i32* %2, %struct.lpfc_iocbq* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.lpfc_iocbq* %3, %struct.lpfc_iocbq** %8, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LPFC_ELS_RING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_10__* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_10__* %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_10__* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %31, %21
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 1
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_10__* %51, i32* %52, i32 %55)
  %57 = call i32 (...) @wmb()
  %58 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %49
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %70 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %71 = call i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %68, %struct.lpfc_sli_ring* %69, %struct.lpfc_iocbq* %70)
  br label %76

72:                                               ; preds = %49
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %75 = call i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba* %73, %struct.lpfc_iocbq* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %95 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @writel(i32 %90, i32* %98)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
