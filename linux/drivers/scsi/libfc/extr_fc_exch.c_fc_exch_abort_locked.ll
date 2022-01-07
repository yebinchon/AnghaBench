; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abort_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abort_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, i64, i32, i32 }
%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"exch: abort, time %d msecs\0A\00", align 1
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ESB_ST_ABNORMAL = common dso_local global i32 0, align 4
@FC_EX_DONE = common dso_local global i32 0, align 4
@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"exch: already completed esb %x state %x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@FC_RCTL_BA_ABTS = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_exch*, i32)* @fc_exch_abort_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_exch_abort_locked(%struct.fc_exch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_seq*, align 8
  %7 = alloca %struct.fc_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (%struct.fc_exch*, i8*, i32, ...) @FC_EXCH_DBG(%struct.fc_exch* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %13 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %16 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FC_EX_DONE, align 4
  %25 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %20, %2
  %30 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %31 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %32 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %35 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.fc_exch*, i8*, i32, ...) @FC_EXCH_DBG(%struct.fc_exch* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %105

40:                                               ; preds = %20
  %41 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %42 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %41, i32 0, i32 5
  %43 = call %struct.fc_seq* @fc_seq_start_next_locked(i32* %42)
  store %struct.fc_seq* %43, %struct.fc_seq** %6, align 8
  %44 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %45 = icmp ne %struct.fc_seq* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %58 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %56
  %62 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %63 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.fc_frame* @fc_frame_alloc(i32 %64, i32 0)
  store %struct.fc_frame* %65, %struct.fc_frame** %7, align 8
  %66 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %67 = icmp ne %struct.fc_frame* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %70 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %71 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %75 = load i32, i32* @FC_RCTL_BA_ABTS, align 4
  %76 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %77 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %80 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @FC_TYPE_BLS, align 4
  %83 = load i32, i32* @FC_FC_END_SEQ, align 4
  %84 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %74, i32 %75, i32 %78, i64 %81, i32 %82, i32 %85, i32 0)
  %87 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %88 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %91 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %92 = call i32 @fc_seq_send_locked(i32 %89, %struct.fc_seq* %90, %struct.fc_frame* %91)
  store i32 %92, i32* %8, align 4
  br label %96

93:                                               ; preds = %61
  %94 = load i32, i32* @ENOBUFS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %68
  br label %98

97:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %100 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %101 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %46, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, i32, ...) #1

declare dso_local %struct.fc_seq* @fc_seq_start_next_locked(i32*) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(i32, i32) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @fc_seq_send_locked(i32, %struct.fc_seq*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
