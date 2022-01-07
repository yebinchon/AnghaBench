; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_unbuild_smp_ascb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_unbuild_smp_ascb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { %struct.TYPE_4__*, %struct.sas_task* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sas_task = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*)* @asd_unbuild_smp_ascb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_unbuild_smp_ascb(%struct.asd_ascb* %0) #0 {
  %2 = alloca %struct.asd_ascb*, align 8
  %3 = alloca %struct.sas_task*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %2, align 8
  %4 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %5 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %4, i32 0, i32 1
  %6 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  store %struct.sas_task* %6, %struct.sas_task** %3, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %8 = icmp ne %struct.sas_task* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %13 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @dma_unmap_sg(i32* %17, i32* %20, i32 1, i32 %21)
  %23 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %24 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %30 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_unmap_sg(i32* %28, i32* %31, i32 1, i32 %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
