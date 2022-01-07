; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_create_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_create_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.PVSCSISGElement* }
%struct.PVSCSISGElement = type { i64, i32, i32 }
%struct.scatterlist = type { i32 }

@PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_ctx*, %struct.scatterlist*, i32)* @pvscsi_create_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_create_sg(%struct.pvscsi_ctx* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.pvscsi_ctx*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.PVSCSISGElement*, align 8
  store %struct.pvscsi_ctx* %0, %struct.pvscsi_ctx** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT, align 4
  %11 = icmp ugt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.PVSCSISGElement*, %struct.PVSCSISGElement** %17, align 8
  %19 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %18, i64 0
  store %struct.PVSCSISGElement* %19, %struct.PVSCSISGElement** %8, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %26 = call i32 @sg_dma_address(%struct.scatterlist* %25)
  %27 = load %struct.PVSCSISGElement*, %struct.PVSCSISGElement** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %27, i64 %29
  %31 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %30, i32 0, i32 2
  store i32 %26, i32* %31, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = call i32 @sg_dma_len(%struct.scatterlist* %32)
  %34 = load %struct.PVSCSISGElement*, %struct.PVSCSISGElement** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %34, i64 %36
  %38 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 8
  %39 = load %struct.PVSCSISGElement*, %struct.PVSCSISGElement** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %39, i64 %41
  %43 = getelementptr inbounds %struct.PVSCSISGElement, %struct.PVSCSISGElement* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %48 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %5, align 8
  br label %20

49:                                               ; preds = %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
