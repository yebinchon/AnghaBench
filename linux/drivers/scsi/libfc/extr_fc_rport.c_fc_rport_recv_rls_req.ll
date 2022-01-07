; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__, %struct.fc_host_statistics, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)* }
%struct.fc_frame = type opaque
%struct.fc_els_lesb = type opaque
%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32 }
%struct.fc_frame.0 = type { i32 }
%struct.fc_els_rls = type { i32 }
%struct.fc_els_rls_resp = type { %struct.fc_els_lesb.1, i32 }
%struct.fc_els_lesb.1 = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fc_seq_els_data = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Received RLS request while in state %s\0A\00", align 1
@ELS_RJT_PROT = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_INSUF_RES = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame.0*)* @fc_rport_recv_rls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_rls_req(%struct.fc_rport_priv* %0, %struct.fc_frame.0* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.0*, align 8
  %7 = alloca %struct.fc_els_rls*, align 8
  %8 = alloca %struct.fc_els_rls_resp*, align 8
  %9 = alloca %struct.fc_els_lesb.1*, align 8
  %10 = alloca %struct.fc_seq_els_data, align 4
  %11 = alloca %struct.fc_host_statistics*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame.0* %1, %struct.fc_frame.0** %4, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 1
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  store %struct.fc_lport* %14, %struct.fc_lport** %5, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %16 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %20 = call i32 @fc_rport_state(%struct.fc_rport_priv* %19)
  %21 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %23 = call i8* @fc_frame_payload_get(%struct.fc_frame.0* %22, i32 4)
  %24 = bitcast i8* %23 to %struct.fc_els_rls*
  store %struct.fc_els_rls* %24, %struct.fc_els_rls** %7, align 8
  %25 = load %struct.fc_els_rls*, %struct.fc_els_rls** %7, align 8
  %26 = icmp ne %struct.fc_els_rls* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ELS_RJT_PROT, align 4
  %29 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  %31 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %34 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %33, i32 56)
  store %struct.fc_frame.0* %34, %struct.fc_frame.0** %6, align 8
  %35 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %36 = icmp ne %struct.fc_frame.0* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ELS_RJT_UNAB, align 4
  %39 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ELS_EXPL_INSUF_RES, align 4
  %41 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %123

42:                                               ; preds = %32
  %43 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %44 = call i8* @fc_frame_payload_get(%struct.fc_frame.0* %43, i32 56)
  %45 = bitcast i8* %44 to %struct.fc_els_rls_resp*
  store %struct.fc_els_rls_resp* %45, %struct.fc_els_rls_resp** %8, align 8
  %46 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %47 = call i32 @memset(%struct.fc_els_rls_resp* %46, i32 0, i32 56)
  %48 = load i32, i32* @ELS_LS_ACC, align 4
  %49 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %50 = getelementptr inbounds %struct.fc_els_rls_resp, %struct.fc_els_rls_resp* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %52 = getelementptr inbounds %struct.fc_els_rls_resp, %struct.fc_els_rls_resp* %51, i32 0, i32 0
  store %struct.fc_els_lesb.1* %52, %struct.fc_els_lesb.1** %9, align 8
  %53 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %54 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.fc_lport*, %struct.fc_els_lesb*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)** %55, align 8
  %57 = icmp ne i32 (%struct.fc_lport*, %struct.fc_els_lesb*)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %42
  %59 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.fc_lport*, %struct.fc_els_lesb*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)** %61, align 8
  %63 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %64 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %65 = bitcast %struct.fc_els_lesb.1* %64 to %struct.fc_els_lesb*
  %66 = call i32 %62(%struct.fc_lport* %63, %struct.fc_els_lesb* %65)
  br label %110

67:                                               ; preds = %42
  %68 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %69 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @fc_get_host_stats(i32 %70)
  %72 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %73 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %72, i32 0, i32 1
  store %struct.fc_host_statistics* %73, %struct.fc_host_statistics** %11, align 8
  %74 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %75 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %79 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %81 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @htonl(i32 %82)
  %84 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %85 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %87 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @htonl(i32 %88)
  %90 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %91 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %93 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %97 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %99 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @htonl(i32 %100)
  %102 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %103 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %105 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @htonl(i32 %106)
  %108 = load %struct.fc_els_lesb.1*, %struct.fc_els_lesb.1** %9, align 8
  %109 = getelementptr inbounds %struct.fc_els_lesb.1, %struct.fc_els_lesb.1* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %67, %58
  %111 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %112 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %113 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %114 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.0* %111, %struct.fc_frame.0* %112, i32 %113, i32 0)
  %115 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %116 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_frame*)** %117, align 8
  %119 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %120 = load %struct.fc_frame.0*, %struct.fc_frame.0** %6, align 8
  %121 = bitcast %struct.fc_frame.0* %120 to %struct.fc_frame*
  %122 = call i32 %118(%struct.fc_lport* %119, %struct.fc_frame* %121)
  br label %127

123:                                              ; preds = %37, %27
  %124 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %125 = load i32, i32* @ELS_LS_RJT, align 4
  %126 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame.0* %124, i32 %125, %struct.fc_seq_els_data* %10)
  br label %127

127:                                              ; preds = %123, %110
  %128 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %129 = call i32 @fc_frame_free(%struct.fc_frame.0* %128)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame.0*, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_rls_resp*, i32, i32) #1

declare dso_local i32 @fc_get_host_stats(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.0*, %struct.fc_frame.0*, i32, i32) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
