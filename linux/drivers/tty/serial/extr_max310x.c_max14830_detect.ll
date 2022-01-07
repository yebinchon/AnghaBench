; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max14830_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max14830_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max310x_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX310X_GLOBALCMD_REG = common dso_local global i32 0, align 4
@MAX310X_EXTREG_ENBL = common dso_local global i32 0, align 4
@MAX310X_REVID_EXTREG = common dso_local global i32 0, align 4
@MAX310X_EXTREG_DSBL = common dso_local global i32 0, align 4
@MAX310x_REV_MASK = common dso_local global i32 0, align 4
@MAX14830_REV_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s ID 0x%02x does not match\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @max14830_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14830_detect(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.max310x_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.max310x_port* @dev_get_drvdata(%struct.device* %7)
  store %struct.max310x_port* %8, %struct.max310x_port** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.max310x_port*, %struct.max310x_port** %4, align 8
  %10 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX310X_GLOBALCMD_REG, align 4
  %13 = load i32, i32* @MAX310X_EXTREG_ENBL, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.max310x_port*, %struct.max310x_port** %4, align 8
  %21 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX310X_REVID_EXTREG, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %5)
  %25 = load %struct.max310x_port*, %struct.max310x_port** %4, align 8
  %26 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX310X_GLOBALCMD_REG, align 4
  %29 = load i32, i32* @MAX310X_EXTREG_DSBL, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX310x_REV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @MAX14830_REV_ID, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.max310x_port*, %struct.max310x_port** %4, align 8
  %39 = getelementptr inbounds %struct.max310x_port, %struct.max310x_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %36, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.max310x_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
