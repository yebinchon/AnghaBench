; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtio_scsi_init_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtio_scsi_init_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_scsi_cmd_req = type { i32*, i64, i64, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VIRTIO_SCSI_S_SIMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, %struct.virtio_scsi_cmd_req*, %struct.scsi_cmnd*)* @virtio_scsi_init_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_scsi_init_hdr(%struct.virtio_device* %0, %struct.virtio_scsi_cmd_req* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.virtio_device*, align 8
  %5 = alloca %struct.virtio_scsi_cmd_req*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %4, align 8
  store %struct.virtio_scsi_cmd_req* %1, %struct.virtio_scsi_cmd_req** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %7 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %8 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %17 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = or i32 %25, 64
  %27 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %28 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %38 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  %41 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = ptrtoint %struct.scsi_cmnd* %42 to i64
  %44 = call i32 @cpu_to_virtio64(%struct.virtio_device* %41, i64 %43)
  %45 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %46 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @VIRTIO_SCSI_S_SIMPLE, align 4
  %48 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %49 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %51 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %5, align 8
  %53 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @cpu_to_virtio64(%struct.virtio_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
