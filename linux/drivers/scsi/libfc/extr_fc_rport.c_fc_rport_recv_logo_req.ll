; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_logo_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_logo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i32, i32 }

@ELS_LS_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Received LOGO request while in state %s\0A\00", align 1
@RPORT_EV_STOP = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Received LOGO from non-logged-in port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @fc_rport_recv_logo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_logo_req(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %11 = load i32, i32* @ELS_LS_ACC, align 4
  %12 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %10, i32 %11, i32* null)
  %13 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %14 = call i32 @fc_frame_sid(%struct.fc_frame* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %15, i32 %16)
  store %struct.fc_rport_priv* %17, %struct.fc_rport_priv** %5, align 8
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %19 = icmp ne %struct.fc_rport_priv* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %26 = call i32 @fc_rport_state(%struct.fc_rport_priv* %25)
  %27 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %29 = load i32, i32* @RPORT_EV_STOP, align 4
  %30 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %28, i32 %29)
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %32 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = load i32, i32* @fc_rport_destroy, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %20
  %43 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %44 = call i32 @fc_frame_free(%struct.fc_frame* %43)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame*, i32, i32*) #1

declare dso_local i32 @fc_frame_sid(%struct.fc_frame*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
