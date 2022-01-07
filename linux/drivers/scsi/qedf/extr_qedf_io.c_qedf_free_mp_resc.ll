; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_free_mp_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_free_mp_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { %struct.TYPE_3__*, %struct.qedf_mp_req }
%struct.TYPE_3__ = type { %struct.qedf_ctx* }
%struct.qedf_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_mp_req = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ioreq*)* @qedf_free_mp_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_free_mp_resc(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca %struct.qedf_ioreq*, align 8
  %3 = alloca %struct.qedf_mp_req*, align 8
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %2, align 8
  %6 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %7 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %6, i32 0, i32 1
  store %struct.qedf_mp_req* %7, %struct.qedf_mp_req** %3, align 8
  %8 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %9 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.qedf_ctx*, %struct.qedf_ctx** %11, align 8
  store %struct.qedf_ctx* %12, %struct.qedf_ctx** %4, align 8
  store i32 4, i32* %5, align 4
  %13 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %14 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %24 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %27 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_free_coherent(i32* %21, i32 %22, i32* %25, i32 %28)
  %30 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %31 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %1
  %33 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %34 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %44 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %47 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_free_coherent(i32* %41, i32 %42, i32* %45, i32 %48)
  %50 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %51 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %54 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %63 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %64 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32* %61, i32 %62, i32* %65, i32 %68)
  %70 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %71 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %57, %52
  %73 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %74 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %83 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %84 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %87 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dma_free_coherent(i32* %81, i32 %82, i32* %85, i32 %88)
  %90 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %3, align 8
  %91 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
