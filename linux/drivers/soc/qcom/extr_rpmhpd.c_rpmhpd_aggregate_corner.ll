; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_aggregate_corner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_aggregate_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmhpd = type { i32, i32, i64, %struct.rpmhpd* }

@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@RPMH_WAKE_ONLY_STATE = common dso_local global i32 0, align 4
@RPMH_SLEEP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmhpd*, i32)* @rpmhpd_aggregate_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmhpd_aggregate_corner(%struct.rpmhpd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpmhpd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmhpd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rpmhpd* %0, %struct.rpmhpd** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %15 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %14, i32 0, i32 3
  %16 = load %struct.rpmhpd*, %struct.rpmhpd** %15, align 8
  store %struct.rpmhpd* %16, %struct.rpmhpd** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @to_active_sleep(%struct.rpmhpd* %17, i32 %18, i32* %10, i32* %11)
  %20 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %21 = icmp ne %struct.rpmhpd* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %24 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %29 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %30 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @to_active_sleep(%struct.rpmhpd* %28, i32 %31, i32* %12, i32* %13)
  br label %33

33:                                               ; preds = %27, %22, %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @max(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %38 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %42 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @rpmhpd_send_corner(%struct.rpmhpd* %37, i32 %38, i32 %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %79

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %54 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %56 = icmp ne %struct.rpmhpd* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.rpmhpd*, %struct.rpmhpd** %7, align 8
  %60 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %62 = load i32, i32* @RPMH_WAKE_ONLY_STATE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rpmhpd_send_corner(%struct.rpmhpd* %61, i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %57
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @max(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.rpmhpd*, %struct.rpmhpd** %4, align 8
  %74 = load i32, i32* @RPMH_SLEEP_STATE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @rpmhpd_send_corner(%struct.rpmhpd* %73, i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %51
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %69, %67, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @to_active_sleep(%struct.rpmhpd*, i32, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rpmhpd_send_corner(%struct.rpmhpd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
