; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_fcpim_profile_s = type { i32 }

@IOCMD_FCPIM_PROFILE_ON = common dso_local global i32 0, align 4
@IOCMD_FCPIM_PROFILE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_fcpim_cfg_profile(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_fcpim_profile_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_fcpim_profile_s*
  store %struct.bfa_bsg_fcpim_profile_s* %10, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IOCMD_FCPIM_PROFILE_ON, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = call i32 (...) @ktime_get_real_seconds()
  %22 = call i32 @bfa_fcpim_profile_on(i32* %20, i32 %21)
  %23 = load %struct.bfa_bsg_fcpim_profile_s*, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_fcpim_profile_s, %struct.bfa_bsg_fcpim_profile_s* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IOCMD_FCPIM_PROFILE_OFF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 1
  %32 = call i32 @bfa_fcpim_profile_off(i32* %31)
  %33 = load %struct.bfa_bsg_fcpim_profile_s*, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_fcpim_profile_s, %struct.bfa_bsg_fcpim_profile_s* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcpim_profile_on(i32*, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @bfa_fcpim_profile_off(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
