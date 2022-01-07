; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_uf_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_uf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.fchs_s = type { i64, i64, i64 }
%struct.fc_els_cmd_s = type { i64 }

@FC_TYPE_ELS = common dso_local global i64 0, align 8
@plogi_rcvd = common dso_local global i32 0, align 4
@adisc_rcvd = common dso_local global i32 0, align 4
@prlo_rcvd = common dso_local global i32 0, align 4
@prli_rcvd = common dso_local global i32 0, align 4
@rpsc_rcvd = common dso_local global i32 0, align 4
@un_handled_els_rcvd = common dso_local global i32 0, align 4
@FC_LS_RJT_RSN_CMD_NOT_SUPP = common dso_local global i32 0, align 4
@FC_LS_RJT_EXP_NO_ADDL_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_rport_uf_recv(%struct.bfa_fcs_rport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca %struct.fc_els_cmd_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %9, i32 0, i32 2
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %10, align 8
  store %struct.bfa_fcs_lport_s* %11, %struct.bfa_fcs_lport_s** %7, align 8
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %16 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @bfa_trc(i32 %14, i64 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %23 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bfa_trc(i32 %21, i64 %24)
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %30 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bfa_trc(i32 %28, i64 %31)
  %33 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %34 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FC_TYPE_ELS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %108

39:                                               ; preds = %3
  %40 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %41 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %40, i64 1
  %42 = bitcast %struct.fchs_s* %41 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %42, %struct.fc_els_cmd_s** %8, align 8
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %8, align 8
  %47 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @bfa_trc(i32 %45, i64 %48)
  %50 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %8, align 8
  %51 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  switch i64 %52, label %99 [
    i64 131, label %53
    i64 132, label %60
    i64 129, label %68
    i64 130, label %83
    i64 128, label %91
  ]

53:                                               ; preds = %39
  %54 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %55 = load i32, i32* @plogi_rcvd, align 4
  %56 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %54, i32 %55)
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %58 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %59 = call i32 @bfa_fcs_rport_process_logo(%struct.bfa_fcs_rport_s* %57, %struct.fchs_s* %58)
  br label %108

60:                                               ; preds = %39
  %61 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %62 = load i32, i32* @adisc_rcvd, align 4
  %63 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %61, i32 %62)
  %64 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %65 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @bfa_fcs_rport_process_adisc(%struct.bfa_fcs_rport_s* %64, %struct.fchs_s* %65, i32 %66)
  br label %108

68:                                               ; preds = %39
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %70 = load i32, i32* @prlo_rcvd, align 4
  %71 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %69, i32 %70)
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %73 = call i32 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @bfa_fcs_fcpim_uf_recv(i32 %78, %struct.fchs_s* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  br label %108

83:                                               ; preds = %39
  %84 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %85 = load i32, i32* @prli_rcvd, align 4
  %86 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %84, i32 %85)
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %88 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @bfa_fcs_rport_process_prli(%struct.bfa_fcs_rport_s* %87, %struct.fchs_s* %88, i32 %89)
  br label %108

91:                                               ; preds = %39
  %92 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %93 = load i32, i32* @rpsc_rcvd, align 4
  %94 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %92, i32 %93)
  %95 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %96 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @bfa_fcs_rport_process_rpsc(%struct.bfa_fcs_rport_s* %95, %struct.fchs_s* %96, i32 %97)
  br label %108

99:                                               ; preds = %39
  %100 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %101 = load i32, i32* @un_handled_els_rcvd, align 4
  %102 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %100, i32 %101)
  %103 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %104 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %105 = load i32, i32* @FC_LS_RJT_RSN_CMD_NOT_SUPP, align 4
  %106 = load i32, i32* @FC_LS_RJT_EXP_NO_ADDL_INFO, align 4
  %107 = call i32 @bfa_fcs_rport_send_ls_rjt(%struct.bfa_fcs_rport_s* %103, %struct.fchs_s* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %38, %99, %91, %83, %82, %60, %53
  ret void
}

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_stats(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_process_logo(%struct.bfa_fcs_rport_s*, %struct.fchs_s*) #1

declare dso_local i32 @bfa_fcs_rport_process_adisc(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_fcpim_uf_recv(i32, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_process_prli(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_process_rpsc(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_ls_rjt(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
