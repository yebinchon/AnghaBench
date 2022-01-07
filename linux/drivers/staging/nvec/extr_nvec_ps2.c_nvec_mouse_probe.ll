; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_nvec_mouse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_nvec_mouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.nvec_chip*, %struct.serio* }
%struct.TYPE_8__ = type { i32 }
%struct.nvec_chip = type { i32 }
%struct.serio = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERIO_8042 = common dso_local global i32 0, align 4
@ps2_sendcommand = common dso_local global i32 0, align 4
@ps2_startstreaming = common dso_local global i32 0, align 4
@ps2_stopstreaming = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nvec mouse\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nvec\00", align 1
@ps2_dev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nvec_ps2_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_mouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_mouse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nvec_chip*, align 8
  %5 = alloca %struct.serio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nvec_chip* @dev_get_drvdata(i32 %9)
  store %struct.nvec_chip* %10, %struct.nvec_chip** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.serio* @kzalloc(i32 24, i32 %11)
  store %struct.serio* %12, %struct.serio** %5, align 8
  %13 = load %struct.serio*, %struct.serio** %5, align 8
  %14 = icmp ne %struct.serio* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load i32, i32* @SERIO_8042, align 4
  %20 = load %struct.serio*, %struct.serio** %5, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ps2_sendcommand, align 4
  %24 = load %struct.serio*, %struct.serio** %5, align 8
  %25 = getelementptr inbounds %struct.serio, %struct.serio* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ps2_startstreaming, align 4
  %27 = load %struct.serio*, %struct.serio** %5, align 8
  %28 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ps2_stopstreaming, align 4
  %30 = load %struct.serio*, %struct.serio** %5, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.serio*, %struct.serio** %5, align 8
  %33 = getelementptr inbounds %struct.serio, %struct.serio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlcpy(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %36 = load %struct.serio*, %struct.serio** %5, align 8
  %37 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlcpy(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %40 = load %struct.serio*, %struct.serio** %5, align 8
  store %struct.serio* %40, %struct.serio** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ps2_dev, i32 0, i32 2), align 8
  %41 = load i32, i32* @nvec_ps2_notifier, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ps2_dev, i32 0, i32 0, i32 0), align 8
  %42 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  store %struct.nvec_chip* %42, %struct.nvec_chip** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ps2_dev, i32 0, i32 1), align 8
  %43 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %44 = call i32 @nvec_register_notifier(%struct.nvec_chip* %43, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ps2_dev, i32 0, i32 0), i32 0)
  %45 = load %struct.serio*, %struct.serio** %5, align 8
  %46 = call i32 @serio_register_port(%struct.serio* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %18, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.nvec_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @nvec_register_notifier(%struct.nvec_chip*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
