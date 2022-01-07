; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.sbp_target_agent = type { i32, i32, i32, i32 }

@AGENT_STATE_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Ignoring DOORBELL while active.\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@AGENT_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"tgt_agent DOORBELL\0A\00", align 1
@system_unbound_wq = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*)* @tgt_agent_rw_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgt_agent_rw_doorbell(%struct.fw_card* %0, i32 %1, i8* %2, %struct.sbp_target_agent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sbp_target_agent*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.sbp_target_agent* %3, %struct.sbp_target_agent** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %43 [
    i32 128, label %11
    i32 129, label %41
  ]

11:                                               ; preds = %4
  %12 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %13 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %16 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AGENT_STATE_SUSPENDED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %22 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %21, i32 0, i32 2
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %11
  %27 = load i32, i32* @AGENT_STATE_ACTIVE, align 4
  %28 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %29 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %31 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %30, i32 0, i32 2
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %34 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @system_unbound_wq, align 4
  %37 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %38 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %37, i32 0, i32 1
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  %40 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41, %26, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
