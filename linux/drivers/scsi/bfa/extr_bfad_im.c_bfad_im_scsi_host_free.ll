; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_scsi_host_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_scsi_host_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }
%struct.bfad_im_port_s = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Free scsi%d\0A\00", align 1
@bfad_mutex = common dso_local global i32 0, align 4
@bfad_im_port_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_im_scsi_host_free(%struct.bfad_s* %0, %struct.bfad_im_port_s* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store %struct.bfad_im_port_s* %1, %struct.bfad_im_port_s** %4, align 8
  %5 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %6 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bfa_trc(%struct.bfad_s* %5, i32 %8)
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = load i32, i32* @bfa_log_level, align 4
  %13 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BFA_LOG(i32 %10, %struct.bfad_s* %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @fc_remove_host(%struct.TYPE_4__* %21)
  %23 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @scsi_remove_host(%struct.TYPE_4__* %25)
  %27 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @scsi_host_put(%struct.TYPE_4__* %29)
  %31 = call i32 @mutex_lock(i32* @bfad_mutex)
  %32 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @idr_remove(i32* @bfad_im_port_index, i32 %34)
  %36 = call i32 @mutex_unlock(i32* @bfad_mutex)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i32) #1

declare dso_local i32 @fc_remove_host(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
