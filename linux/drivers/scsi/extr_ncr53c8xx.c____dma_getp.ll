; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c____dma_getp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c____dma_getp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i64 }

@mp0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VTOB\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MEMO_PAGE_ORDER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @___dma_getp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @___dma_getp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = call %struct.TYPE_6__* @__m_calloc(i32* @mp0, i32 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @MEMO_PAGE_ORDER, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i64 @dma_alloc_coherent(i32 %14, i32 %17, i32* %6, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %11
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @VTOB_HASH_CODE(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %60

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = call i32 @__m_free(i32* @mp0, %struct.TYPE_6__* %57, i32 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  store i64 0, i64* %2, align 8
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local %struct.TYPE_6__* @__m_calloc(i32*, i32, i8*) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @VTOB_HASH_CODE(i64) #1

declare dso_local i32 @__m_free(i32*, %struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
