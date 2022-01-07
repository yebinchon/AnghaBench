; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_complete_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_complete_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i64, i64, i64, %struct.TYPE_4__, i32, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.sym_lcb = type { i64, i64, i32, i32 }

@HS_COMPLETE = common dso_local global i64 0, align 8
@SYM_SETUP_RESIDUAL_SUPPORT = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_complete_ok(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_ccb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_lcb*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %4, align 8
  %9 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %10 = icmp ne %struct.sym_ccb* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %13 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %12, i32 0, i32 5
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %15 = icmp ne %struct.scsi_cmnd* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %68

17:                                               ; preds = %11
  %18 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %19 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HS_COMPLETE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %26 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %25, i32 0, i32 5
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %7, align 8
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %29 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %28, i32 0, i32 0
  %30 = load %struct.sym_tcb*, %struct.sym_tcb** %29, align 8
  %31 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %32 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %30, i64 %33
  store %struct.sym_tcb* %34, %struct.sym_tcb** %5, align 8
  %35 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %35, i32 %38)
  store %struct.sym_lcb* %39, %struct.sym_lcb** %6, align 8
  store i32 0, i32* %8, align 4
  %40 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %41 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %46 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %17
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %51 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %52 = call i32 @sym_compute_residual(%struct.sym_hcb* %50, %struct.sym_ccb* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %17
  %54 = load i32, i32* @SYM_SETUP_RESIDUAL_SUPPORT, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @sym_set_cam_result_ok(%struct.sym_ccb* %58, %struct.scsi_cmnd* %59, i32 %60)
  %62 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %63 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %64 = call i32 @sym_free_ccb(%struct.sym_hcb* %62, %struct.sym_ccb* %63)
  %65 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %67 = call i32 @sym_xpt_done(%struct.sym_hcb* %65, %struct.scsi_cmnd* %66)
  br label %68

68:                                               ; preds = %57, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @sym_compute_residual(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_set_cam_result_ok(%struct.sym_ccb*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sym_free_ccb(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_xpt_done(%struct.sym_hcb*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
