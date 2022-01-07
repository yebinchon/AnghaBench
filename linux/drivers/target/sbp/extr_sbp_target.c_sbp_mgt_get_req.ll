; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_mgt_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_mgt_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sbp_session = type { %struct.se_session* }
%struct.se_session = type { i64, i32 }
%struct.fw_card = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_target_request* (%struct.sbp_session*, %struct.fw_card*, i32)* @sbp_mgt_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_target_request* @sbp_mgt_get_req(%struct.sbp_session* %0, %struct.fw_card* %1, i32 %2) #0 {
  %4 = alloca %struct.sbp_target_request*, align 8
  %5 = alloca %struct.sbp_session*, align 8
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.sbp_target_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sbp_session* %0, %struct.sbp_session** %5, align 8
  store %struct.fw_card* %1, %struct.fw_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sbp_session*, %struct.sbp_session** %5, align 8
  %13 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %12, i32 0, i32 0
  %14 = load %struct.se_session*, %struct.se_session** %13, align 8
  store %struct.se_session* %14, %struct.se_session** %8, align 8
  %15 = load %struct.se_session*, %struct.se_session** %8, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 1
  %17 = call i32 @sbitmap_queue_get(i32* %16, i32* %11)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.sbp_target_request* @ERR_PTR(i32 %22)
  store %struct.sbp_target_request* %23, %struct.sbp_target_request** %4, align 8
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.se_session*, %struct.se_session** %8, align 8
  %26 = getelementptr inbounds %struct.se_session, %struct.se_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sbp_target_request*
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %28, i64 %30
  store %struct.sbp_target_request* %31, %struct.sbp_target_request** %9, align 8
  %32 = load %struct.sbp_target_request*, %struct.sbp_target_request** %9, align 8
  %33 = call i32 @memset(%struct.sbp_target_request* %32, i32 0, i32 12)
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.sbp_target_request*, %struct.sbp_target_request** %9, align 8
  %36 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.sbp_target_request*, %struct.sbp_target_request** %9, align 8
  %40 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sbp_target_request*, %struct.sbp_target_request** %9, align 8
  %44 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.sbp_target_request*, %struct.sbp_target_request** %9, align 8
  store %struct.sbp_target_request* %46, %struct.sbp_target_request** %4, align 8
  br label %47

47:                                               ; preds = %24, %20
  %48 = load %struct.sbp_target_request*, %struct.sbp_target_request** %4, align 8
  ret %struct.sbp_target_request* %48
}

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local %struct.sbp_target_request* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.sbp_target_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
