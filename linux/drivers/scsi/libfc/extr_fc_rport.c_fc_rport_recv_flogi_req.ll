; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_flogi_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_flogi_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }
%struct.fc_els_flogi = type { i32 }
%struct.fc_rport_priv = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fc_seq_els_data = type { i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Received FLOGI request\0A\00", align 1
@ELS_RJT_UNSUP = common dso_local global i8* null, align 8
@ELS_EXPL_NONE = common dso_local global i8* null, align 8
@ELS_RJT_LOGIC = common dso_local global i8* null, align 8
@ELS_EXPL_INV_LEN = common dso_local global i8* null, align 8
@ELS_RJT_FIP = common dso_local global i8* null, align 8
@ELS_EXPL_NOT_NEIGHBOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Received FLOGI in %s state\0A\00", align 1
@RPORT_EV_LOGO = common dso_local global i32 0, align 4
@ELS_RJT_BUSY = common dso_local global i8* null, align 8
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_rport_recv_flogi_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_flogi_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_els_flogi*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fc_frame.1*, align 8
  %8 = alloca %struct.fc_seq_els_data, align 8
  %9 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %10 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  store %struct.fc_frame.1* %10, %struct.fc_frame.1** %7, align 8
  %11 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %12 = call i32 @fc_frame_sid(%struct.fc_frame.1* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %13, i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** @ELS_RJT_UNSUP, align 8
  %22 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %24 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %155

25:                                               ; preds = %2
  %26 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %27 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.1* %26, i32 4)
  store %struct.fc_els_flogi* %27, %struct.fc_els_flogi** %5, align 8
  %28 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %29 = icmp ne %struct.fc_els_flogi* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** @ELS_RJT_LOGIC, align 8
  %32 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @ELS_EXPL_INV_LEN, align 8
  %34 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %155

35:                                               ; preds = %25
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %36, i32 %37)
  store %struct.fc_rport_priv* %38, %struct.fc_rport_priv** %6, align 8
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %40 = icmp ne %struct.fc_rport_priv* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** @ELS_RJT_FIP, align 8
  %43 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @ELS_EXPL_NOT_NEIGHBOR, align 8
  %45 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  br label %155

46:                                               ; preds = %35
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 2
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %51 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %52 = call i32 @fc_rport_state(%struct.fc_rport_priv* %51)
  %53 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %55 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %78 [
    i32 133, label %57
    i32 135, label %58
    i32 134, label %66
    i32 131, label %66
    i32 132, label %66
    i32 130, label %67
    i32 128, label %67
    i32 129, label %67
    i32 136, label %67
  ]

57:                                               ; preds = %46
  br label %78

58:                                               ; preds = %46
  %59 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %60 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i8*, i8** @ELS_RJT_FIP, align 8
  %63 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** @ELS_EXPL_NOT_NEIGHBOR, align 8
  %65 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  br label %150

66:                                               ; preds = %46, %46, %46
  br label %78

67:                                               ; preds = %46, %46, %46, %46
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %69 = load i32, i32* @RPORT_EV_LOGO, align 4
  %70 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %68, i32 %69)
  %71 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %72 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i8*, i8** @ELS_RJT_BUSY, align 8
  %75 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %77 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  br label %150

78:                                               ; preds = %46, %66, %57
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %80 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %81 = call i64 @fc_rport_login_complete(%struct.fc_rport_priv* %79, %struct.fc_frame.1* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %85 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i8*, i8** @ELS_RJT_LOGIC, align 8
  %88 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %90 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  br label %150

91:                                               ; preds = %78
  %92 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %93 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %92, i32 4)
  store %struct.fc_frame.1* %93, %struct.fc_frame.1** %7, align 8
  %94 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %95 = icmp ne %struct.fc_frame.1* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %140

97:                                               ; preds = %91
  %98 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %99 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %100 = call i32 @fc_flogi_fill(%struct.fc_lport* %98, %struct.fc_frame.1* %99)
  %101 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %102 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.1* %101, i32 4)
  store %struct.fc_els_flogi* %102, %struct.fc_els_flogi** %5, align 8
  %103 = load i32, i32* @ELS_LS_ACC, align 4
  %104 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %105 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %107 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %108 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %109 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %106, %struct.fc_frame.1* %107, i32 %108, i32 0)
  %110 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %111 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %112, align 8
  %114 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %115 = bitcast %struct.fc_lport* %114 to %struct.fc_lport.0*
  %116 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %117 = bitcast %struct.fc_frame.1* %116 to %struct.fc_frame*
  %118 = call i32 %113(%struct.fc_lport.0* %115, %struct.fc_frame* %117)
  %119 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %120 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 134
  br i1 %122, label %123, label %139

123:                                              ; preds = %97
  %124 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %125 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %129 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %134 = call i32 @fc_rport_enter_plogi(%struct.fc_rport_priv* %133)
  br label %138

135:                                              ; preds = %123
  %136 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %137 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %136, i32 131)
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %96
  %141 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %142 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %141, i32 0, i32 2
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %145 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %144, i32 0, i32 1
  %146 = load i32, i32* @fc_rport_destroy, align 4
  %147 = call i32 @kref_put(i32* %145, i32 %146)
  %148 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %149 = call i32 @fc_frame_free(%struct.fc_frame.1* %148)
  br label %161

150:                                              ; preds = %83, %67, %58
  %151 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %152 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %151, i32 0, i32 1
  %153 = load i32, i32* @fc_rport_destroy, align 4
  %154 = call i32 @kref_put(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %41, %30, %20
  %156 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %157 = load i32, i32* @ELS_LS_RJT, align 4
  %158 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame.1* %156, i32 %157, %struct.fc_seq_els_data* %8)
  %159 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %160 = call i32 @fc_frame_free(%struct.fc_frame.1* %159)
  br label %161

161:                                              ; preds = %155, %140
  ret void
}

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.1*) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*) #1

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i64 @fc_rport_login_complete(%struct.fc_rport_priv*, %struct.fc_frame.1*) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_flogi_fill(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local i32 @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame.1*, i32, %struct.fc_seq_els_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
