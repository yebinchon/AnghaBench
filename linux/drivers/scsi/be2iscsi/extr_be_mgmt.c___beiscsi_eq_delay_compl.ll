; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c___beiscsi_eq_delay_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c___beiscsi_eq_delay_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.be_dma_mem }
%struct.be_dma_mem = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i32)* @__beiscsi_eq_delay_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__beiscsi_eq_delay_compl(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_dma_mem*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @__beiscsi_mcc_compl_status(%struct.beiscsi_hba* %6, i32 %7, i32* null, i32* null)
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.be_dma_mem* %16, %struct.be_dma_mem** %5, align 8
  %17 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dma_free_coherent(i32* %25, i64 %28, i32 %31, i32 %34)
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @__beiscsi_mcc_compl_status(%struct.beiscsi_hba*, i32, i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
