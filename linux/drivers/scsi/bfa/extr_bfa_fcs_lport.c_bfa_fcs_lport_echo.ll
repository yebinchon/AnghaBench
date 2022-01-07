; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_echo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.fc_echo_s = type { i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_rport_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_echo_s*, i32)* @bfa_fcs_lport_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_echo(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, %struct.fc_echo_s* %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca %struct.fc_echo_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fchs_s, align 4
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  %11 = alloca %struct.bfa_rport_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %6, align 8
  store %struct.fc_echo_s* %2, %struct.fc_echo_s** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %11, align 8
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %18 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfa_trc(i32 %16, i32 %19)
  %21 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %25 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_trc(i32 %23, i32 %26)
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BFA_FALSE, align 4
  %32 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %30, i32 %31)
  store %struct.bfa_fcxp_s* %32, %struct.bfa_fcxp_s** %10, align 8
  %33 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %34 = icmp ne %struct.bfa_fcxp_s* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %93

36:                                               ; preds = %4
  %37 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %38 = call i64 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %37)
  %39 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %40 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %43 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %42)
  %44 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %45 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fc_ls_acc_build(%struct.fchs_s* %9, i64 %38, i32 %41, i32 %43, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 12
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @bfa_trc(i32 %54, i32 %55)
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @bfa_trc(i32 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %36
  %66 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %67 = call i64 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load %struct.fc_echo_s*, %struct.fc_echo_s** %7, align 8
  %71 = getelementptr inbounds %struct.fc_echo_s, %struct.fc_echo_s* %70, i64 1
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(i32* %69, %struct.fc_echo_s* %71, i32 %75)
  br label %77

77:                                               ; preds = %65, %36
  %78 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %79 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %11, align 8
  %80 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %86 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BFA_FALSE, align 4
  %89 = load i32, i32* @FC_CLASS_3, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %92 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %78, %struct.bfa_rport_s* %79, i32 %84, i32 %87, i32 %88, i32 %89, i32 %90, %struct.fchs_s* %9, i32* null, i32* null, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %77, %35
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_ls_acc_build(%struct.fchs_s*, i64, i32, i32, i32) #1

declare dso_local i64 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @memcpy(i32*, %struct.fc_echo_s*, i32) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, %struct.bfa_rport_s*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
