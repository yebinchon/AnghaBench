; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_alloc_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_alloc_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_conn*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_np = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not allocate memory for new connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Moving to TARG_CONN_STATE_FREE.\0A\00", align 1
@TARG_CONN_STATE_FREE = common dso_local global i32 0, align 4
@iscsit_handle_nopin_response_timeout = common dso_local global i32 0, align 4
@iscsit_handle_nopin_timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for struct iscsi_conn_ops.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to allocate conn->conn_cpumask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_conn* (%struct.iscsi_np*)* @iscsit_alloc_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_conn* @iscsit_alloc_conn(%struct.iscsi_np* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_np*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_np* %0, %struct.iscsi_np** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 112, i32 %5)
  %7 = bitcast i8* %6 to %struct.iscsi_conn*
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %4, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %9 = icmp ne %struct.iscsi_conn* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %2, align 8
  br label %124

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @TARG_CONN_STATE_FREE, align 4
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 24
  store i32 %14, i32* %16, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 23
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 22
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 21
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 20
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 19
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 18
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 17
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 16
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 15
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 14
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 13
  %49 = call i32 @init_completion(i32* %48)
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 12
  %52 = call i32 @init_completion(i32* %51)
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 11
  %55 = call i32 @init_completion(i32* %54)
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 10
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 9
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 8
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 7
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %68, i32 0, i32 6
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %71, i32 0, i32 5
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 4
  %76 = load i32, i32* @iscsit_handle_nopin_response_timeout, align 4
  %77 = call i32 @timer_setup(i32* %75, i32 %76, i32 0)
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %78, i32 0, i32 3
  %80 = load i32, i32* @iscsit_handle_nopin_timeout, align 4
  %81 = call i32 @timer_setup(i32* %79, i32 %80, i32 0)
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %83 = load %struct.iscsi_np*, %struct.iscsi_np** %3, align 8
  %84 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @iscsit_conn_set_transport(%struct.iscsi_conn* %82, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %12
  br label %121

89:                                               ; preds = %12
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @kzalloc(i32 4, i32 %90)
  %92 = bitcast i8* %91 to %struct.iscsi_conn*
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %94 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %93, i32 0, i32 1
  store %struct.iscsi_conn* %92, %struct.iscsi_conn** %94, align 8
  %95 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %95, i32 0, i32 1
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %96, align 8
  %98 = icmp ne %struct.iscsi_conn* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %116

101:                                              ; preds = %89
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 2
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @zalloc_cpumask_var(i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %111

109:                                              ; preds = %101
  %110 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_conn* %110, %struct.iscsi_conn** %2, align 8
  br label %124

111:                                              ; preds = %107
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 1
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %113, align 8
  %115 = call i32 @kfree(%struct.iscsi_conn* %114)
  br label %116

116:                                              ; preds = %111, %99
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %118 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @iscsit_put_transport(i32 %119)
  br label %121

121:                                              ; preds = %116, %88
  %122 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %123 = call i32 @kfree(%struct.iscsi_conn* %122)
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %2, align 8
  br label %124

124:                                              ; preds = %121, %109, %10
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  ret %struct.iscsi_conn* %125
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @iscsit_conn_set_transport(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_put_transport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
