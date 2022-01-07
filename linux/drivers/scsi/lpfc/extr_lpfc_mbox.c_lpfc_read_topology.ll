; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@MBX_READ_TOPOLOGY = common dso_local global i32 0, align 4
@LPFC_ALPA_MAP_SIZE = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_read_topology(%struct.lpfc_hba* %0, %struct.TYPE_18__* %1, %struct.lpfc_dmabuf* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %6, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = call i32 @memset(%struct.TYPE_18__* %11, i32 0, i32 32)
  %13 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32, i32* @MBX_READ_TOPOLOGY, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @LPFC_ALPA_MAP_SIZE, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 %19, i32* %26, align 4
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @putPaddrHigh(i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @putPaddrLow(i32 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %46 = bitcast %struct.lpfc_dmabuf* %45 to i32*
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @OWN_HOST, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
