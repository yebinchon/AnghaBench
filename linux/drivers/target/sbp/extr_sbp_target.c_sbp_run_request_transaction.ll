; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_run_request_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_run_request_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.sbp_login_descriptor* }
%struct.sbp_login_descriptor = type { %struct.sbp_session* }
%struct.sbp_session = type { i32, i32, i32, i32, i32 }
%struct.fw_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp_target_request*, i32, i64, i8*, i64)* @sbp_run_request_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_run_request_transaction(%struct.sbp_target_request* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.sbp_target_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sbp_login_descriptor*, align 8
  %12 = alloca %struct.sbp_session*, align 8
  %13 = alloca %struct.fw_card*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.sbp_target_request*, %struct.sbp_target_request** %6, align 8
  %19 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %18, i32 0, i32 0
  %20 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %19, align 8
  store %struct.sbp_login_descriptor* %20, %struct.sbp_login_descriptor** %11, align 8
  %21 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %11, align 8
  %22 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %21, i32 0, i32 0
  %23 = load %struct.sbp_session*, %struct.sbp_session** %22, align 8
  store %struct.sbp_session* %23, %struct.sbp_session** %12, align 8
  %24 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %25 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %28 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.fw_card* @fw_card_get(i32 %29)
  store %struct.fw_card* %30, %struct.fw_card** %13, align 8
  %31 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %32 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %35 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %38 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load %struct.sbp_session*, %struct.sbp_session** %12, align 8
  %41 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.fw_card*, %struct.fw_card** %13, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @sbp_run_transaction(%struct.fw_card* %43, i32 %44, i32 %45, i32 %46, i32 %47, i64 %48, i8* %49, i64 %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.fw_card*, %struct.fw_card** %13, align 8
  %53 = call i32 @fw_card_put(%struct.fw_card* %52)
  %54 = load i32, i32* %17, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fw_card* @fw_card_get(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sbp_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i8*, i64) #1

declare dso_local i32 @fw_card_put(%struct.fw_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
