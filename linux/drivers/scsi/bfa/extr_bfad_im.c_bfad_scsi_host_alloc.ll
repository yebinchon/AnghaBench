; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_scsi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_scsi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.bfad_im_port_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bfad_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BFAD_PORT_PHYS_BASE = common dso_local global i64 0, align 8
@bfad_im_scsi_host_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@bfad_im_vport_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@max_xfer_size = common dso_local global i32 0, align 4
@BFAD_MAX_SECTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @bfad_scsi_host_alloc(%struct.bfad_im_port_s* %0, %struct.bfad_s* %1) #0 {
  %3 = alloca %struct.bfad_im_port_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  store %struct.bfad_im_port_s* %0, %struct.bfad_im_port_s** %3, align 8
  store %struct.bfad_s* %1, %struct.bfad_s** %4, align 8
  %6 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BFAD_PORT_PHYS_BASE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.scsi_host_template* @bfad_im_scsi_host_template, %struct.scsi_host_template** %5, align 8
  br label %15

14:                                               ; preds = %2
  store %struct.scsi_host_template* @bfad_im_vport_template, %struct.scsi_host_template** %5, align 8
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* @max_xfer_size, align 4
  %17 = load i32, i32* @BFAD_MAX_SECTORS, align 4
  %18 = ashr i32 %17, 1
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @max_xfer_size, align 4
  %22 = shl i32 %21, 1
  %23 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %33 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %32, i32 4)
  ret %struct.Scsi_Host* %33
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
