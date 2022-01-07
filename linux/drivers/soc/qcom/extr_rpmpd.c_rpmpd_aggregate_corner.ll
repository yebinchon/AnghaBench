; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_aggregate_corner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_aggregate_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmpd = type { i32, i64, %struct.rpmpd* }

@QCOM_SMD_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@QCOM_SMD_RPM_SLEEP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmpd*)* @rpmpd_aggregate_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmpd_aggregate_corner(%struct.rpmpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpmpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rpmpd* %0, %struct.rpmpd** %3, align 8
  %12 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %13 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %12, i32 0, i32 2
  %14 = load %struct.rpmpd*, %struct.rpmpd** %13, align 8
  store %struct.rpmpd* %14, %struct.rpmpd** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %16 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %17 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @to_active_sleep(%struct.rpmpd* %15, i32 %18, i32* %8, i32* %9)
  %20 = load %struct.rpmpd*, %struct.rpmpd** %5, align 8
  %21 = icmp ne %struct.rpmpd* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.rpmpd*, %struct.rpmpd** %5, align 8
  %24 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.rpmpd*, %struct.rpmpd** %5, align 8
  %29 = load %struct.rpmpd*, %struct.rpmpd** %5, align 8
  %30 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @to_active_sleep(%struct.rpmpd* %28, i32 %31, i32* %10, i32* %11)
  br label %33

33:                                               ; preds = %27, %22, %1
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @max(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %38 = load i32, i32* @QCOM_SMD_RPM_ACTIVE_STATE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rpmpd_send_corner(%struct.rpmpd* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @max(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %50 = load i32, i32* @QCOM_SMD_RPM_SLEEP_STATE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @rpmpd_send_corner(%struct.rpmpd* %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %43
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @to_active_sleep(%struct.rpmpd*, i32, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rpmpd_send_corner(%struct.rpmpd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
