; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmh_vreg = type { i32, i64 }
%struct.tcs_cmd = type { i32 }

@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmh_vreg*, %struct.tcs_cmd*, i32)* @rpmh_regulator_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_send_request(%struct.rpmh_vreg* %0, %struct.tcs_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.rpmh_vreg*, align 8
  %5 = alloca %struct.tcs_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpmh_vreg* %0, %struct.rpmh_vreg** %4, align 8
  store %struct.tcs_cmd* %1, %struct.tcs_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %4, align 8
  %12 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10, %3
  %16 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %4, align 8
  %17 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %20 = load %struct.tcs_cmd*, %struct.tcs_cmd** %5, align 8
  %21 = call i32 @rpmh_write(i32 %18, i32 %19, %struct.tcs_cmd* %20, i32 1)
  store i32 %21, i32* %7, align 4
  br label %29

22:                                               ; preds = %10
  %23 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %4, align 8
  %24 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %27 = load %struct.tcs_cmd*, %struct.tcs_cmd** %5, align 8
  %28 = call i32 @rpmh_write_async(i32 %25, i32 %26, %struct.tcs_cmd* %27, i32 1)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @rpmh_write(i32, i32, %struct.tcs_cmd*, i32) #1

declare dso_local i32 @rpmh_write_async(i32, i32, %struct.tcs_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
