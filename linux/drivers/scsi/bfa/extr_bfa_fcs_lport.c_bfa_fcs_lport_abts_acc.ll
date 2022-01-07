; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_abts_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_abts_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*)* @bfa_fcs_lport_abts_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_abts_acc(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.fchs_s*, align 8
  %5 = alloca %struct.fchs_s, align 4
  %6 = alloca %struct.bfa_fcxp_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %4, align 8
  %8 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %12 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bfa_trc(i32 %10, i32 %13)
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %19 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(i32 %17, i32 %20)
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BFA_FALSE, align 4
  %26 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %24, i32 %25)
  store %struct.bfa_fcxp_s* %26, %struct.bfa_fcxp_s** %6, align 8
  %27 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %28 = icmp ne %struct.bfa_fcxp_s* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %56

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %32 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %31)
  %33 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %34 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %37 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %36)
  %38 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %39 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fc_ba_acc_build(%struct.fchs_s* %5, i32 %32, i32 %35, i32 %37, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BFA_FALSE, align 4
  %52 = load i32, i32* @FC_CLASS_3, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %55 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %42, i32* null, i32 %47, i32 %50, i32 %51, i32 %52, i32 %53, %struct.fchs_s* %5, i32* null, i32* null, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_ba_acc_build(%struct.fchs_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
