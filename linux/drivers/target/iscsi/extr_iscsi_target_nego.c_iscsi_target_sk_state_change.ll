; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_sk_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_sk_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { {}*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Entering iscsi_target_sk_state_change\0A\00", align 1
@LOGIN_FLAGS_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Got LOGIN_FLAGS_READY=0 sk_state_change conn: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"__iscsi_target_sk_close_change: state: %d\0A\00", align 1
@LOGIN_FLAGS_READ_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Got LOGIN_FLAGS_READ_ACTIVE=1 sk_state_change conn: %p\0A\00", align 1
@LOGIN_FLAGS_CLOSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Got LOGIN_FLAGS_CLOSED=1 sk_state_change conn: %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"iscsi_target_sk_state_change got failed state\0A\00", align 1
@LOGIN_FLAGS_INITIAL_PDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iscsi_target_sk_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_target_sk_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca void (%struct.sock*)*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %3, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = icmp ne %struct.iscsi_conn* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = call i32 @write_unlock_bh(i32* %17)
  br label %108

19:                                               ; preds = %1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to void (%struct.sock*)**
  %23 = load void (%struct.sock*)*, void (%struct.sock*)** %22, align 8
  store void (%struct.sock*)* %23, void (%struct.sock*)** %4, align 8
  %24 = load i32, i32* @LOGIN_FLAGS_READY, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_conn* %30)
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = call i32 @write_unlock_bh(i32* %33)
  %35 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  call void %35(%struct.sock* %36)
  br label %108

37:                                               ; preds = %19
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 @__iscsi_target_sk_check_close(%struct.sock* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @LOGIN_FLAGS_READ_ACTIVE, align 4
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), %struct.iscsi_conn* %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @LOGIN_FLAGS_CLOSED, align 4
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 2
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = call i32 @write_unlock_bh(i32* %59)
  %61 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  call void %61(%struct.sock* %62)
  br label %108

63:                                               ; preds = %37
  %64 = load i32, i32* @LOGIN_FLAGS_CLOSED, align 4
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 2
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), %struct.iscsi_conn* %70)
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = call i32 @write_unlock_bh(i32* %73)
  %75 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %76 = load %struct.sock*, %struct.sock** %2, align 8
  call void %75(%struct.sock* %76)
  br label %108

77:                                               ; preds = %63
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @LOGIN_FLAGS_CLOSED, align 4
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %84 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load i32, i32* @LOGIN_FLAGS_INITIAL_PDU, align 4
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 2
  %89 = call i32 @test_bit(i32 %86, i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.sock*, %struct.sock** %2, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = call i32 @write_unlock_bh(i32* %91)
  %93 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %94 = load %struct.sock*, %struct.sock** %2, align 8
  call void %93(%struct.sock* %94)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %80
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %99 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %98, i32 0, i32 1
  %100 = call i32 @schedule_delayed_work(i32* %99, i32 0)
  br label %101

101:                                              ; preds = %97, %80
  br label %108

102:                                              ; preds = %77
  %103 = load %struct.sock*, %struct.sock** %2, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = call i32 @write_unlock_bh(i32* %104)
  %106 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %107 = load %struct.sock*, %struct.sock** %2, align 8
  call void %106(%struct.sock* %107)
  br label %108

108:                                              ; preds = %102, %101, %69, %57, %29, %15
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__iscsi_target_sk_check_close(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
