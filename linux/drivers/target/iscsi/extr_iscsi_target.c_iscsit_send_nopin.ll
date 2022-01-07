; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_nopin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_nopin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32* }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32, i32)* }
%struct.iscsi_nopin = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Echoing back %u bytes of ping data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_send_nopin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_send_nopin(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_nopin*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = bitcast i32* %9 to %struct.iscsi_nopin*
  store %struct.iscsi_nopin* %10, %struct.iscsi_nopin** %5, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %14 = call i32 @iscsit_build_nopin_rsp(%struct.iscsi_cmd* %11, %struct.iscsi_conn* %12, %struct.iscsi_nopin* %13, i32 1)
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32, i32)** %22, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %23(%struct.iscsi_conn* %24, %struct.iscsi_cmd* %25, i32* null, i32 %28, i32 %31)
  ret i32 %32
}

declare dso_local i32 @iscsit_build_nopin_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_nopin*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
