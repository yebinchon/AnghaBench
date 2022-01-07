; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_fsfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_fsfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.zfcp_erp_action* }

@ZFCP_STATUS_ERP_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erscf_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erscf_2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_strategy_check_fsfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 2
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %3, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.zfcp_fsf_req* @_zfcp_reqlist_find(%struct.TYPE_2__* %21, i32 %24)
  store %struct.zfcp_fsf_req* %25, %struct.zfcp_fsf_req** %4, align 8
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %27 = icmp ne %struct.zfcp_fsf_req* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %13
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %30 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %29, i32 0, i32 1
  %31 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %30, align 8
  %32 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %33 = icmp eq %struct.zfcp_erp_action* %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %36 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %39 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %50 = call i32 @zfcp_dbf_rec_run(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_erp_action* %49)
  %51 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %52 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %51, i32 0, i32 1
  store %struct.zfcp_erp_action* null, %struct.zfcp_erp_action** %52, align 8
  br label %53

53:                                               ; preds = %43, %34
  %54 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %55 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %62 = call i32 @zfcp_dbf_rec_run(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_erp_action* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %72 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %63
  br label %77

74:                                               ; preds = %28, %13
  %75 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %76 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  br label %83

83:                                               ; preds = %77, %12
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zfcp_fsf_req* @_zfcp_reqlist_find(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zfcp_dbf_rec_run(i8*, %struct.zfcp_erp_action*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
