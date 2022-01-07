; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_create_conn_recovery_dataout_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl2.c_iscsit_create_conn_recovery_dataout_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_create_conn_recovery_dataout_values(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %5, i32 0, i32 3
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %4, align 8
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %43, %1
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %19, %26
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %43

42:                                               ; preds = %18
  br label %44

43:                                               ; preds = %32
  br label %12

44:                                               ; preds = %42, %12
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
