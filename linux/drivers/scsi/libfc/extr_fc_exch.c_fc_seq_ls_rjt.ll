; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_rjt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_els_ls_rjt = type { i32, i32, i32 }
%struct.fc_seq = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"exch: drop LS_ACC, out of memory\0A\00", align 1
@ELS_LS_RJT = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*, i32, i32)* @fc_seq_ls_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_ls_rjt(%struct.fc_frame* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_els_ls_rjt*, align 8
  %9 = alloca %struct.fc_frame*, align 8
  %10 = alloca %struct.fc_seq*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %12 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %11)
  store %struct.fc_lport* %12, %struct.fc_lport** %7, align 8
  %13 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %14 = call %struct.fc_seq* @fr_seq(%struct.fc_frame* %13)
  store %struct.fc_seq* %14, %struct.fc_seq** %10, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %16 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %15, i32 12)
  store %struct.fc_frame* %16, %struct.fc_frame** %9, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %18 = icmp ne %struct.fc_frame* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.fc_seq*, %struct.fc_seq** %10, align 8
  %21 = call i32 @fc_seq_exch(%struct.fc_seq* %20)
  %22 = call i32 @FC_EXCH_DBG(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %25 = call %struct.fc_els_ls_rjt* @fc_frame_payload_get(%struct.fc_frame* %24, i32 12)
  store %struct.fc_els_ls_rjt* %25, %struct.fc_els_ls_rjt** %8, align 8
  %26 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %27 = call i32 @memset(%struct.fc_els_ls_rjt* %26, i32 0, i32 12)
  %28 = load i32, i32* @ELS_LS_RJT, align 4
  %29 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %30 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %33 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %36 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %38 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %39 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %40 = call i32 @fc_fill_reply_hdr(%struct.fc_frame* %37, %struct.fc_frame* %38, i32 %39, i32 0)
  %41 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %42 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %43, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %46 = bitcast %struct.fc_lport* %45 to %struct.fc_lport.0*
  %47 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %48 = bitcast %struct.fc_frame* %47 to %struct.fc_frame.1*
  %49 = call i32 %44(%struct.fc_lport.0* %46, %struct.fc_frame.1* %48)
  br label %50

50:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local %struct.fc_seq* @fr_seq(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @FC_EXCH_DBG(i32, i8*) #1

declare dso_local i32 @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local %struct.fc_els_ls_rjt* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_ls_rjt*, i32, i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame*, %struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
