; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_rrq_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_rrq_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_exch = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@FC_EX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot process RRQ, frame error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LS_RJT for RRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unexpected response op %x for RRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_exch_rrq_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_rrq_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_exch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fc_exch*
  store %struct.fc_exch* %11, %struct.fc_exch** %7, align 8
  %12 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %13 = call i64 @IS_ERR(%struct.fc_frame* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.fc_frame* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @FC_EX_CLOSED, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FC_EX_TIMEOUT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %15
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %52

32:                                               ; preds = %3
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call i32 @fc_frame_payload_op(%struct.fc_frame* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %36 = call i32 @fc_frame_free(%struct.fc_frame* %35)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %42 [
    i32 128, label %38
    i32 129, label %41
  ]

38:                                               ; preds = %32
  %39 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %40 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %32, %38
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %52

46:                                               ; preds = %41, %27
  %47 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %48 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %47, i32 0, i32 0
  %49 = call i32 @fc_exch_done(i32* %48)
  %50 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %51 = call i32 @fc_exch_release(%struct.fc_exch* %50)
  br label %52

52:                                               ; preds = %46, %42, %28
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, ...) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_done(i32*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
