; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dsd.h_append_dsd64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dsd.h_append_dsd64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsd64 = type { i32, i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsd64**, %struct.scatterlist*)* @append_dsd64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_dsd64(%struct.dsd64** %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.dsd64**, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.dsd64** %0, %struct.dsd64*** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %5 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %6 = call i32 @sg_dma_address(%struct.scatterlist* %5)
  %7 = load %struct.dsd64**, %struct.dsd64*** %3, align 8
  %8 = load %struct.dsd64*, %struct.dsd64** %7, align 8
  %9 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %8, i32 0, i32 1
  %10 = call i32 @put_unaligned_le64(i32 %6, i32* %9)
  %11 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %12 = call i32 @sg_dma_len(%struct.scatterlist* %11)
  %13 = load %struct.dsd64**, %struct.dsd64*** %3, align 8
  %14 = load %struct.dsd64*, %struct.dsd64** %13, align 8
  %15 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %14, i32 0, i32 0
  %16 = call i32 @put_unaligned_le32(i32 %12, i32* %15)
  %17 = load %struct.dsd64**, %struct.dsd64*** %3, align 8
  %18 = load %struct.dsd64*, %struct.dsd64** %17, align 8
  %19 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %18, i32 1
  store %struct.dsd64* %19, %struct.dsd64** %17, align 8
  ret void
}

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
