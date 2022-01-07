; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.pm8001_hba_info*)* }
%struct.pm8001_hba_info = type { %struct.pm8001_hba_info*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@USI_MAX_MEMCNT = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_8__* null, align 8
@pm8001_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @pm8001_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_free(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  %4 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %5 = icmp ne %struct.pm8001_hba_info* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %84

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %67, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @USI_MAX_MEMCNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %14 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %12
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %29 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %36, %45
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %57 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(i32* %27, i64 %46, i32* %55, i32 %64)
  br label %66

66:                                               ; preds = %23, %12
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %8

70:                                               ; preds = %8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %72, align 8
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %75 = call i32 %73(%struct.pm8001_hba_info* %74)
  %76 = load i32, i32* @pm8001_wq, align 4
  %77 = call i32 @flush_workqueue(i32 %76)
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %79 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %78, i32 0, i32 0
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %79, align 8
  %81 = call i32 @kfree(%struct.pm8001_hba_info* %80)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %83 = call i32 @kfree(%struct.pm8001_hba_info* %82)
  br label %84

84:                                               ; preds = %70, %6
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
