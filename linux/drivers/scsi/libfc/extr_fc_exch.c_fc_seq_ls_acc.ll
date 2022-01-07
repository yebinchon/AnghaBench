; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_els_ls_acc = type { i32 }
%struct.fc_seq = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"exch: drop LS_ACC, out of memory\0A\00", align 1
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*)* @fc_seq_ls_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_ls_acc(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_els_ls_acc*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_seq*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %8 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %7)
  store %struct.fc_lport* %8, %struct.fc_lport** %3, align 8
  %9 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %10 = call %struct.fc_seq* @fr_seq(%struct.fc_frame* %9)
  store %struct.fc_seq* %10, %struct.fc_seq** %6, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %11, i32 4)
  store %struct.fc_frame* %12, %struct.fc_frame** %5, align 8
  %13 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %14 = icmp ne %struct.fc_frame* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %17 = call i32 @fc_seq_exch(%struct.fc_seq* %16)
  %18 = call i32 @FC_EXCH_DBG(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %21 = call %struct.fc_els_ls_acc* @fc_frame_payload_get(%struct.fc_frame* %20, i32 4)
  store %struct.fc_els_ls_acc* %21, %struct.fc_els_ls_acc** %4, align 8
  %22 = load %struct.fc_els_ls_acc*, %struct.fc_els_ls_acc** %4, align 8
  %23 = call i32 @memset(%struct.fc_els_ls_acc* %22, i32 0, i32 4)
  %24 = load i32, i32* @ELS_LS_ACC, align 4
  %25 = load %struct.fc_els_ls_acc*, %struct.fc_els_ls_acc** %4, align 8
  %26 = getelementptr inbounds %struct.fc_els_ls_acc, %struct.fc_els_ls_acc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %28 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %29 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %30 = call i32 @fc_fill_reply_hdr(%struct.fc_frame* %27, %struct.fc_frame* %28, i32 %29, i32 0)
  %31 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %33, align 8
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = bitcast %struct.fc_lport* %35 to %struct.fc_lport.0*
  %37 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %38 = bitcast %struct.fc_frame* %37 to %struct.fc_frame.1*
  %39 = call i32 %34(%struct.fc_lport.0* %36, %struct.fc_frame.1* %38)
  br label %40

40:                                               ; preds = %19, %15
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local %struct.fc_seq* @fr_seq(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @FC_EXCH_DBG(i32, i8*) #1

declare dso_local i32 @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local %struct.fc_els_ls_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_ls_acc*, i32, i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame*, %struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
