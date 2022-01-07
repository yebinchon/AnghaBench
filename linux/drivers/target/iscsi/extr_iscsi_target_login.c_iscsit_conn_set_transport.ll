; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_conn_set_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_conn_set_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsit_transport* }
%struct.iscsit_transport = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"try_module_get() failed for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsit_transport*)* @iscsit_conn_set_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_conn_set_transport(%struct.iscsi_conn* %0, %struct.iscsit_transport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsit_transport*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsit_transport* %1, %struct.iscsit_transport** %5, align 8
  %7 = load %struct.iscsit_transport*, %struct.iscsit_transport** %5, align 8
  %8 = getelementptr inbounds %struct.iscsit_transport, %struct.iscsit_transport* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.iscsit_transport*, %struct.iscsit_transport** %5, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  store %struct.iscsit_transport* %12, %struct.iscsit_transport** %14, align 8
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.iscsit_transport*, %struct.iscsit_transport** %5, align 8
  %17 = getelementptr inbounds %struct.iscsit_transport, %struct.iscsit_transport* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @try_module_get(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.iscsit_transport*, %struct.iscsit_transport** %5, align 8
  %24 = getelementptr inbounds %struct.iscsit_transport, %struct.iscsit_transport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %15
  %30 = load %struct.iscsit_transport*, %struct.iscsit_transport** %5, align 8
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  store %struct.iscsit_transport* %30, %struct.iscsit_transport** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %22, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
