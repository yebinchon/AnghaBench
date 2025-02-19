; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.bfad_hal_comp = type { i32 }

@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @bfad_im_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_im_reset_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.bfad_im_port_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.bfad_hal_comp, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %13, %struct.bfad_im_port_s** %3, align 8
  %14 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %14, i32 0, i32 0
  %16 = load %struct.bfad_s*, %struct.bfad_s** %15, align 8
  store %struct.bfad_s* %16, %struct.bfad_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %5, i32 0, i32 0
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 1
  %25 = call i32 @BFA_FCPORT(i32* %24)
  %26 = load i32, i32* @bfad_hcb_comp, align 4
  %27 = call i64 @bfa_port_clear_stats(i32 %25, i32 %26, %struct.bfad_hal_comp* %5)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @BFA_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %39

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %5, i32 0, i32 0
  %38 = call i32 @wait_for_completion(i32* %37)
  br label %39

39:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_port_clear_stats(i32, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @BFA_FCPORT(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
