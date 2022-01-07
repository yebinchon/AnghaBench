; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_rx_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32, i32, i32 }
%struct.glink_defer_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Insufficient data in rx fifo\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_glink*, i64)* @qcom_glink_rx_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_rx_defer(%struct.qcom_glink* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.glink_defer_cmd*, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @ALIGN(i64 %7, i32 8)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %10 = call i32 @qcom_glink_rx_avail(%struct.qcom_glink* %9)
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %5, align 8
  %13 = add i64 4, %12
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = add i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.glink_defer_cmd* @kzalloc(i32 %25, i32 %26)
  store %struct.glink_defer_cmd* %27, %struct.glink_defer_cmd** %6, align 8
  %28 = load %struct.glink_defer_cmd*, %struct.glink_defer_cmd** %6, align 8
  %29 = icmp ne %struct.glink_defer_cmd* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.glink_defer_cmd*, %struct.glink_defer_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.glink_defer_cmd, %struct.glink_defer_cmd* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %38 = load %struct.glink_defer_cmd*, %struct.glink_defer_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.glink_defer_cmd, %struct.glink_defer_cmd* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = add i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @qcom_glink_rx_peak(%struct.qcom_glink* %37, i32* %39, i32 0, i32 %42)
  %44 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %45 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.glink_defer_cmd*, %struct.glink_defer_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.glink_defer_cmd, %struct.glink_defer_cmd* %47, i32 0, i32 0
  %49 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %49, i32 0, i32 2
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %53 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %56 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %55, i32 0, i32 0
  %57 = call i32 @schedule_work(i32* %56)
  %58 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %33, %30, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @qcom_glink_rx_avail(%struct.qcom_glink*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.glink_defer_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qcom_glink_rx_peak(%struct.qcom_glink*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @qcom_glink_rx_advance(%struct.qcom_glink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
