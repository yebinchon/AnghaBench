; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_check_initiator_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_check_initiator_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }

@.str = private unnamed_addr constant [90 x i8] c"Unsupported iSCSI IETF Pre-RFC Revision, version Min/Max 0x%02x/0x%02x, rejecting login.\0A\00", align 1
@ISCSI_STATUS_CLS_INITIATOR_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_NO_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i32, i32)* @iscsi_login_check_initiator_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_login_check_initiator_version(%struct.iscsi_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %18 = load i32, i32* @ISCSI_STATUS_CLS_INITIATOR_ERR, align 4
  %19 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_VERSION, align 4
  %20 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %17, i32 %18, i32 %19)
  store i32 -1, i32* %4, align 4
  br label %22

21:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
