; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler_closesession.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler_closesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.TYPE_2__*, %struct.iscsi_session* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsit_logout_post_handler_closesession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_logout_post_handler_closesession(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 4
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  store %struct.iscsi_session* %7, %struct.iscsi_session** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 2
  %17 = call i32 @cmpxchg(i32* %16, i32 1, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %39

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 1
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = call i32 @complete(i32* %27)
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %30 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %29)
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @iscsit_stop_session(%struct.iscsi_session* %31, i32 %32, i32 %33)
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %36 = call i32 @iscsit_dec_session_usage_count(%struct.iscsi_session* %35)
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %38 = call i32 @iscsit_close_session(%struct.iscsi_session* %37)
  br label %39

39:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_stop_session(%struct.iscsi_session*, i32, i32) #1

declare dso_local i32 @iscsit_dec_session_usage_count(%struct.iscsi_session*) #1

declare dso_local i32 @iscsit_close_session(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
