; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler_samecid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler_samecid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsit_logout_post_handler_samecid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_logout_post_handler_samecid(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 2
  %13 = call i32 @cmpxchg(i32* %12, i32 1, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %30

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 0
  %24 = call i32 @complete(i32* %23)
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @iscsit_cause_connection_reinstatement(%struct.iscsi_conn* %25, i32 %26)
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %29 = call i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn* %28)
  br label %30

30:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_dec_conn_usage_count(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
