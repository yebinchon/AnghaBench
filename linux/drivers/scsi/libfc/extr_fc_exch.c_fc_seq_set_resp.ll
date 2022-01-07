; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_set_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_set_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type opaque
%struct.fc_exch = type { i64, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*, i32, i8*, i32, i64 }
%struct.fc_frame.0 = type opaque

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_seq_set_resp(%struct.fc_seq* %0, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_exch*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %1, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %9 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %8)
  store %struct.fc_exch* %9, %struct.fc_exch** %7, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  %12 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %13 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_bh(i32* %13)
  br label %15

15:                                               ; preds = %28, %3
  %16 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %17 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @current, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ false, %15 ], [ %25, %20 ]
  br i1 %27, label %28, label %40

28:                                               ; preds = %26
  %29 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %30 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %29, i32 0, i32 4
  %31 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %32 = call i32 @prepare_to_wait(i32* %30, i32* @wait, i32 %31)
  %33 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %34 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = call i32 (...) @schedule()
  %37 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %38 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_bh(i32* %38)
  br label %15

40:                                               ; preds = %26
  %41 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %42 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %41, i32 0, i32 4
  %43 = call i32 @finish_wait(i32* %42, i32* @wait)
  %44 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %5, align 8
  %45 = bitcast void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %44 to void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*
  %46 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %47 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %46, i32 0, i32 1
  store void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)* %45, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)** %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %50 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %52 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_bh(i32* %52)
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
