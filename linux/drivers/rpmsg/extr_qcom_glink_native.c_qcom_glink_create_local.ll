; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_create_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_create_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glink_channel = type { i32, i32, i32, i32 }
%struct.qcom_glink = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@qcom_glink_channel_release = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.glink_channel* (%struct.qcom_glink*, i8*)* @qcom_glink_create_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.glink_channel* @qcom_glink_create_local(%struct.qcom_glink* %0, i8* %1) #0 {
  %3 = alloca %struct.glink_channel*, align 8
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.glink_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.glink_channel* @qcom_glink_alloc_channel(%struct.qcom_glink* %9, i8* %10)
  store %struct.glink_channel* %11, %struct.glink_channel** %6, align 8
  %12 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %13 = call i64 @IS_ERR(%struct.glink_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %17 = call %struct.glink_channel* @ERR_CAST(%struct.glink_channel* %16)
  store %struct.glink_channel* %17, %struct.glink_channel** %3, align 8
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %20 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %21 = call i32 @qcom_glink_send_open_req(%struct.qcom_glink* %19, %struct.glink_channel* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %63

25:                                               ; preds = %18
  %26 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %27 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %26, i32 0, i32 3
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 5, %28
  %30 = call i32 @wait_for_completion_timeout(i32* %27, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %48

34:                                               ; preds = %25
  %35 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %36 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %35, i32 0, i32 2
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 5, %37
  %39 = call i32 @wait_for_completion_timeout(i32* %36, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %45 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %46 = call i32 @qcom_glink_send_open_ack(%struct.qcom_glink* %44, %struct.glink_channel* %45)
  %47 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  store %struct.glink_channel* %47, %struct.glink_channel** %3, align 8
  br label %75

48:                                               ; preds = %42, %33
  %49 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %54 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %53, i32 0, i32 1
  %55 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %56 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @idr_remove(i32* %54, i32 %57)
  %59 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %60 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %48, %24
  %64 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %65 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %64, i32 0, i32 0
  %66 = load i32, i32* @qcom_glink_channel_release, align 4
  %67 = call i32 @kref_put(i32* %65, i32 %66)
  %68 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %69 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %68, i32 0, i32 0
  %70 = load i32, i32* @qcom_glink_channel_release, align 4
  %71 = call i32 @kref_put(i32* %69, i32 %70)
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.glink_channel* @ERR_PTR(i32 %73)
  store %struct.glink_channel* %74, %struct.glink_channel** %3, align 8
  br label %75

75:                                               ; preds = %63, %43, %15
  %76 = load %struct.glink_channel*, %struct.glink_channel** %3, align 8
  ret %struct.glink_channel* %76
}

declare dso_local %struct.glink_channel* @qcom_glink_alloc_channel(%struct.qcom_glink*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.glink_channel*) #1

declare dso_local %struct.glink_channel* @ERR_CAST(%struct.glink_channel*) #1

declare dso_local i32 @qcom_glink_send_open_req(%struct.qcom_glink*, %struct.glink_channel*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qcom_glink_send_open_ack(%struct.qcom_glink*, %struct.glink_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local %struct.glink_channel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
