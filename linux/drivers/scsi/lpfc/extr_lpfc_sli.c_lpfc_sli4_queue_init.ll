; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_10__, %struct.lpfc_sli }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32, i32, i32, i64, i8*, i64 }
%struct.TYPE_8__ = type { %struct.lpfc_sli_ring* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli = type { i32, i32 }

@LPFC_FCP_RING = common dso_local global i8* null, align 8
@LPFC_ELS_RING = common dso_local global i8* null, align 8
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_queue_init(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 4
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %11, i32 0, i32 1
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %14, i32 0, i32 0
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %54, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %33, align 8
  store %struct.lpfc_sli_ring* %34, %struct.lpfc_sli_ring** %4, align 8
  %35 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** @LPFC_FCP_RING, align 8
  %38 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %42, i32 0, i32 3
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %45, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_init(i32* %52)
  br label %54

54:                                               ; preds = %23
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %62, align 8
  store %struct.lpfc_sli_ring* %63, %struct.lpfc_sli_ring** %4, align 8
  %64 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %65 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load i8*, i8** @LPFC_ELS_RING, align 8
  %67 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %71, i32 0, i32 3
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %75 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %74, i32 0, i32 2
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 1
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %80, i32 0, i32 0
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %57
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %94, align 8
  store %struct.lpfc_sli_ring* %95, %struct.lpfc_sli_ring** %4, align 8
  %96 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load i8*, i8** @LPFC_ELS_RING, align 8
  %99 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %102 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %103, i32 0, i32 3
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %107 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %106, i32 0, i32 2
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %110 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %109, i32 0, i32 1
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %112, i32 0, i32 0
  %114 = call i32 @spin_lock_init(i32* %113)
  br label %115

115:                                              ; preds = %89, %57
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 2
  %118 = call i32 @spin_unlock_irq(i32* %117)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
