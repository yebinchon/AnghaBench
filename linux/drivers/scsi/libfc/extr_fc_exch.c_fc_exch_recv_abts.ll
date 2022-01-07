; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_abts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_abts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, %struct.fc_seq, i32, i32 }
%struct.fc_seq = type { i32, i32, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_ba_acc = type { i8*, i8*, i32, i32 }
%struct.fc_frame_header = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"exch: ABTS received\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Drop ABTS request, out of memory\0A\00", align 1
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"exch: ABTS rejected, exchange complete\0A\00", align 1
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@SSB_ST_RESP = common dso_local global i32 0, align 4
@FC_BA_SEQ_ID_VAL = common dso_local global i32 0, align 4
@FC_RCTL_BA_ACC = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@ESB_ST_ABNORMAL = common dso_local global i32 0, align 4
@FC_BA_RJT_UNABLE = common dso_local global i32 0, align 4
@FC_BA_RJT_INV_XID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, %struct.fc_frame*)* @fc_exch_recv_abts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_recv_abts(%struct.fc_exch* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_ba_acc*, align 8
  %7 = alloca %struct.fc_frame_header*, align 8
  %8 = alloca %struct.fc_seq*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %9 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %10 = icmp ne %struct.fc_exch* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %119

12:                                               ; preds = %2
  %13 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %14 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %16 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.fc_frame* @fc_frame_alloc(i32 %17, i32 24)
  store %struct.fc_frame* %18, %struct.fc_frame** %5, align 8
  %19 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %20 = icmp ne %struct.fc_frame* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %23 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %116

24:                                               ; preds = %12
  %25 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %26 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %29 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %36 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %39 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %41 = call i32 @fc_frame_free(%struct.fc_frame* %40)
  br label %119

42:                                               ; preds = %24
  %43 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %44 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %51 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %52 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %56 = call i32 @fc_exch_hold(%struct.fc_exch* %55)
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %59 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %60 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %58, i32 %61)
  %63 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %64 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %63)
  store %struct.fc_frame_header* %64, %struct.fc_frame_header** %7, align 8
  %65 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %66 = call %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame* %65, i32 24)
  store %struct.fc_ba_acc* %66, %struct.fc_ba_acc** %6, align 8
  %67 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %68 = call i32 @memset(%struct.fc_ba_acc* %67, i32 0, i32 24)
  %69 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %70 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %69, i32 0, i32 2
  store %struct.fc_seq* %70, %struct.fc_seq** %8, align 8
  %71 = call i8* @htons(i32 65535)
  %72 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %73 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %75 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SSB_ST_RESP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %57
  %81 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %82 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %85 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @FC_BA_SEQ_ID_VAL, align 4
  %87 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %88 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %90 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %93 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %95 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @htons(i32 %96)
  %98 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %99 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %80, %57
  %101 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %102 = call %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq* %101)
  store %struct.fc_seq* %102, %struct.fc_seq** %8, align 8
  %103 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %104 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %105 = load i32, i32* @FC_RCTL_BA_ACC, align 4
  %106 = load i32, i32* @FC_TYPE_BLS, align 4
  %107 = call i32 @fc_seq_send_last(%struct.fc_seq* %103, %struct.fc_frame* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %109 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %110 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %114 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock_bh(i32* %114)
  br label %116

116:                                              ; preds = %119, %100, %21
  %117 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %118 = call i32 @fc_frame_free(%struct.fc_frame* %117)
  ret void

119:                                              ; preds = %34, %11
  %120 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %121 = load i32, i32* @FC_BA_RJT_UNABLE, align 4
  %122 = load i32, i32* @FC_BA_RJT_INV_XID, align 4
  %123 = call i32 @fc_exch_send_ba_rjt(%struct.fc_frame* %120, i32 %121, i32 %122)
  br label %116
}

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_ba_acc*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq*) #1

declare dso_local i32 @fc_seq_send_last(%struct.fc_seq*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_exch_send_ba_rjt(%struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
