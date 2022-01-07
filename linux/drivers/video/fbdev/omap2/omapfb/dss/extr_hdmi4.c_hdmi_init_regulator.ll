; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_init_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_init_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.regulator*, %struct.TYPE_3__* }
%struct.regulator = type { i32 }
%struct.TYPE_3__ = type { i32 }

@hdmi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get VDDA regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hdmi_init_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_init_regulator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.regulator*, align 8
  %3 = load %struct.regulator*, %struct.regulator** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hdmi, i32 0, i32 0), align 8
  %4 = icmp ne %struct.regulator* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hdmi, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call %struct.regulator* @devm_regulator_get(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %9, %struct.regulator** %2, align 8
  %10 = load %struct.regulator*, %struct.regulator** %2, align 8
  %11 = call i64 @IS_ERR(%struct.regulator* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.regulator*, %struct.regulator** %2, align 8
  %15 = call i32 @PTR_ERR(%struct.regulator* %14)
  %16 = load i32, i32* @EPROBE_DEFER, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load %struct.regulator*, %struct.regulator** %2, align 8
  %23 = call i32 @PTR_ERR(%struct.regulator* %22)
  store i32 %23, i32* %1, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load %struct.regulator*, %struct.regulator** %2, align 8
  store %struct.regulator* %25, %struct.regulator** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hdmi, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %21, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local %struct.regulator* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
