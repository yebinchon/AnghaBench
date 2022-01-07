; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lunmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lunmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_gen_s = type { i64 }

@IOCMD_FCPIM_LUNMASK_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@IOCMD_FCPIM_LUNMASK_DISABLE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@IOCMD_FCPIM_LUNMASK_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_lunmask(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_gen_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %10, %struct.bfa_bsg_gen_s** %7, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IOCMD_FCPIM_LUNMASK_ENABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load i32, i32* @BFA_TRUE, align 4
  %22 = call i8* @bfa_fcpim_lunmask_update(i32* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %25 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BFA_STATUS_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %33 = load i32, i32* @BFA_TRUE, align 4
  %34 = call i32 @bfad_iocmd_lunmask_reset_lunscan_mode(%struct.bfad_s* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  br label %70

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IOCMD_FCPIM_LUNMASK_DISABLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 1
  %43 = load i32, i32* @BFA_FALSE, align 4
  %44 = call i8* @bfa_fcpim_lunmask_update(i32* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %49 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BFA_STATUS_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %55 = load i32, i32* @BFA_FALSE, align 4
  %56 = call i32 @bfad_iocmd_lunmask_reset_lunscan_mode(%struct.bfad_s* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %40
  br label %69

58:                                               ; preds = %36
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IOCMD_FCPIM_LUNMASK_CLEAR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %64 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %63, i32 0, i32 1
  %65 = call i64 @bfa_fcpim_lunmask_clear(i32* %64)
  %66 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %67 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %71, i32 0, i32 0
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @bfa_fcpim_lunmask_update(i32*, i32) #1

declare dso_local i32 @bfad_iocmd_lunmask_reset_lunscan_mode(%struct.bfad_s*, i32) #1

declare dso_local i64 @bfa_fcpim_lunmask_clear(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
