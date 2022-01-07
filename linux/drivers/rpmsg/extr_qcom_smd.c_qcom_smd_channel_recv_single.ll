; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_recv_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_recv_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32, i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpmsg_endpoint }
%struct.rpmsg_endpoint = type { i32 (i32, i8*, i64, i32, i32)*, i32, i32 }

@RPMSG_ADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smd_channel*)* @qcom_smd_channel_recv_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_channel_recv_single(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smd_channel*, align 8
  %4 = alloca %struct.rpmsg_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %3, align 8
  %9 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rpmsg_endpoint* %12, %struct.rpmsg_endpoint** %4, align 8
  %13 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %16, %19
  %21 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %22 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %32 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @qcom_smd_channel_peek(%struct.qcom_smd_channel* %29, i8* %30, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %46

35:                                               ; preds = %1
  %36 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %37 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %35, %25
  %47 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %4, align 8
  %48 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %47, i32 0, i32 0
  %49 = load i32 (i32, i8*, i64, i32, i32)*, i32 (i32, i8*, i64, i32, i32)** %48, align 8
  %50 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %4, align 8
  %51 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %4, align 8
  %56 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RPMSG_ADDR_ANY, align 4
  %59 = call i32 %49(i32 %52, i8* %53, i64 %54, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %46
  %65 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @qcom_smd_channel_advance(%struct.qcom_smd_channel* %65, i64 %66)
  %68 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %69 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %62
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32) #1

declare dso_local i64 @qcom_smd_channel_peek(%struct.qcom_smd_channel*, i8*, i32) #1

declare dso_local i32 @qcom_smd_channel_advance(%struct.qcom_smd_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
