; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_rpm.c_glink_rpm_tx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_rpm.c_glink_rpm_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink_pipe = type { i32 }
%struct.glink_rpm_pipe = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcom_glink_pipe*)* @glink_rpm_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @glink_rpm_tx_avail(%struct.qcom_glink_pipe* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qcom_glink_pipe*, align 8
  %4 = alloca %struct.glink_rpm_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qcom_glink_pipe* %0, %struct.qcom_glink_pipe** %3, align 8
  %7 = load %struct.qcom_glink_pipe*, %struct.qcom_glink_pipe** %3, align 8
  %8 = call %struct.glink_rpm_pipe* @to_rpm_pipe(%struct.qcom_glink_pipe* %7)
  store %struct.glink_rpm_pipe* %8, %struct.glink_rpm_pipe** %4, align 8
  %9 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.glink_rpm_pipe, %struct.glink_rpm_pipe* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.glink_rpm_pipe, %struct.glink_rpm_pipe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.glink_rpm_pipe*, %struct.glink_rpm_pipe** %4, align 8
  %22 = getelementptr inbounds %struct.glink_rpm_pipe, %struct.glink_rpm_pipe* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %2, align 8
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %30, %20
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local %struct.glink_rpm_pipe* @to_rpm_pipe(%struct.qcom_glink_pipe*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
