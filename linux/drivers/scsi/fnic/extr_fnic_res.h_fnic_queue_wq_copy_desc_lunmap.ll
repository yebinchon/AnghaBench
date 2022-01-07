; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_lunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_lunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_host_req = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FCPIO_LUNMAP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i8*, i32, i8*)* @fnic_queue_wq_copy_desc_lunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_copy_desc_lunmap(%struct.vnic_wq_copy* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.vnic_wq_copy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fcpio_host_req*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %11 = call %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy* %10)
  store %struct.fcpio_host_req* %11, %struct.fcpio_host_req** %9, align 8
  %12 = load i32, i32* @FCPIO_LUNMAP_REQ, align 4
  %13 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %14 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %17 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %20 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %24 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %22, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %30 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %9, align 8
  %35 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %39 = call i32 @vnic_wq_copy_post(%struct.vnic_wq_copy* %38)
  ret void
}

declare dso_local %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy*) #1

declare dso_local i32 @vnic_wq_copy_post(%struct.vnic_wq_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
