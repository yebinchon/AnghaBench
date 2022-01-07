; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_scsi_host_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_scsi_host_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfad_im_port_s = type { i32, i32 }

@BFAD_PORT_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_scsi_host_free(%struct.bfad_s* %0, %struct.bfad_im_port_s* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store %struct.bfad_im_port_s* %1, %struct.bfad_im_port_s** %4, align 8
  %5 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %6 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @flush_workqueue(i32 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %23 = call i32 @bfad_im_scsi_host_free(i32 %21, %struct.bfad_im_port_s* %22)
  %24 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %25 = call i32 @bfad_im_port_clean(%struct.bfad_im_port_s* %24)
  %26 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %27 = call i32 @kfree(%struct.bfad_im_port_s* %26)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @bfad_im_scsi_host_free(i32, %struct.bfad_im_port_s*) #1

declare dso_local i32 @bfad_im_port_clean(%struct.bfad_im_port_s*) #1

declare dso_local i32 @kfree(%struct.bfad_im_port_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
