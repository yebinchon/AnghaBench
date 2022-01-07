; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32* }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)* }
%struct.iscsi_logout_rsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_send_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_send_logout(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to %struct.iscsi_logout_rsp*
  %14 = call i32 @iscsit_build_logout_rsp(%struct.iscsi_cmd* %7, %struct.iscsi_conn* %8, %struct.iscsi_logout_rsp* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)** %23, align 8
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %27 = call i32 %24(%struct.iscsi_conn* %25, %struct.iscsi_cmd* %26, i32* null, i32* null, i32 0)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @iscsit_build_logout_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_logout_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
