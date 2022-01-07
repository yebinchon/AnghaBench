; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_elsct.c_fc_elsct_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_elsct.c_fc_elsct_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }

@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_AUTH_ELS = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %0, i32 %1, %struct.fc_frame* %2, i32 %3, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.fc_seq*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.fc_frame* %2, %struct.fc_frame** %11, align 8
  store i32 %3, i32* %12, align 4
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @ELS_LS_RJT, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ELS_AUTH_ELS, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @fc_els_fill(%struct.fc_lport* %27, i32 %28, %struct.fc_frame* %29, i32 %30, i32* %16, i32* %17)
  store i32 %31, i32* %18, align 4
  br label %38

32:                                               ; preds = %22, %7
  %33 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @fc_ct_fill(%struct.fc_lport* %33, i32 %34, %struct.fc_frame* %35, i32 %36, i32* %16, i32* %17, i32* %10)
  store i32 %37, i32* %18, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %43 = call i32 @fc_frame_free(%struct.fc_frame* %42)
  store %struct.fc_seq* null, %struct.fc_seq** %8, align 8
  br label %60

44:                                               ; preds = %38
  %45 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @FC_FCTL_REQ, align 4
  %53 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %45, i32 %46, i32 %47, i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %55 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %56 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport* %54, %struct.fc_frame* %55, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %56, i32* null, i8* %57, i32 %58)
  store %struct.fc_seq* %59, %struct.fc_seq** %8, align 8
  br label %60

60:                                               ; preds = %44, %41
  %61 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  ret %struct.fc_seq* %61
}

declare dso_local i32 @fc_els_fill(%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32*, i32*) #1

declare dso_local i32 @fc_ct_fill(%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport*, %struct.fc_frame*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
