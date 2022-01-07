; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_orb_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_tgt_agent_rw_orb_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.sbp_target_agent = type { i32, i32, i32, i32, i32 }
%struct.sbp2_pointer = type { i32 }

@AGENT_STATE_SUSPENDED = common dso_local global i32 0, align 4
@AGENT_STATE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Ignoring ORB_POINTER write while active.\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@AGENT_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"tgt_agent ORB_POINTER write: 0x%llx\0A\00", align 1
@system_unbound_wq = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"tgt_agent ORB_POINTER READ\0A\00", align 1
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i8*, %struct.sbp_target_agent*)* @tgt_agent_rw_orb_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgt_agent_rw_orb_pointer(%struct.fw_card* %0, i32 %1, i8* %2, %struct.sbp_target_agent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sbp_target_agent*, align 8
  %10 = alloca %struct.sbp2_pointer*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.sbp_target_agent* %3, %struct.sbp_target_agent** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.sbp2_pointer*
  store %struct.sbp2_pointer* %12, %struct.sbp2_pointer** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %71 [
    i32 128, label %14
    i32 129, label %57
  ]

14:                                               ; preds = %4
  %15 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %16 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %19 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AGENT_STATE_SUSPENDED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %25 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AGENT_STATE_RESET, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %31 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = call i32 @pr_notice(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %34, i32* %5, align 4
  br label %73

35:                                               ; preds = %23, %14
  %36 = load i32, i32* @AGENT_STATE_ACTIVE, align 4
  %37 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %38 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %40 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.sbp2_pointer*, %struct.sbp2_pointer** %10, align 8
  %43 = call i32 @sbp2_pointer_to_addr(%struct.sbp2_pointer* %42)
  %44 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %45 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %47 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %49 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @system_unbound_wq, align 4
  %53 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %54 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %53, i32 0, i32 3
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  %56 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %56, i32* %5, align 4
  br label %73

57:                                               ; preds = %4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %60 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %63 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sbp2_pointer*, %struct.sbp2_pointer** %10, align 8
  %66 = call i32 @addr_to_sbp2_pointer(i32 %64, %struct.sbp2_pointer* %65)
  %67 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %9, align 8
  %68 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %70, i32* %5, align 4
  br label %73

71:                                               ; preds = %4
  %72 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %57, %35, %29
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @sbp2_pointer_to_addr(%struct.sbp2_pointer*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @addr_to_sbp2_pointer(i32, %struct.sbp2_pointer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
