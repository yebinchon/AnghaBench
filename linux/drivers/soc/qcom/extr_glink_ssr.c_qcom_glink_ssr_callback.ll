; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.cleanup_done_msg = type { i32, i32, i32 }
%struct.glink_ssr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"message too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GLINK_SSR_CLEANUP_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid sequence number of response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @qcom_glink_ssr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_ssr_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cleanup_done_msg*, align 8
  %13 = alloca %struct.glink_ssr*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.cleanup_done_msg*
  store %struct.cleanup_done_msg* %15, %struct.cleanup_done_msg** %12, align 8
  %16 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %17 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %16, i32 0, i32 0
  %18 = call %struct.glink_ssr* @dev_get_drvdata(i32* %17)
  store %struct.glink_ssr* %18, %struct.glink_ssr** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 12
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.glink_ssr*, %struct.glink_ssr** %13, align 8
  %24 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %66

29:                                               ; preds = %5
  %30 = load %struct.cleanup_done_msg*, %struct.cleanup_done_msg** %12, align 8
  %31 = getelementptr inbounds %struct.cleanup_done_msg, %struct.cleanup_done_msg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %66

38:                                               ; preds = %29
  %39 = load %struct.cleanup_done_msg*, %struct.cleanup_done_msg** %12, align 8
  %40 = getelementptr inbounds %struct.cleanup_done_msg, %struct.cleanup_done_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  %43 = load i64, i64* @GLINK_SSR_CLEANUP_DONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %66

46:                                               ; preds = %38
  %47 = load %struct.cleanup_done_msg*, %struct.cleanup_done_msg** %12, align 8
  %48 = getelementptr inbounds %struct.cleanup_done_msg, %struct.cleanup_done_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  %51 = load %struct.glink_ssr*, %struct.glink_ssr** %13, align 8
  %52 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.glink_ssr*, %struct.glink_ssr** %13, align 8
  %57 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.glink_ssr*, %struct.glink_ssr** %13, align 8
  %64 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %63, i32 0, i32 1
  %65 = call i32 @complete(i32* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %55, %45, %35, %22
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.glink_ssr* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
