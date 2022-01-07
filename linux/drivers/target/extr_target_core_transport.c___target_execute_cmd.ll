; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c___target_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c___target_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i64 (%struct.se_cmd*)*, i32 }

@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@SAM_STAT_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__target_execute_cmd(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 2
  %8 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %7, align 8
  %9 = icmp ne i64 (%struct.se_cmd*)* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %11, i64* %5, align 8
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = call i64 @target_scsi3_ua_check(%struct.se_cmd* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %47

21:                                               ; preds = %15
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = call i64 @target_alua_state_check(%struct.se_cmd* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %47

27:                                               ; preds = %21
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = call i64 @target_check_reservation(%struct.se_cmd* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @SAM_STAT_RESERVATION_CONFLICT, align 4
  %34 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %47

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %12
  %38 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 2
  %40 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %39, align 8
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = call i64 %40(%struct.se_cmd* %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %63

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %32, %26, %20, %10
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load i32, i32* @CMD_T_SENT, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @transport_generic_request_failure(%struct.se_cmd* %60, i64 %61)
  br label %63

63:                                               ; preds = %47, %45
  ret void
}

declare dso_local i64 @target_scsi3_ua_check(%struct.se_cmd*) #1

declare dso_local i64 @target_alua_state_check(%struct.se_cmd*) #1

declare dso_local i64 @target_check_reservation(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
