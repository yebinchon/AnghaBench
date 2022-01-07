; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_set_conn_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_set_conn_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session = type { i32 }
%struct.iscsi_conn = type { i64, i32, i32, %struct.iscsi_session* }

@auth_id_lock = common dso_local global i32 0, align 4
@iscsit_global = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.iscsi_conn*, i32)* @iscsi_login_set_conn_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_login_set_conn_values(%struct.iscsi_session* %0, %struct.iscsi_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %5, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 3
  store %struct.iscsi_session* %9, %struct.iscsi_session** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @be16_to_cpu(i32 %12)
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 1
  %18 = call i32 @get_random_bytes_wait(i32* %17, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %3
  %25 = call i32 @mutex_lock(i32* @auth_id_lock)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = sext i32 %28 to i64
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = call i32 @mutex_unlock(i32* @auth_id_lock)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_random_bytes_wait(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
