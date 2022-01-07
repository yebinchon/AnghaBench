; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_bdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_bdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@QEDF_BDQ_SIZE = common dso_local global i32 0, align 4
@QEDF_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_free_bdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_free_bdq(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  %4 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_free_coherent(i32* %12, i32 %13, i64 %16, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32* %30, i32 %33, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %26, %21
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @QEDF_BDQ_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %46
  %57 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* @QEDF_BDQ_BUF_SIZE, align 4
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dma_free_coherent(i32* %60, i32 %61, i64 %69, i32 %77)
  br label %79

79:                                               ; preds = %56, %46
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %42

83:                                               ; preds = %42
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
