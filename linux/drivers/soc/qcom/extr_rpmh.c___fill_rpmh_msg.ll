; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c___fill_rpmh_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c___fill_rpmh_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmh_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tcs_cmd = type { i32 }

@MAX_RPMH_PAYLOAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmh_request*, i32, %struct.tcs_cmd*, i32)* @__fill_rpmh_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fill_rpmh_msg(%struct.rpmh_request* %0, i32 %1, %struct.tcs_cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmh_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcs_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.rpmh_request* %0, %struct.rpmh_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.tcs_cmd* %2, %struct.tcs_cmd** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.tcs_cmd*, %struct.tcs_cmd** %8, align 8
  %11 = icmp ne %struct.tcs_cmd* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_RPMH_PAYLOAD, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.rpmh_request*, %struct.rpmh_request** %6, align 8
  %24 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcs_cmd*, %struct.tcs_cmd** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memcpy(i32 %25, %struct.tcs_cmd* %26, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.rpmh_request*, %struct.rpmh_request** %6, align 8
  %34 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.rpmh_request*, %struct.rpmh_request** %6, align 8
  %37 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rpmh_request*, %struct.rpmh_request** %6, align 8
  %40 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.rpmh_request*, %struct.rpmh_request** %6, align 8
  %44 = getelementptr inbounds %struct.rpmh_request, %struct.rpmh_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy(i32, %struct.tcs_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
