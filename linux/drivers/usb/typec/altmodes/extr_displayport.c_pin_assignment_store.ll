; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_pin_assignment_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_pin_assignment_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dp_altmode = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@pin_assignments = common dso_local global i32 0, align 4
@DP_STATE_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DP_CONF_DFP_D = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DP_CONF_PIN_ASSIGNEMENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pin_assignment_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_assignment_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dp_altmode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.dp_altmode* @dev_get_drvdata(%struct.device* %14)
  store %struct.dp_altmode* %15, %struct.dp_altmode** %10, align 8
  %16 = load i32, i32* @pin_assignments, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sysfs_match_string(i32 %16, i8* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %128

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = call i32 @DP_CONF_SET_PIN_ASSIGN(i32 %25)
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %28 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %32 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %114

38:                                               ; preds = %23
  %39 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %40 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DP_STATE_IDLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %114

47:                                               ; preds = %38
  %48 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %49 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @DP_CONF_CURRENTLY(i32 %51)
  %53 = load i64, i64* @DP_CONF_DFP_D, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %57 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32 %60)
  store i32 %61, i32* %11, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %64 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @DP_CONF_GET_PIN_ASSIGN(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %114

78:                                               ; preds = %69
  %79 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %80 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DP_CONF_PIN_ASSIGNEMENT_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %89 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %78
  %95 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %96 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @DP_CONF_CURRENTLY(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @dp_altmode_configure_vdm(%struct.dp_altmode* %102, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %114

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %94, %78
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %112 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %107, %75, %44, %37
  %115 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %116 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  br label %125

123:                                              ; preds = %114
  %124 = load i64, i64* %9, align 8
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi i64 [ %122, %120 ], [ %124, %123 ]
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %21
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.dp_altmode* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @DP_CONF_SET_PIN_ASSIGN(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @DP_CONF_CURRENTLY(i32) #1

declare dso_local i32 @DP_CAP_UFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CAP_DFP_D_PIN_ASSIGN(i32) #1

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i32 @dp_altmode_configure_vdm(%struct.dp_altmode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
