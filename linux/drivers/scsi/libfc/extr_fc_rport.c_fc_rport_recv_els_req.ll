; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_els_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_els_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i32, i32, i32 }
%struct.fc_seq_els_data = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Received ELS 0x%02x from non-logged-in port\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Reject ELS PRLI while in state %s\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Reject ELS 0x%02x while in state %s\0A\00", align 1
@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_PLOGI_REQD = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_RJT_BUSY = common dso_local global i32 0, align 4
@ELS_EXPL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @fc_rport_recv_els_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_els_req(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %12 = call i32 @fc_frame_sid(%struct.fc_frame* %11)
  %13 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %10, i32 %12)
  store %struct.fc_rport_priv* %13, %struct.fc_rport_priv** %5, align 8
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %15 = icmp ne %struct.fc_rport_priv* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %19 = call i32 @fc_frame_sid(%struct.fc_frame* %18)
  %20 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %21 = call i32 @fc_frame_payload_op(%struct.fc_frame* %20)
  %22 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %17, i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %25 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %28 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 130, label %30
    i32 128, label %30
    i32 129, label %30
    i32 132, label %30
    i32 131, label %31
  ]

30:                                               ; preds = %23, %23, %23, %23
  br label %62

31:                                               ; preds = %23
  %32 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %33 = call i32 @fc_frame_payload_op(%struct.fc_frame* %32)
  %34 = icmp eq i32 %33, 138
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %38 = call i32 @fc_rport_state(%struct.fc_rport_priv* %37)
  %39 = call i32 (%struct.fc_rport_priv*, i8*, i32, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %41 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %44 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %43, i32 0, i32 1
  %45 = load i32, i32* @fc_rport_destroy, align 4
  %46 = call i32 @kref_put(i32* %44, i32 %45)
  br label %116

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %23, %47
  %49 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %50 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %51 = call i32 @fc_frame_payload_op(%struct.fc_frame* %50)
  %52 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %53 = call i32 @fc_rport_state(%struct.fc_rport_priv* %52)
  %54 = call i32 (%struct.fc_rport_priv*, i8*, i32, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %56 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %59 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %58, i32 0, i32 1
  %60 = load i32, i32* @fc_rport_destroy, align 4
  %61 = call i32 @kref_put(i32* %59, i32 %60)
  br label %106

62:                                               ; preds = %30
  %63 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %64 = call i32 @fc_frame_payload_op(%struct.fc_frame* %63)
  switch i32 %64, label %95 [
    i32 138, label %65
    i32 137, label %69
    i32 139, label %73
    i32 134, label %77
    i32 136, label %82
    i32 135, label %87
    i32 133, label %91
  ]

65:                                               ; preds = %62
  %66 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %67 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %68 = call i32 @fc_rport_recv_prli_req(%struct.fc_rport_priv* %66, %struct.fc_frame* %67)
  br label %98

69:                                               ; preds = %62
  %70 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %71 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %72 = call i32 @fc_rport_recv_prlo_req(%struct.fc_rport_priv* %70, %struct.fc_frame* %71)
  br label %98

73:                                               ; preds = %62
  %74 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %75 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %76 = call i32 @fc_rport_recv_adisc_req(%struct.fc_rport_priv* %74, %struct.fc_frame* %75)
  br label %98

77:                                               ; preds = %62
  %78 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %79 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %78, i32 134, %struct.fc_seq_els_data* null)
  %80 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %81 = call i32 @fc_frame_free(%struct.fc_frame* %80)
  br label %98

82:                                               ; preds = %62
  %83 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %84 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %83, i32 136, %struct.fc_seq_els_data* null)
  %85 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %86 = call i32 @fc_frame_free(%struct.fc_frame* %85)
  br label %98

87:                                               ; preds = %62
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %89 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %90 = call i32 @fc_rport_recv_rls_req(%struct.fc_rport_priv* %88, %struct.fc_frame* %89)
  br label %98

91:                                               ; preds = %62
  %92 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %93 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %94 = call i32 @fc_rport_recv_rtv_req(%struct.fc_rport_priv* %92, %struct.fc_frame* %93)
  br label %98

95:                                               ; preds = %62
  %96 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %97 = call i32 @fc_frame_free(%struct.fc_frame* %96)
  br label %98

98:                                               ; preds = %95, %91, %87, %82, %77, %73, %69, %65
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %103 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %102, i32 0, i32 1
  %104 = load i32, i32* @fc_rport_destroy, align 4
  %105 = call i32 @kref_put(i32* %103, i32 %104)
  br label %126

106:                                              ; preds = %48, %16
  %107 = load i32, i32* @ELS_RJT_UNAB, align 4
  %108 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @ELS_EXPL_PLOGI_REQD, align 4
  %110 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %112 = load i32, i32* @ELS_LS_RJT, align 4
  %113 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %111, i32 %112, %struct.fc_seq_els_data* %6)
  %114 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %115 = call i32 @fc_frame_free(%struct.fc_frame* %114)
  br label %126

116:                                              ; preds = %35
  %117 = load i32, i32* @ELS_RJT_BUSY, align 4
  %118 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @ELS_EXPL_NONE, align 4
  %120 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %122 = load i32, i32* @ELS_LS_RJT, align 4
  %123 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %121, i32 %122, %struct.fc_seq_els_data* %6)
  %124 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %125 = call i32 @fc_frame_free(%struct.fc_frame* %124)
  br label %126

126:                                              ; preds = %116, %106, %98
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_frame_sid(%struct.fc_frame*) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*, i32) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32, ...) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fc_rport_recv_prli_req(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_prlo_req(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_adisc_req(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame*, i32, %struct.fc_seq_els_data*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_rls_req(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_rtv_req(%struct.fc_rport_priv*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
