; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_tx_login_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_tx_login_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_2__*, i32, %struct.iscsi_login* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_login*, i32)* }
%struct.iscsi_login = type { i32, i32* }
%struct.iscsi_login_rsp = type { i32, i8*, i8*, i32 }

@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@ISCSI_OP_LOGIN_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_login_rsp*, align 8
  %8 = alloca %struct.iscsi_login*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 2
  %11 = load %struct.iscsi_login*, %struct.iscsi_login** %10, align 8
  store %struct.iscsi_login* %11, %struct.iscsi_login** %8, align 8
  %12 = load %struct.iscsi_login*, %struct.iscsi_login** %8, align 8
  %13 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @iscsit_collect_login_stats(%struct.iscsi_conn* %14, i8* %15, i8* %16)
  %18 = load %struct.iscsi_login*, %struct.iscsi_login** %8, align 8
  %19 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.iscsi_login*, %struct.iscsi_login** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = bitcast i32* %27 to %struct.iscsi_login_rsp*
  store %struct.iscsi_login_rsp* %28, %struct.iscsi_login_rsp** %7, align 8
  %29 = load i32, i32* @ISCSI_OP_LOGIN_RSP, align 4
  %30 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %7, align 8
  %31 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.iscsi_conn*, %struct.iscsi_login*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_login*, i32)** %46, align 8
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %49 = load %struct.iscsi_login*, %struct.iscsi_login** %8, align 8
  %50 = call i32 %47(%struct.iscsi_conn* %48, %struct.iscsi_login* %49, i32 0)
  ret i32 %50
}

declare dso_local i32 @iscsit_collect_login_stats(%struct.iscsi_conn*, i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
