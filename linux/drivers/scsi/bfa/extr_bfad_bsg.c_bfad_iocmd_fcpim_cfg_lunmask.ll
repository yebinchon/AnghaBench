; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_lunmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_lunmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_fcpim_lunmask_s = type { i32, i32, i32, i32, i32 }

@IOCMD_FCPIM_LUNMASK_ADD = common dso_local global i32 0, align 4
@IOCMD_FCPIM_LUNMASK_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_fcpim_cfg_lunmask(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_fcpim_lunmask_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_fcpim_lunmask_s*
  store %struct.bfa_bsg_fcpim_lunmask_s* %10, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IOCMD_FCPIM_LUNMASK_ADD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %25 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %24, i32 0, i32 2
  %26 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfa_fcpim_lunmask_add(i32* %20, i32 %23, i32* %25, i32 %28, i32 %31)
  %33 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  br label %57

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IOCMD_FCPIM_LUNMASK_DELETE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %40, i32 0, i32 1
  %42 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %43 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %46 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %45, i32 0, i32 2
  %47 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %51 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bfa_fcpim_lunmask_delete(i32* %41, i32 %44, i32* %46, i32 %49, i32 %52)
  %54 = load %struct.bfa_bsg_fcpim_lunmask_s*, %struct.bfa_bsg_fcpim_lunmask_s** %7, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_fcpim_lunmask_s, %struct.bfa_bsg_fcpim_lunmask_s* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %35
  br label %57

57:                                               ; preds = %56, %18
  %58 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcpim_lunmask_add(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @bfa_fcpim_lunmask_delete(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
