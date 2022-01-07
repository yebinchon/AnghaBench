; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_prlo_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_prlo_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcxp_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_send_prlo_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.fchs_s, align 4
  %5 = alloca %struct.bfa_fcxp_s*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %7 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %7, i32 0, i32 4
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %8, align 8
  store %struct.bfa_fcs_lport_s* %9, %struct.bfa_fcs_lport_s** %3, align 8
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bfa_trc(i32 %12, i32 %15)
  %17 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BFA_FALSE, align 4
  %21 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %19, i32 %20)
  store %struct.bfa_fcxp_s* %21, %struct.bfa_fcxp_s** %5, align 8
  %22 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %23 = icmp ne %struct.bfa_fcxp_s* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %27 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %26)
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %32 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %31)
  %33 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fc_prlo_acc_build(%struct.fchs_s* %4, i32 %27, i32 %30, i32 %32, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BFA_FALSE, align 4
  %50 = load i32, i32* @FC_CLASS_3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %53 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %37, i32 %40, i32 %45, i32 %48, i32 %49, i32 %50, i32 %51, %struct.fchs_s* %4, i32* null, i32* null, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_prlo_acc_build(%struct.fchs_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
