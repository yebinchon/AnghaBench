; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_glink*, i8*, i64, i8*, i64, i32)* @qcom_glink_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_tx(%struct.qcom_glink* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_glink*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.qcom_glink* %0, %struct.qcom_glink** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %12, align 8
  %19 = add i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %23 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %78

31:                                               ; preds = %6
  %32 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %33 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %32, i32 0, i32 0
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %47, %31
  %37 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %38 = call i32 @qcom_glink_tx_avail(%struct.qcom_glink* %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %16, align 4
  br label %72

47:                                               ; preds = %41
  %48 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %49 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %48, i32 0, i32 0
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = call i32 @usleep_range(i32 10000, i32 15000)
  %53 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %54 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %53, i32 0, i32 0
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @qcom_glink_tx_write(%struct.qcom_glink* %58, i8* %59, i64 %60, i8* %61, i64 %62)
  %64 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %65 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mbox_send_message(i32 %66, i32* null)
  %68 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %69 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mbox_client_txdone(i32 %70, i32 0)
  br label %72

72:                                               ; preds = %57, %44
  %73 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %74 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %73, i32 0, i32 0
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %72, %28
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qcom_glink_tx_avail(%struct.qcom_glink*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @qcom_glink_tx_write(%struct.qcom_glink*, i8*, i64, i8*, i64) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
