; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_itnim_s = type { i32 }
%struct.bfad_itnim_s = type { i32, i32, %struct.bfa_fcs_itnim_s, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ITNIM_STATE_NONE = common dso_local global i32 0, align 4
@bfad_im_itnim_work_handler = common dso_local global i32 0, align 4
@BFAD_RPORT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_fcb_itnim_alloc(%struct.bfad_s* %0, %struct.bfa_fcs_itnim_s** %1, %struct.bfad_itnim_s** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfa_fcs_itnim_s**, align 8
  %7 = alloca %struct.bfad_itnim_s**, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store %struct.bfa_fcs_itnim_s** %1, %struct.bfa_fcs_itnim_s*** %6, align 8
  store %struct.bfad_itnim_s** %2, %struct.bfad_itnim_s*** %7, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.bfad_itnim_s* @kzalloc(i32 16, i32 %8)
  %10 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  store %struct.bfad_itnim_s* %9, %struct.bfad_itnim_s** %10, align 8
  %11 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  %12 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %11, align 8
  %13 = icmp eq %struct.bfad_itnim_s* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  %22 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %21, align 8
  %23 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  %25 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %24, align 8
  %26 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %25, i32 0, i32 2
  %27 = load %struct.bfa_fcs_itnim_s**, %struct.bfa_fcs_itnim_s*** %6, align 8
  store %struct.bfa_fcs_itnim_s* %26, %struct.bfa_fcs_itnim_s** %27, align 8
  %28 = load i32, i32* @ITNIM_STATE_NONE, align 4
  %29 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  %30 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %29, align 8
  %31 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.bfad_itnim_s**, %struct.bfad_itnim_s*** %7, align 8
  %33 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %32, align 8
  %34 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %33, i32 0, i32 0
  %35 = load i32, i32* @bfad_im_itnim_work_handler, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load i32, i32* @BFAD_RPORT_ONLINE, align 4
  %38 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %17, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.bfad_itnim_s* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
