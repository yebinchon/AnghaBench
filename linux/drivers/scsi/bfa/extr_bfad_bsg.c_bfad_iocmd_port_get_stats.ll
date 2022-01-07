; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_bsg_port_stats_s = type { i64 }
%struct.bfad_hal_comp = type { i64, i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8
@bfad_hcb_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_port_get_stats(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_bsg_port_stats_s*, align 8
  %9 = alloca %struct.bfad_hal_comp, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_port_stats_s*
  store %struct.bfa_bsg_port_stats_s* %13, %struct.bfa_bsg_port_stats_s** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @bfad_chk_iocmd_sz(i32 %14, i32 8, i32 4)
  %16 = load i64, i64* @BFA_STATUS_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %20 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_port_stats_s, %struct.bfa_bsg_port_stats_s* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i32 0, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %24 = bitcast %struct.bfa_bsg_port_stats_s* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  store i8* %25, i8** %10, align 8
  %26 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %9, i32 0, i32 1
  %27 = call i32 @init_completion(i32* %26)
  %28 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @bfad_hcb_comp, align 4
  %38 = call i64 @bfa_port_get_stats(i32* %35, i8* %36, i32 %37, %struct.bfad_hal_comp* %9)
  %39 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %40 = getelementptr inbounds %struct.bfa_bsg_port_stats_s, %struct.bfa_bsg_port_stats_s* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %46 = getelementptr inbounds %struct.bfa_bsg_port_stats_s, %struct.bfa_bsg_port_stats_s* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BFA_STATUS_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %22
  %51 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %52 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_port_stats_s, %struct.bfa_bsg_port_stats_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bfa_trc(%struct.bfad_s* %51, i64 %54)
  br label %63

56:                                               ; preds = %22
  %57 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %9, i32 0, i32 1
  %58 = call i32 @wait_for_completion(i32* %57)
  %59 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bfa_bsg_port_stats_s*, %struct.bfa_bsg_port_stats_s** %8, align 8
  %62 = getelementptr inbounds %struct.bfa_bsg_port_stats_s, %struct.bfa_bsg_port_stats_s* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %50
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_port_get_stats(i32*, i8*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
