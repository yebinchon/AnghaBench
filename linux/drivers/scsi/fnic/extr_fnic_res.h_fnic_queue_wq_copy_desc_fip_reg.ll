; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_fip_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_fip_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_host_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i8*, i8*, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FCPIO_FLOGI_FIP_REG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i8*, i8*, i32*, i32*, i8*, i8*)* @fnic_queue_wq_copy_desc_fip_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_copy_desc_fip_reg(%struct.vnic_wq_copy* %0, i8* %1, i8* %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.vnic_wq_copy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.fcpio_host_req*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %17 = call %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy* %16)
  store %struct.fcpio_host_req* %17, %struct.fcpio_host_req** %15, align 8
  %18 = load i32, i32* @FCPIO_FLOGI_FIP_REG, align 4
  %19 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %20 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 8
  %22 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %23 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %26 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %30 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %35 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %39 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @hton24(i32 %42, i8* %43)
  %45 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %46 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %49, i32* %50, i32 %51)
  %53 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %54 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %59 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %64 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  %67 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %68 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %71, i32* %72, i32 %73)
  %75 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %15, align 8
  %76 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %80 = call i32 @vnic_wq_copy_post(%struct.vnic_wq_copy* %79)
  ret void
}

declare dso_local %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy*) #1

declare dso_local i32 @hton24(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @vnic_wq_copy_post(%struct.vnic_wq_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
