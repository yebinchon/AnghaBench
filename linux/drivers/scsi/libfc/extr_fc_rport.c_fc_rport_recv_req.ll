; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_seq_els_data = type { i32, i32 }

@ELS_RJT_UNSUP = common dso_local global i32 0, align 4
@ELS_EXPL_NONE = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_rport_recv_req(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %10 = call i32 @fc_frame_payload_op(%struct.fc_frame* %9)
  switch i32 %10, label %27 [
    i32 136, label %11
    i32 134, label %15
    i32 135, label %19
    i32 133, label %23
    i32 132, label %23
    i32 137, label %23
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %14 = call i32 @fc_rport_recv_flogi_req(%struct.fc_lport* %12, %struct.fc_frame* %13)
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %18 = call i32 @fc_rport_recv_plogi_req(%struct.fc_lport* %16, %struct.fc_frame* %17)
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %21 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %22 = call i32 @fc_rport_recv_logo_req(%struct.fc_lport* %20, %struct.fc_frame* %21)
  br label %37

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %26 = call i32 @fc_rport_recv_els_req(%struct.fc_lport* %24, %struct.fc_frame* %25)
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* @ELS_RJT_UNSUP, align 4
  %29 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @ELS_EXPL_NONE, align 4
  %31 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %33 = load i32, i32* @ELS_LS_RJT, align 4
  %34 = call i32 @fc_seq_els_rsp_send(%struct.fc_frame* %32, i32 %33, %struct.fc_seq_els_data* %5)
  %35 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %36 = call i32 @fc_frame_free(%struct.fc_frame* %35)
  br label %37

37:                                               ; preds = %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_flogi_req(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_plogi_req(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_logo_req(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @fc_rport_recv_els_req(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @fc_seq_els_rsp_send(%struct.fc_frame*, i32, %struct.fc_seq_els_data*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
