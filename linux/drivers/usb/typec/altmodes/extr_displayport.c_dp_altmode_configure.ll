; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_altmode = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DP_CONF_SIGNALING_DP = common dso_local global i32 0, align 4
@DP_CONF_UFP_U_AS_DFP_D = common dso_local global i32 0, align 4
@DP_CONF_UFP_U_AS_UFP_D = common dso_local global i32 0, align 4
@DP_STATUS_PREFER_MULTI_FUNC = common dso_local global i32 0, align 4
@DP_PIN_ASSIGN_MULTI_FUNC_MASK = common dso_local global i32 0, align 4
@DP_PIN_ASSIGN_DP_ONLY_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_altmode*, i32)* @dp_altmode_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_configure(%struct.dp_altmode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dp_altmode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dp_altmode* %0, %struct.dp_altmode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @DP_CONF_SIGNALING_DP, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %45 [
    i32 129, label %10
    i32 130, label %11
    i32 128, label %28
    i32 131, label %28
  ]

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

11:                                               ; preds = %2
  %12 = load i32, i32* @DP_CONF_UFP_U_AS_DFP_D, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %16 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %19)
  %21 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %22 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %25)
  %27 = and i32 %20, %26
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %2, %2
  %29 = load i32, i32* @DP_CONF_UFP_U_AS_UFP_D, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %33 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %36)
  %38 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %39 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %42)
  %44 = and i32 %37, %43
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %28, %11
  %47 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %48 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DP_CONF_GET_PIN_ASSIGN(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %91, label %53

53:                                               ; preds = %46
  %54 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %55 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DP_STATUS_PREFER_MULTI_FUNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @DP_PIN_ASSIGN_MULTI_FUNC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @DP_PIN_ASSIGN_MULTI_FUNC_MASK, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %80

70:                                               ; preds = %61, %53
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @DP_PIN_ASSIGN_DP_ONLY_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @DP_PIN_ASSIGN_DP_ONLY_MASK, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %96

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @DP_CONF_SET_PIN_ASSIGN(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %46
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.dp_altmode*, %struct.dp_altmode** %4, align 8
  %94 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %83, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CONF_SET_PIN_ASSIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
