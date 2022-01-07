; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_elsct_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_elsct_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.qedf_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_seq* (%struct.fc_lport*, i32, %struct.fc_frame*, i32, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i8*, i32)* @qedf_elsct_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_seq* @qedf_elsct_send(%struct.fc_lport* %0, i32 %1, %struct.fc_frame* %2, i32 %3, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.fc_seq*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.qedf_ctx*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.fc_frame* %2, %struct.fc_frame** %11, align 8
  store i32 %3, i32* %12, align 4
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %18 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %17)
  store %struct.qedf_ctx* %18, %struct.qedf_ctx** %16, align 8
  %19 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  %20 = icmp eq void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %19, @fc_lport_flogi_resp
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %16, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %26, i32 %27, %struct.fc_frame* %28, i32 %29, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @qedf_flogi_resp, i8* %30, i32 %31)
  store %struct.fc_seq* %32, %struct.fc_seq** %8, align 8
  br label %42

33:                                               ; preds = %7
  %34 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %34, i32 %35, %struct.fc_frame* %36, i32 %37, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %38, i8* %39, i32 %40)
  store %struct.fc_seq* %41, %struct.fc_seq** %8, align 8
  br label %42

42:                                               ; preds = %33, %21
  %43 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  ret %struct.fc_seq* %43
}

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local void @fc_lport_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, i8*) #1

declare dso_local %struct.fc_seq* @fc_elsct_send(%struct.fc_lport*, i32, %struct.fc_frame*, i32, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i8*, i32) #1

declare dso_local void @qedf_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
