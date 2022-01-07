; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_return_abnormal_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_return_abnormal_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { %struct.TYPE_4__*, %struct.st_ccb* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.st_ccb = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, i32)* @return_abnormal_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_abnormal_state(%struct.st_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.st_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_ccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.st_hba* %0, %struct.st_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %9 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %64, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %18 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %15
  %24 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %25 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %24, i32 0, i32 1
  %26 = load %struct.st_ccb*, %struct.st_ccb** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %26, i64 %27
  store %struct.st_ccb* %28, %struct.st_ccb** %5, align 8
  %29 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %30 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %64

34:                                               ; preds = %23
  %35 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %36 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %38 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %43 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @scsi_dma_unmap(%struct.TYPE_5__* %44)
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %49 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %53 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %55, align 8
  %57 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %58 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 %56(%struct.TYPE_5__* %59)
  %61 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %62 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %61, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %62, align 8
  br label %63

63:                                               ; preds = %41, %34
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %15

67:                                               ; preds = %15
  %68 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %69 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32 %72, i64 %73)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
