; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_xmit_l2_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_xmit_l2_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i64 }

@FC_TYPE_ELS = common dso_local global i64 0, align 8
@FC_RCTL_ELS_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_rport*, %struct.fc_frame*)* @qedf_xmit_l2_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_xmit_l2_frame(%struct.qedf_rport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.qedf_rport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_rport* %0, %struct.qedf_rport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %7)
  store %struct.fc_frame_header* %8, %struct.fc_frame_header** %5, align 8
  %9 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %10 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FC_TYPE_ELS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %16 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FC_RCTL_ELS_REQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %22 = call i32 @fc_frame_payload_op(%struct.fc_frame* %21)
  switch i32 %22, label %27 [
    i32 128, label %23
  ]

23:                                               ; preds = %20
  %24 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %25 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %26 = call i32 @qedf_send_adisc(%struct.qedf_rport* %24, %struct.fc_frame* %25)
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %23
  br label %28

28:                                               ; preds = %27, %14, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @qedf_send_adisc(%struct.qedf_rport*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
