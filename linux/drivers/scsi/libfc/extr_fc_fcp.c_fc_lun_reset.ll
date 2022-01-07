; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_fcp_pkt = type { i32, i64, i32, i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FCP_TMF_LUN_RESET = common dso_local global i32 0, align 4
@FC_SCSI_TM_TOV = common dso_local global i32 0, align 4
@FC_SRB_COMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"lun reset failed\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@FCP_TMF_CMPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"lun reset to lun %u completed\0A\00", align 1
@FC_CMD_ABORTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_fcp_pkt*, i32, i32)* @fc_lun_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lun_reset(%struct.fc_lport* %0, %struct.fc_fcp_pkt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %6, align 8
  store %struct.fc_fcp_pkt* %1, %struct.fc_fcp_pkt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @htonl(i32 %13)
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @FCP_TMF_LUN_RESET, align 4
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %20 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %24 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @int_to_scsilun(i32 %22, i32* %25)
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %28 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %30 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %29, i32 0, i32 6
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %33 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %32, i32 0, i32 4
  %34 = call i32 @fc_lun_reset_send(i32* %33)
  %35 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %36 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %35, i32 0, i32 6
  %37 = load i32, i32* @FC_SCSI_TM_TOV, align 4
  %38 = call i32 @wait_for_completion_timeout(i32* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %40 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load i32, i32* @FC_SRB_COMPL, align 4
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %44 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %48 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %51 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %50, i32 0, i32 4
  %52 = call i32 @del_timer_sync(i32* %51)
  %53 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %54 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %53, i32 0, i32 2
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %57 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %4
  %61 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %62 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @fc_exch_done(i32* %63)
  %65 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %66 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %4
  %68 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %69 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %71 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %77 = call i32 (%struct.fc_lport*, i8*, ...) @FC_SCSI_DBG(%struct.fc_lport* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @FAILED, align 4
  store i32 %78, i32* %5, align 4
  br label %97

79:                                               ; preds = %67
  %80 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %81 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FCP_TMF_CMPL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @FAILED, align 4
  store i32 %86, i32* %5, align 4
  br label %97

87:                                               ; preds = %79
  %88 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (%struct.fc_lport*, i8*, ...) @FC_SCSI_DBG(%struct.fc_lport* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @FC_CMD_ABORTED, align 4
  %95 = call i32 @fc_fcp_cleanup_each_cmd(%struct.fc_lport* %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @SUCCESS, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %87, %85, %75
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fc_lun_reset_send(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @fc_exch_done(i32*) #1

declare dso_local i32 @FC_SCSI_DBG(%struct.fc_lport*, i8*, ...) #1

declare dso_local i32 @fc_fcp_cleanup_each_cmd(%struct.fc_lport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
