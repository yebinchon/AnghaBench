; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pkt abort state %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to send abort\0A\00", align 1
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"target abort cmd  completed\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FC_SCSI_TM_TOV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"target abort cmd  failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"target abort cmd  passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fcp_pkt*)* @fc_fcp_pkt_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_pkt_abort(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  %6 = load i32, i32* @FAILED, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %8 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %9 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %13 = call i64 @fc_fcp_send_abort(%struct.fc_fcp_pkt* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %17 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @FAILED, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %21 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FC_SRB_ABORTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %28 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %19
  %31 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %32 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %31, i32 0, i32 3
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %35 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %37 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %40 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %39, i32 0, i32 3
  %41 = load i32, i32* @FC_SCSI_TM_TOV, align 4
  %42 = call i64 @wait_for_completion_timeout(i32* %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %44 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %47 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30
  %51 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %52 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %67

53:                                               ; preds = %30
  %54 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %55 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FC_SRB_ABORTED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %62 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  %64 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %65 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %64)
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %26, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, ...) #1

declare dso_local i64 @fc_fcp_send_abort(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
