; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tmr.c___target_check_io_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tmr.c___target_check_io_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, %struct.se_session*, i32 }
%struct.se_session = type { i32 }

@CMD_T_COMPLETE = common dso_local global i32 0, align 4
@CMD_T_FABRIC_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Attempted to abort io tag: %llu already complete or fabric stop, skipping\0A\00", align 1
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@CMD_T_TAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.se_session*, i32)* @__target_check_io_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__target_check_io_state(%struct.se_cmd* %0, %struct.se_session* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.se_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_session*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store %struct.se_session* %1, %struct.se_session** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 3
  %11 = load %struct.se_session*, %struct.se_session** %10, align 8
  store %struct.se_session* %11, %struct.se_session** %8, align 8
  %12 = load %struct.se_session*, %struct.se_session** %8, align 8
  %13 = getelementptr inbounds %struct.se_session, %struct.se_session* %12, i32 0, i32 0
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = call i32 (...) @irqs_disabled()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CMD_T_COMPLETE, align 4
  %27 = load i32, i32* @CMD_T_FABRIC_STOP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  store i32 0, i32* %4, align 4
  br label %66

39:                                               ; preds = %3
  %40 = load i32, i32* @CMD_T_ABORTED, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.se_session*, %struct.se_session** %6, align 8
  %46 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 3
  %48 = load %struct.se_session*, %struct.se_session** %47, align 8
  %49 = icmp ne %struct.se_session* %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @CMD_T_TAS, align 4
  %55 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %50, %39
  %60 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 1
  %65 = call i32 @kref_get_unless_zero(i32* %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %31
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
