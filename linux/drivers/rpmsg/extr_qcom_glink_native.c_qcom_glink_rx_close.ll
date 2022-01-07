; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32, i32 }
%struct.rpmsg_channel_info = type { i8*, i8*, i32 }
%struct.glink_channel = type { i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"close request on unknown channel\0A\00", align 1
@RPMSG_ADDR_ANY = common dso_local global i8* null, align 8
@qcom_glink_channel_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, i32)* @qcom_glink_rx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_rx_close(%struct.qcom_glink* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_glink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpmsg_channel_info, align 8
  %6 = alloca %struct.glink_channel*, align 8
  %7 = alloca i64, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.glink_channel* @idr_find(i32* %13, i32 %14)
  store %struct.glink_channel* %15, %struct.glink_channel** %6, align 8
  %16 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %21 = icmp ne %struct.glink_channel* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %76

27:                                               ; preds = %2
  %28 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %29 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %28, i32 0, i32 4
  %30 = call i32 @cancel_work_sync(i32* %29)
  %31 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %32 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %5, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %39 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strncpy(i32 %37, i32 %40, i32 4)
  %42 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %43 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %5, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @RPMSG_ADDR_ANY, align 8
  %45 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %5, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %47 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rpmsg_unregister_device(i32 %48, %struct.rpmsg_channel_info* %5)
  br label %50

50:                                               ; preds = %35, %27
  %51 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %52 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %53 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @qcom_glink_send_close_ack(%struct.qcom_glink* %51, i64 %54)
  %56 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %57 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %61 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %60, i32 0, i32 1
  %62 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %63 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @idr_remove(i32* %61, i64 %64)
  %66 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %67 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %69 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %68, i32 0, i32 0
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %73 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %72, i32 0, i32 0
  %74 = load i32, i32* @qcom_glink_channel_release, align 4
  %75 = call i32 @kref_put(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %50, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.glink_channel* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @rpmsg_unregister_device(i32, %struct.rpmsg_channel_info*) #1

declare dso_local i32 @qcom_glink_send_close_ack(%struct.qcom_glink*, i64) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
