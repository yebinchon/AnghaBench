; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_request_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_request_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcnss_ctrl = type { i32, i32, i32 }
%struct.wcnss_msg_hdr = type { i32, i32 }

@WCNSS_VERSION_REQ = common dso_local global i32 0, align 4
@WCNSS_CBC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"timeout waiting for version response\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcnss_ctrl*)* @wcnss_request_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_request_version(%struct.wcnss_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcnss_ctrl*, align 8
  %4 = alloca %struct.wcnss_msg_hdr, align 4
  %5 = alloca i32, align 4
  store %struct.wcnss_ctrl* %0, %struct.wcnss_ctrl** %3, align 8
  %6 = load i32, i32* @WCNSS_VERSION_REQ, align 4
  %7 = getelementptr inbounds %struct.wcnss_msg_hdr, %struct.wcnss_msg_hdr* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.wcnss_msg_hdr, %struct.wcnss_msg_hdr* %4, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rpmsg_send(i32 %11, %struct.wcnss_msg_hdr* %4, i32 8)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* @WCNSS_CBC_TIMEOUT, align 4
  %21 = call i32 @wait_for_completion_timeout(i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %24, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @rpmsg_send(i32, %struct.wcnss_msg_hdr*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
