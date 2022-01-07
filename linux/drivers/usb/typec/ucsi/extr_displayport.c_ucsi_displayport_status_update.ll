; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_dp = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DP_STATUS_ENABLED = common dso_local global i32 0, align 4
@DP_CAP_UFP_D = common dso_local global i32 0, align 4
@DP_STATUS_CON_UFP_D = common dso_local global i32 0, align 4
@DP_PIN_ASSIGN_D = common dso_local global i32 0, align 4
@DP_STATUS_PREFER_MULTI_FUNC = common dso_local global i32 0, align 4
@DP_STATUS_CON_DFP_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_dp*)* @ucsi_displayport_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_displayport_status_update(%struct.ucsi_dp* %0) #0 {
  %2 = alloca %struct.ucsi_dp*, align 8
  %3 = alloca i32, align 4
  store %struct.ucsi_dp* %0, %struct.ucsi_dp** %2, align 8
  %4 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %5 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @DP_STATUS_ENABLED, align 4
  %10 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %11 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DP_CAP_CAPABILITY(i32 %13)
  %15 = load i32, i32* @DP_CAP_UFP_D, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load i32, i32* @DP_STATUS_CON_UFP_D, align 4
  %20 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %21 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %25)
  %27 = load i32, i32* @DP_PIN_ASSIGN_D, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @DP_STATUS_PREFER_MULTI_FUNC, align 4
  %33 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %34 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %18
  br label %60

39:                                               ; preds = %1
  %40 = load i32, i32* @DP_STATUS_CON_DFP_D, align 4
  %41 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %42 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %46)
  %48 = load i32, i32* @DP_PIN_ASSIGN_D, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @DP_STATUS_PREFER_MULTI_FUNC, align 4
  %54 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %55 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %39
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %62 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %65 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ucsi_dp*, %struct.ucsi_dp** %2, align 8
  %67 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  ret i32 0
}

declare dso_local i32 @DP_CAP_CAPABILITY(i32) #1

declare dso_local i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
