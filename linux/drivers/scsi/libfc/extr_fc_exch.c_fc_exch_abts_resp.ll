; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abts_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abts_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i64, i32, i32, %struct.fc_seq, i32, i32 }
%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i32, i32 }
%struct.fc_ba_acc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"exch: BLS rctl %x - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Exchange timer canceled due to ABTS response\0A\00", align 1
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@FC_BA_SEQ_ID_VAL = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, %struct.fc_frame*)* @fc_exch_abts_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_abts_resp(%struct.fc_exch* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca %struct.fc_ba_acc*, align 8
  %7 = alloca %struct.fc_seq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %13 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %12)
  store %struct.fc_frame_header* %13, %struct.fc_frame_header** %5, align 8
  %14 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %15 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %16 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %19 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fc_exch_rctl_name(i32 %20)
  %22 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %24 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %23, i32 0, i32 6
  %25 = call i64 @cancel_delayed_work_sync(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %29 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %31 = call i32 @fc_exch_release(%struct.fc_exch* %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %34 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %33, i32 0, i32 3
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %37 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %88 [
    i32 129, label %39
    i32 128, label %87
  ]

39:                                               ; preds = %32
  %40 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %41 = call %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame* %40, i32 16)
  store %struct.fc_ba_acc* %41, %struct.fc_ba_acc** %6, align 8
  %42 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %43 = icmp ne %struct.fc_ba_acc* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %89

45:                                               ; preds = %39
  %46 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %47 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %51 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %55 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %45
  %61 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %62 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FC_BA_SEQ_ID_VAL, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %68 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %71 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %66, %60
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %80 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %81 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %85 = call i32 @fc_exch_hold(%struct.fc_exch* %84)
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %78, %74, %66, %45
  br label %89

87:                                               ; preds = %32
  br label %89

88:                                               ; preds = %32
  br label %89

89:                                               ; preds = %88, %87, %86, %44
  %90 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %91 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %90, i32 0, i32 4
  store %struct.fc_seq* %91, %struct.fc_seq** %7, align 8
  %92 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %93 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FC_TYPE_FCP, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %99 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ntoh24(i32 %100)
  %102 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %107 = call i32 @fc_exch_done_locked(%struct.fc_exch* %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %97, %89
  %109 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %110 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %109, i32 0, i32 3
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %113 = call i32 @fc_exch_hold(%struct.fc_exch* %112)
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %118 = call i32 @fc_exch_delete(%struct.fc_exch* %117)
  br label %119

119:                                              ; preds = %116, %108
  %120 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %121 = load %struct.fc_seq*, %struct.fc_seq** %7, align 8
  %122 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %123 = call i32 @fc_invoke_resp(%struct.fc_exch* %120, %struct.fc_seq* %121, %struct.fc_frame* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %127 = call i32 @fc_frame_free(%struct.fc_frame* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %133 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %134 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @fc_exch_timer_set(%struct.fc_exch* %132, i32 %135)
  br label %137

137:                                              ; preds = %131, %128
  %138 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %139 = call i32 @fc_exch_release(%struct.fc_exch* %138)
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, ...) #1

declare dso_local i32 @fc_exch_rctl_name(i32) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @fc_exch_done_locked(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_delete(%struct.fc_exch*) #1

declare dso_local i32 @fc_invoke_resp(%struct.fc_exch*, %struct.fc_seq*, %struct.fc_frame*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_timer_set(%struct.fc_exch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
