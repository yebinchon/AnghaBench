; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rtv_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rtv_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, %struct.fc_frame*)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }
%struct.fc_els_rtv_acc = type { i64, i8*, i8*, i32 }
%struct.fc_seq_els_data = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Received RTV request\0A\00", align 1
@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_INSUF_RES = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame.0*)* @fc_rport_recv_rtv_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_rtv_req(%struct.fc_rport_priv* %0, %struct.fc_frame.0* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.0*, align 8
  %7 = alloca %struct.fc_els_rtv_acc*, align 8
  %8 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame.0* %1, %struct.fc_frame.0** %4, align 8
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %9, i32 0, i32 1
  %11 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %11, %struct.fc_lport** %5, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 3
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %19 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %21 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %20, i32 32)
  store %struct.fc_frame.0* %21, %struct.fc_frame.0** %6, align 8
  %22 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %23 = icmp ne %struct.fc_frame.0* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ELS_RJT_UNAB, align 4
  %26 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ELS_EXPL_INSUF_RES, align 4
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %30 = load i32, i32* @ELS_LS_RJT, align 4
  %31 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame.0* %29, i32 %30, %struct.fc_seq_els_data* %8)
  br label %64

32:                                               ; preds = %2
  %33 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %34 = call %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame.0* %33, i32 32)
  store %struct.fc_els_rtv_acc* %34, %struct.fc_els_rtv_acc** %7, align 8
  %35 = load i32, i32* @ELS_LS_ACC, align 4
  %36 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %7, align 8
  %37 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @htonl(i32 %40)
  %42 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %7, align 8
  %43 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %45 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @htonl(i32 %46)
  %48 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %7, align 8
  %49 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %7, align 8
  %51 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %53 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %54 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %55 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.0* %52, %struct.fc_frame.0* %53, i32 %54, i32 0)
  %56 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_frame*)** %58, align 8
  %60 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %61 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %62 = bitcast %struct.fc_frame.0* %61 to %struct.fc_frame*
  %63 = call i32 %59(%struct.fc_lport* %60, %struct.fc_frame* %62)
  br label %64

64:                                               ; preds = %32, %24
  %65 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %66 = call i32 @fc_frame_free(%struct.fc_frame.0* %65)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*) #1

declare dso_local %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame.0*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.0*, %struct.fc_frame.0*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
