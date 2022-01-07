; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_platform_conn_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_platform_conn_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, i64 }
%struct.vchiq_arm_state = type { i32, i32, i32 }

@vchiq_susp_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d: %s->%s\00", align 1
@VCHIQ_CONNSTATE_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"vchiq-keep/%d\00", align 1
@vchiq_keepalive_thread_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"vchiq: FATAL: couldn't create thread %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_platform_conn_state_changed(%struct.vchiq_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vchiq_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vchiq_arm_state*, align 8
  %8 = alloca [16 x i8], align 16
  store %struct.vchiq_state* %0, %struct.vchiq_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %10 = call %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state* %9)
  store %struct.vchiq_arm_state* %10, %struct.vchiq_arm_state** %7, align 8
  %11 = load i32, i32* @vchiq_susp_log_level, align 4
  %12 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %13 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_conn_state_name(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @get_conn_state_name(i32 %17)
  %19 = call i32 @vchiq_log_info(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18)
  %20 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %21 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VCHIQ_CONNSTATE_CONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %3
  %26 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %27 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %26, i32 0, i32 1
  %28 = call i32 @write_lock_bh(i32* %27)
  %29 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %30 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %25
  %34 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %35 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %37 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %36, i32 0, i32 1
  %38 = call i32 @write_unlock_bh(i32* %37)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %40 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %41 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %39, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %45 = bitcast %struct.vchiq_state* %44 to i8*
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %47 = call i32 @kthread_create(i32* @vchiq_keepalive_thread_func, i8* %45, i8* %46)
  %48 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %49 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %51 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load i32, i32* @vchiq_susp_log_level, align 4
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %58 = call i32 @vchiq_log_error(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %64

59:                                               ; preds = %33
  %60 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %61 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wake_up_process(i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %69

65:                                               ; preds = %25
  %66 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %7, align 8
  %67 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %66, i32 0, i32 1
  %68 = call i32 @write_unlock_bh(i32* %67)
  br label %69

69:                                               ; preds = %65, %64
  br label %70

70:                                               ; preds = %69, %3
  ret void
}

declare dso_local %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state*) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_conn_state_name(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kthread_create(i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i8*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
