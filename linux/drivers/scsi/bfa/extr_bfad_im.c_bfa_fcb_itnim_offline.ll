; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_itnim_s = type { i32, i32, i32, i32, i32, %struct.bfad_im_s* }
%struct.bfad_im_s = type { i32 }
%struct.bfad_port_s = type { i32, i32, %struct.bfad_s* }
%struct.bfad_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFAD_PORT_DELETE = common dso_local global i32 0, align 4
@ITNIM_STATE_OFFLINE = common dso_local global i32 0, align 4
@ITNIM_STATE_OFFLINE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcb_itnim_offline(%struct.bfad_itnim_s* %0) #0 {
  %2 = alloca %struct.bfad_itnim_s*, align 8
  %3 = alloca %struct.bfad_port_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.bfad_im_s*, align 8
  store %struct.bfad_itnim_s* %0, %struct.bfad_itnim_s** %2, align 8
  %6 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %6, i32 0, i32 5
  %8 = load %struct.bfad_im_s*, %struct.bfad_im_s** %7, align 8
  store %struct.bfad_im_s* %8, %struct.bfad_im_s** %5, align 8
  %9 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %9, i32 0, i32 4
  %11 = call %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32* %10)
  store %struct.bfad_port_s* %11, %struct.bfad_port_s** %3, align 8
  %12 = load %struct.bfad_port_s*, %struct.bfad_port_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %12, i32 0, i32 2
  %14 = load %struct.bfad_s*, %struct.bfad_s** %13, align 8
  store %struct.bfad_s* %14, %struct.bfad_s** %4, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.bfad_port_s*, %struct.bfad_port_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %1
  %30 = load i32, i32* @ITNIM_STATE_OFFLINE, align 4
  %31 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %55

33:                                               ; preds = %22
  %34 = load %struct.bfad_port_s*, %struct.bfad_port_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ITNIM_STATE_OFFLINE_PENDING, align 4
  %40 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %41 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %43 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = load %struct.bfad_im_s*, %struct.bfad_im_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %53 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %52, i32 0, i32 1
  %54 = call i32 @queue_work(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %29, %48, %33
  ret void
}

declare dso_local %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
