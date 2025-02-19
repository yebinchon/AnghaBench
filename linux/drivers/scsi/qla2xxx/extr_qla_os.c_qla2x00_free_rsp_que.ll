; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_rsp_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_rsp_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rsp_que = type { i32, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, %struct.rsp_que*)* @qla2x00_free_rsp_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_free_rsp_que(%struct.qla_hw_data* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %6 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %10 = icmp ne %struct.rsp_que* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %13 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %22 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %29 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %32 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(i32* %20, i32 %27, i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %16, %11, %8
  br label %64

36:                                               ; preds = %2
  %37 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %38 = icmp ne %struct.rsp_que* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %41 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %50 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %57 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %60 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dma_free_coherent(i32* %48, i32 %55, i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %44, %39, %36
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %66 = call i32 @kfree(%struct.rsp_que* %65)
  ret void
}

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
