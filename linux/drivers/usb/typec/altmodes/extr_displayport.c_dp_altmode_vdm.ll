; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_vdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_vdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.dp_altmode = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DP_STATE_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DP_STATE_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*, i32, i32*, i32)* @dp_altmode_vdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_vdm(%struct.typec_altmode* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dp_altmode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %14 = call %struct.dp_altmode* @typec_altmode_get_drvdata(%struct.typec_altmode* %13)
  store %struct.dp_altmode* %14, %struct.dp_altmode** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @PD_VDO_CMDT(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @PD_VDO_CMD(i32 %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %20 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %23 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DP_STATE_IDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %80

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %68 [
    i32 133, label %32
    i32 132, label %58
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %56 [
    i32 131, label %34
    i32 130, label %38
    i32 128, label %45
    i32 129, label %53
  ]

34:                                               ; preds = %32
  %35 = load i64, i64* @DP_STATE_UPDATE, align 8
  %36 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %37 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %57

38:                                               ; preds = %32
  %39 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %40 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %43 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %57

45:                                               ; preds = %32
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %49 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %52 = call i32 @dp_altmode_status_update(%struct.dp_altmode* %51)
  store i32 %52, i32* %12, align 4
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %55 = call i32 @dp_altmode_configured(%struct.dp_altmode* %54)
  store i32 %55, i32* %12, align 4
  br label %57

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %53, %45, %38, %34
  br label %69

58:                                               ; preds = %30
  %59 = load i32, i32* %11, align 4
  switch i32 %59, label %66 [
    i32 129, label %60
  ]

60:                                               ; preds = %58
  %61 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %62 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %65 = call i32 @dp_altmode_configured(%struct.dp_altmode* %64)
  store i32 %65, i32* %12, align 4
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %60
  br label %69

68:                                               ; preds = %30
  br label %69

69:                                               ; preds = %68, %67, %57
  %70 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %71 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DP_STATE_IDLE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %77 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %76, i32 0, i32 2
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %27
  %81 = load %struct.dp_altmode*, %struct.dp_altmode** %9, align 8
  %82 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local %struct.dp_altmode* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @PD_VDO_CMDT(i32) #1

declare dso_local i32 @PD_VDO_CMD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dp_altmode_status_update(%struct.dp_altmode*) #1

declare dso_local i32 @dp_altmode_configured(%struct.dp_altmode*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
