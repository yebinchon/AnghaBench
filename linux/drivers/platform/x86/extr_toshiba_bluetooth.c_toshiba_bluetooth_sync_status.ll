; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bluetooth_sync_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bluetooth_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_bluetooth_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Could not sync bluetooth device status\0A\00", align 1
@BT_KILLSWITCH_MASK = common dso_local global i32 0, align 4
@BT_PLUGGED_MASK = common dso_local global i32 0, align 4
@BT_POWER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Bluetooth status %d killswitch %d plugged %d powered %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_bluetooth_dev*)* @toshiba_bluetooth_sync_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_bluetooth_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.toshiba_bluetooth_dev* %0, %struct.toshiba_bluetooth_dev** %3, align 8
  %5 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %6 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @toshiba_bluetooth_status(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BT_KILLSWITCH_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %24 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BT_PLUGGED_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %32 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @BT_POWER_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %40 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %43 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %46 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %3, align 8
  %49 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %16, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @toshiba_bluetooth_status(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
