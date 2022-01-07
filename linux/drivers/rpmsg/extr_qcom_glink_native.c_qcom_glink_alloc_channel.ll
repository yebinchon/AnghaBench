; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glink_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qcom_glink*, i32, i32, i32 }
%struct.qcom_glink = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_glink_rx_done_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.glink_channel* (%struct.qcom_glink*, i8*)* @qcom_glink_alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.glink_channel* @qcom_glink_alloc_channel(%struct.qcom_glink* %0, i8* %1) #0 {
  %3 = alloca %struct.glink_channel*, align 8
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.glink_channel*, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.glink_channel* @kzalloc(i32 64, i32 %7)
  store %struct.glink_channel* %8, %struct.glink_channel** %6, align 8
  %9 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %10 = icmp ne %struct.glink_channel* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.glink_channel* @ERR_PTR(i32 %13)
  store %struct.glink_channel* %14, %struct.glink_channel** %3, align 8
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %17 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %16, i32 0, i32 12
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %20 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %19, i32 0, i32 11
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %23 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %22, i32 0, i32 10
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %26 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %27 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %26, i32 0, i32 9
  store %struct.qcom_glink* %25, %struct.qcom_glink** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kstrdup(i8* %28, i32 %29)
  %31 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %32 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %34 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %33, i32 0, i32 7
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %37 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %36, i32 0, i32 6
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %40 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %39, i32 0, i32 5
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %43 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %42, i32 0, i32 4
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %46 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %45, i32 0, i32 3
  %47 = load i32, i32* @qcom_glink_rx_done_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %50 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %49, i32 0, i32 2
  %51 = call i32 @idr_init(i32* %50)
  %52 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %53 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %52, i32 0, i32 1
  %54 = call i32 @idr_init(i32* %53)
  %55 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  %56 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %55, i32 0, i32 0
  %57 = call i32 @kref_init(i32* %56)
  %58 = load %struct.glink_channel*, %struct.glink_channel** %6, align 8
  store %struct.glink_channel* %58, %struct.glink_channel** %3, align 8
  br label %59

59:                                               ; preds = %15, %11
  %60 = load %struct.glink_channel*, %struct.glink_channel** %3, align 8
  ret %struct.glink_channel* %60
}

declare dso_local %struct.glink_channel* @kzalloc(i32, i32) #1

declare dso_local %struct.glink_channel* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
