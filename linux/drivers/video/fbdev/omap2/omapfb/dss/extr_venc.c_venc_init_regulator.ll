; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_init_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_init_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.regulator*, %struct.TYPE_4__* }
%struct.regulator = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@venc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vdda_dac\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"can't get VDDA_DAC regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @venc_init_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_init_regulator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.regulator*, align 8
  %3 = load %struct.regulator*, %struct.regulator** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @venc, i32 0, i32 0), align 8
  %4 = icmp ne %struct.regulator* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @venc, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @venc, i32 0, i32 1), align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %15, %struct.regulator** %2, align 8
  br label %20

16:                                               ; preds = %6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @venc, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %19, %struct.regulator** %2, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.regulator*, %struct.regulator** %2, align 8
  %22 = call i64 @IS_ERR(%struct.regulator* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.regulator*, %struct.regulator** %2, align 8
  %26 = call i32 @PTR_ERR(%struct.regulator* %25)
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.regulator*, %struct.regulator** %2, align 8
  %34 = call i32 @PTR_ERR(%struct.regulator* %33)
  store i32 %34, i32* %1, align 4
  br label %37

35:                                               ; preds = %20
  %36 = load %struct.regulator*, %struct.regulator** %2, align 8
  store %struct.regulator* %36, %struct.regulator** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @venc, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %32, %5
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.regulator* @devm_regulator_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
