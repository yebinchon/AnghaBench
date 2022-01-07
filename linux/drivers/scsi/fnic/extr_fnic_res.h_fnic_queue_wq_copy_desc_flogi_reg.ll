; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_flogi_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_flogi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_host_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FCPIO_FLOGI_REG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i32, i32, i32, i32*)* @fnic_queue_wq_copy_desc_flogi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_copy_desc_flogi_reg(%struct.vnic_wq_copy* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vnic_wq_copy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fcpio_host_req*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %6, align 8
  %13 = call %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy* %12)
  store %struct.fcpio_host_req* %13, %struct.fcpio_host_req** %11, align 8
  %14 = load i32, i32* @FCPIO_FLOGI_REG, align 4
  %15 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %16 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %19 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %22 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %26 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %32 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 8
  %35 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %36 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %40 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @hton24(i32 %43, i32 %44)
  %46 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %11, align 8
  %47 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %50, i32* %51, i32 %52)
  %54 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %6, align 8
  %55 = call i32 @vnic_wq_copy_post(%struct.vnic_wq_copy* %54)
  ret void
}

declare dso_local %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @vnic_wq_copy_post(%struct.vnic_wq_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
