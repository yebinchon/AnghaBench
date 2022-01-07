; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { i32, i32, %struct.TYPE_2__, %struct.sbp_login_descriptor* }
%struct.TYPE_2__ = type { i32 }
%struct.sbp_login_descriptor = type { i32 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sbp_send_status: write failed: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"sbp_send_status: status write complete for ORB: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp_target_request*)* @sbp_send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_send_status(%struct.sbp_target_request* %0) #0 {
  %2 = alloca %struct.sbp_target_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp_login_descriptor*, align 8
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %8 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %7, i32 0, i32 3
  %9 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %8, align 8
  store %struct.sbp_login_descriptor* %9, %struct.sbp_login_descriptor** %6, align 8
  %10 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %11 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = ashr i32 %14, 24
  %16 = and i32 %15, 7
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %20 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %21 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %25 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %24, i32 0, i32 2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sbp_run_request_transaction(%struct.sbp_target_request* %19, i32 %20, i32 %23, %struct.TYPE_2__* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @RCODE_COMPLETE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %1
  %37 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %38 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %43 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %42, i32 0, i32 1
  %44 = call i32 @target_put_sess_cmd(i32* %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sbp_run_request_transaction(%struct.sbp_target_request*, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @target_put_sess_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
