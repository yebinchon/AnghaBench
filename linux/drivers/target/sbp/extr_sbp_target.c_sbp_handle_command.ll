; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i32, %struct.sbp_login_descriptor* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sbp_login_descriptor = type { i32, %struct.sbp_session* }
%struct.sbp_session = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"sbp_handle_command: fetch command failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"sbp_handle_command: fetch page table failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"sbp_handle_command ORB:0x%llx unpacked_lun:%d data_len:%d data_dir:%d\0A\00", align 1
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@STATUS_RESP_TRANSPORT_FAILURE = common dso_local global i32 0, align 4
@SBP_STATUS_UNSPECIFIED_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_target_request*)* @sbp_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_handle_command(%struct.sbp_target_request* %0) #0 {
  %2 = alloca %struct.sbp_target_request*, align 8
  %3 = alloca %struct.sbp_login_descriptor*, align 8
  %4 = alloca %struct.sbp_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %2, align 8
  %9 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %10 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %9, i32 0, i32 5
  %11 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %10, align 8
  store %struct.sbp_login_descriptor* %11, %struct.sbp_login_descriptor** %3, align 8
  %12 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %13 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %12, i32 0, i32 1
  %14 = load %struct.sbp_session*, %struct.sbp_session** %13, align 8
  store %struct.sbp_session* %14, %struct.sbp_session** %4, align 8
  %15 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %16 = call i32 @sbp_fetch_command(%struct.sbp_target_request* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %24 = call i32 @sbp_fetch_page_table(%struct.sbp_target_request* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %71

30:                                               ; preds = %22
  %31 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %32 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %31, i32 0, i32 5
  %33 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %32, align 8
  %34 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %37 = call i32 @sbp_calc_data_length_direction(%struct.sbp_target_request* %36, i32* %7, i32* %8)
  %38 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %39 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %46 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %49 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %52 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %51, i32 0, i32 3
  %53 = load %struct.sbp_session*, %struct.sbp_session** %4, align 8
  %54 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %57 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %60 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %67 = call i64 @target_submit_cmd(%struct.TYPE_4__* %52, i32 %55, i32 %58, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %30
  br label %71

70:                                               ; preds = %30
  br label %89

71:                                               ; preds = %69, %27, %19
  %72 = load i32, i32* @STATUS_RESP_TRANSPORT_FAILURE, align 4
  %73 = call i32 @STATUS_BLOCK_RESP(i32 %72)
  %74 = call i32 @STATUS_BLOCK_DEAD(i32 0)
  %75 = or i32 %73, %74
  %76 = call i32 @STATUS_BLOCK_LEN(i32 1)
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SBP_STATUS_UNSPECIFIED_ERROR, align 4
  %79 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %78)
  %80 = or i32 %77, %79
  %81 = call i32 @cpu_to_be32(i32 %80)
  %82 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %83 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  %87 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %88 = call i32 @sbp_send_status(%struct.sbp_target_request* %87)
  br label %89

89:                                               ; preds = %71, %70
  ret void
}

declare dso_local i32 @sbp_fetch_command(%struct.sbp_target_request*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @sbp_fetch_page_table(%struct.sbp_target_request*) #1

declare dso_local i32 @sbp_calc_data_length_direction(%struct.sbp_target_request*, i32*, i32*) #1

declare dso_local i64 @target_submit_cmd(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @STATUS_BLOCK_RESP(i32) #1

declare dso_local i32 @STATUS_BLOCK_DEAD(i32) #1

declare dso_local i32 @STATUS_BLOCK_LEN(i32) #1

declare dso_local i32 @STATUS_BLOCK_SBP_STATUS(i32) #1

declare dso_local i32 @sbp_send_status(%struct.sbp_target_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
