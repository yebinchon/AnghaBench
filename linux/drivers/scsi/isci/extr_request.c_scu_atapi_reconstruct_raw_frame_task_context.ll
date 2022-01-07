; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_scu_atapi_reconstruct_raw_frame_task_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_scu_atapi_reconstruct_raw_frame_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_12__, %struct.scu_task_context*, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.scu_task_context = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32 }
%struct.ata_device = type { i32 }

@ATAPI_CDB_LEN = common dso_local global i32 0, align 4
@FIS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @scu_atapi_reconstruct_raw_frame_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scu_atapi_reconstruct_raw_frame_task_context(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scu_task_context*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %6 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %7 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ata_device* @sas_to_ata_dev(i32 %10)
  store %struct.ata_device* %11, %struct.ata_device** %3, align 8
  %12 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  %19 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %20 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %19, i32 0, i32 1
  %21 = load %struct.scu_task_context*, %struct.scu_task_context** %20, align 8
  store %struct.scu_task_context* %21, %struct.scu_task_context** %5, align 8
  %22 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %23 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = call i32 @memset(%struct.TYPE_14__* %24, i32 0, i32 4)
  %26 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %27 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_14__* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @ATAPI_CDB_LEN, align 4
  %33 = call i32 @memcpy(i32* %30, i8* %31, i32 %32)
  %34 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %35 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = call i32 @memset(%struct.TYPE_14__* %36, i32 0, i32 4)
  %38 = load i32, i32* @FIS_DATA, align 4
  %39 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %40 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %44 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %47 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local %struct.ata_device* @sas_to_ata_dev(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
