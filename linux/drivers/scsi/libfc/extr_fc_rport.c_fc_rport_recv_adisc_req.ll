; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_adisc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_adisc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, %struct.fc_frame*)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }
%struct.fc_els_adisc = type { i32 }
%struct.fc_seq_els_data = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Received ADISC request\0A\00", align 1
@ELS_RJT_PROT = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame.0*)* @fc_rport_recv_adisc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_adisc_req(%struct.fc_rport_priv* %0, %struct.fc_frame.0* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.0*, align 8
  %7 = alloca %struct.fc_els_adisc*, align 8
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
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %19 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %21 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.0* %20, i32 4)
  store %struct.fc_els_adisc* %21, %struct.fc_els_adisc** %7, align 8
  %22 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %7, align 8
  %23 = icmp ne %struct.fc_els_adisc* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ELS_RJT_PROT, align 4
  %26 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %30 = load i32, i32* @ELS_LS_RJT, align 4
  %31 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame.0* %29, i32 %30, %struct.fc_seq_els_data* %8)
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %34 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %33, i32 4)
  store %struct.fc_frame.0* %34, %struct.fc_frame.0** %6, align 8
  %35 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %36 = icmp ne %struct.fc_frame.0* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %40 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %41 = call i32 @fc_adisc_fill(%struct.fc_lport* %39, %struct.fc_frame.0* %40)
  %42 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %43 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.0* %42, i32 4)
  store %struct.fc_els_adisc* %43, %struct.fc_els_adisc** %7, align 8
  %44 = load i32, i32* @ELS_LS_ACC, align 4
  %45 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %7, align 8
  %46 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %48 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %49 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %50 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.0* %47, %struct.fc_frame.0* %48, i32 %49, i32 0)
  %51 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_frame*)** %53, align 8
  %55 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %56 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %57 = bitcast %struct.fc_frame.0* %56 to %struct.fc_frame*
  %58 = call i32 %54(%struct.fc_lport* %55, %struct.fc_frame* %57)
  br label %59

59:                                               ; preds = %38, %37, %24
  %60 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %61 = call i32 @fc_frame_free(%struct.fc_frame.0* %60)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.0*, i32) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_adisc_fill(%struct.fc_lport*, %struct.fc_frame.0*) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.0*, %struct.fc_frame.0*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
