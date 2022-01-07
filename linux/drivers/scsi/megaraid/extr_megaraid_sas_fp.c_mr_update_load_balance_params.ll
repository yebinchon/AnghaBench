; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_load_balance_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_load_balance_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.LD_LOAD_BALANCE_INFO = type { i32 }
%struct.MR_LD_RAID = type { i32, i64 }

@lb_pending_cmds = common dso_local global i32 0, align 4
@LB_PENDING_CMDS_DEFAULT = common dso_local global i32 0, align 4
@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4
@MR_LD_STATE_OPTIMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mr_update_load_balance_params(%struct.MR_DRV_RAID_MAP_ALL* %0, %struct.LD_LOAD_BALANCE_INFO* %1) #0 {
  %3 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %4 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MR_LD_RAID*, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %0, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  store %struct.LD_LOAD_BALANCE_INFO* %1, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %8 = load i32, i32* @lb_pending_cmds, align 4
  %9 = icmp sgt i32 %8, 128
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @lb_pending_cmds, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @LB_PENDING_CMDS_DEFAULT, align 4
  store i32 %14, i32* @lb_pending_cmds, align 4
  br label %15

15:                                               ; preds = %13, %10
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %23 = call i32 @MR_TargetIdToLdGet(i32 %21, %struct.MR_DRV_RAID_MAP_ALL* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %29, i64 %31
  %33 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %60

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %37 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %35, %struct.MR_DRV_RAID_MAP_ALL* %36)
  store %struct.MR_LD_RAID* %37, %struct.MR_LD_RAID** %7, align 8
  %38 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %39 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %44 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MR_LD_STATE_OPTIMAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42, %34
  %49 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %49, i64 %51
  %53 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %60

54:                                               ; preds = %42
  %55 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %55, i64 %57
  %59 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %48, %28
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %16

63:                                               ; preds = %16
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
