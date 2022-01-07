; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_rrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32, i32 }
%struct.fc_els_rrq = type { i8*, i8*, i32, i32 }
%struct.fc_frame = type { i32 }

@ELS_RRQ = common dso_local global i32 0, align 4
@ESB_ST_RESP = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REQ = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i32 0, align 4
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@fc_exch_rrq_resp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"exch: RRQ send failed\0A\00", align 1
@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@FC_EX_DONE = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_rrq(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_els_rrq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  %7 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %8 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %7, i32 0, i32 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  store %struct.fc_lport* %9, %struct.fc_lport** %3, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %10, i32 24)
  store %struct.fc_frame* %11, %struct.fc_frame** %5, align 8
  %12 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %13 = icmp ne %struct.fc_frame* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %17 = call %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame* %16, i32 24)
  store %struct.fc_els_rrq* %17, %struct.fc_els_rrq** %4, align 8
  %18 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %4, align 8
  %19 = call i32 @memset(%struct.fc_els_rrq* %18, i32 0, i32 24)
  %20 = load i32, i32* @ELS_RRQ, align 4
  %21 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %4, align 8
  %22 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %4, align 8
  %24 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %27 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hton24(i32 %25, i32 %28)
  %30 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %31 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @htons(i32 %32)
  %34 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %4, align 8
  %35 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %37 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %4, align 8
  %41 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %43 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %46 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ESB_ST_RESP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %15
  %52 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %53 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %15
  %56 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %57 = load i32, i32* @FC_RCTL_ELS_REQ, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FC_TYPE_ELS, align 4
  %63 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %64 = load i32, i32* @FC_FC_END_SEQ, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %56, i32 %57, i32 %58, i32 %61, i32 %62, i32 %67, i32 0)
  %69 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %70 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %71 = load i32, i32* @fc_exch_rrq_resp, align 4
  %72 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %73 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @fc_exch_seq_send(%struct.fc_lport* %69, %struct.fc_frame* %70, i32 %71, i32* null, %struct.fc_exch* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %55
  br label %114

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79, %14
  %81 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %82 = call i32 @FC_EXCH_DBG(%struct.fc_exch* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %84 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %83, i32 0, i32 2
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %87 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %90 = load i32, i32* @FC_EX_DONE, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %96 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %95, i32 0, i32 2
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %99 = call i32 @fc_exch_release(%struct.fc_exch* %98)
  br label %114

100:                                              ; preds = %80
  %101 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %102 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %103 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %107 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %108 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %106, i32 %109)
  %111 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %112 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock_bh(i32* %112)
  br label %114

114:                                              ; preds = %100, %94, %78
  ret void
}

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_rrq*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @fc_exch_seq_send(%struct.fc_lport*, %struct.fc_frame*, i32, i32*, %struct.fc_exch*, i32) #1

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
