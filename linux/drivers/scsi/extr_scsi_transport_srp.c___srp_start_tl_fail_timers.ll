; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c___srp_start_tl_fail_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c___srp_start_tl_fail_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s current state: %d\0A\00", align 1
@SRP_RPORT_LOST = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@SRP_RPORT_BLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s new state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_rport*)* @__srp_start_tl_fail_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__srp_start_tl_fail_timers(%struct.srp_rport* %0) #0 {
  %2 = alloca %struct.srp_rport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.srp_rport* %0, %struct.srp_rport** %2, align 8
  %7 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %8 = call %struct.Scsi_Host* @rport_to_shost(%struct.srp_rport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %10 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %9, i32 0, i32 7
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %13 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %16 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %19 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = call i32 @dev_name(i32* %22)
  %24 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %25 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %29 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SRP_RPORT_LOST, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %95

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @system_long_wq, align 4
  %39 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %40 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %39, i32 0, i32 6
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 1, %42
  %44 = load i64, i64* @HZ, align 8
  %45 = mul i64 %43, %44
  %46 = call i32 @queue_delayed_work(i32 %38, i32* %40, i64 %45)
  br label %47

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %50, %47
  %54 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %55 = load i32, i32* @SRP_RPORT_BLOCKED, align 4
  %56 = call i64 @srp_rport_set_state(%struct.srp_rport* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %53
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = call i32 @dev_name(i32* %60)
  %62 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %63 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 0
  %68 = call i32 @scsi_target_block(i32* %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load i32, i32* @system_long_wq, align 4
  %73 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %74 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %73, i32 0, i32 4
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 1, %76
  %78 = load i64, i64* @HZ, align 8
  %79 = mul i64 %77, %78
  %80 = call i32 @queue_delayed_work(i32 %72, i32* %74, i64 %79)
  br label %81

81:                                               ; preds = %71, %58
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* @system_long_wq, align 4
  %86 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %87 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %86, i32 0, i32 3
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 1, %89
  %91 = load i64, i64* @HZ, align 8
  %92 = mul i64 %90, %91
  %93 = call i32 @queue_delayed_work(i32 %85, i32* %87, i64 %92)
  br label %94

94:                                               ; preds = %84, %81
  br label %95

95:                                               ; preds = %33, %94, %53, %50
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.srp_rport*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i64 @srp_rport_set_state(%struct.srp_rport*, i32) #1

declare dso_local i32 @scsi_target_block(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
