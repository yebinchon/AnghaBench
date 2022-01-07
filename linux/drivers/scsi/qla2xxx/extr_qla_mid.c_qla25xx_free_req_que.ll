; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_req_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_req_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.req_que = type { i32, i32, %struct.req_que*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.req_que*)* @qla25xx_free_req_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_free_req_que(%struct.scsi_qla_host* %0, %struct.req_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.req_que*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.req_que* %1, %struct.req_que** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.req_que*, %struct.req_que** %4, align 8
  %11 = getelementptr inbounds %struct.req_que, %struct.req_que* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.req_que*, %struct.req_que** %4, align 8
  %18 = getelementptr inbounds %struct.req_que, %struct.req_que* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load %struct.req_que*, %struct.req_que** %4, align 8
  %25 = getelementptr inbounds %struct.req_que, %struct.req_que* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.req_que*, %struct.req_que** %4, align 8
  %28 = getelementptr inbounds %struct.req_que, %struct.req_que* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dma_free_coherent(i32* %16, i32 %23, i32* %26, i64 %29)
  %31 = load %struct.req_que*, %struct.req_que** %4, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.req_que*, %struct.req_que** %4, align 8
  %34 = getelementptr inbounds %struct.req_que, %struct.req_que* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clear_bit(i32 %47, i32 %50)
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %37, %2
  %56 = load %struct.req_que*, %struct.req_que** %4, align 8
  %57 = getelementptr inbounds %struct.req_que, %struct.req_que* %56, i32 0, i32 2
  %58 = load %struct.req_que*, %struct.req_que** %57, align 8
  %59 = call i32 @kfree(%struct.req_que* %58)
  %60 = load %struct.req_que*, %struct.req_que** %4, align 8
  %61 = call i32 @kfree(%struct.req_que* %60)
  store %struct.req_que* null, %struct.req_que** %4, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.req_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
