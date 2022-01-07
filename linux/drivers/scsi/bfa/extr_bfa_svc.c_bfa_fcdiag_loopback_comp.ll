; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_loopback_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_loopback_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcdiag_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 (i32, i32)*, %struct.bfa_diag_loopback_result_s* }
%struct.bfa_diag_loopback_result_s = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.bfi_diag_lb_rsp_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcdiag_s*, %struct.bfi_diag_lb_rsp_s*)* @bfa_fcdiag_loopback_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcdiag_loopback_comp(%struct.bfa_fcdiag_s* %0, %struct.bfi_diag_lb_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_fcdiag_s*, align 8
  %4 = alloca %struct.bfi_diag_lb_rsp_s*, align 8
  %5 = alloca %struct.bfa_diag_loopback_result_s*, align 8
  store %struct.bfa_fcdiag_s* %0, %struct.bfa_fcdiag_s** %3, align 8
  store %struct.bfi_diag_lb_rsp_s* %1, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %6 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %8, align 8
  store %struct.bfa_diag_loopback_result_s* %9, %struct.bfa_diag_loopback_result_s** %5, align 8
  %10 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @be32_to_cpu(i32 %13)
  %15 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @be32_to_cpu(i32 %20)
  %22 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @be32_to_cpu(i32 %27)
  %29 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @be32_to_cpu(i32 %34)
  %36 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @be32_to_cpu(i32 %41)
  %43 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_diag_loopback_result_s*, %struct.bfa_diag_loopback_result_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_diag_loopback_result_s, %struct.bfa_diag_loopback_result_s* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bfi_diag_lb_rsp_s*, %struct.bfi_diag_lb_rsp_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfi_diag_lb_rsp_s, %struct.bfi_diag_lb_rsp_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %59 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %58, i32 %62)
  %64 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %67(i32 %71, i32 %75)
  %77 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %81 = call i32 @bfa_fcdiag_set_busy_status(%struct.bfa_fcdiag_s* %80)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i32) #1

declare dso_local i32 @bfa_fcdiag_set_busy_status(%struct.bfa_fcdiag_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
