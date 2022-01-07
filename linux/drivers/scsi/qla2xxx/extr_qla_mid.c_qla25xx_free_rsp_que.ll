; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_rsp_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_rsp_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rsp_que = type { i32, i32, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.rsp_que*)* @qla25xx_free_rsp_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_free_rsp_que(%struct.scsi_qla_host* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %11 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %14 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %19 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %26 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %31 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free_irq(i32 %29, i32* %34)
  %36 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %37 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %41 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %45 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %24, %17, %2
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %54 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %61 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %64 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dma_free_coherent(i32* %52, i32 %59, i32* %62, i64 %65)
  %67 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %68 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %70 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %48
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clear_bit(i32 %83, i32 %86)
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %73, %48
  %92 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %93 = call i32 @kfree(%struct.rsp_que* %92)
  store %struct.rsp_que* null, %struct.rsp_que** %4, align 8
  ret void
}

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
