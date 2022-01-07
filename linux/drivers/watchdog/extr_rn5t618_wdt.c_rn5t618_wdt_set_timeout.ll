; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.watchdog_device = type { i32 }
%struct.rn5t618_wdt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@rn5t618_wdt_map = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RN5T618_WATCHDOG = common dso_local global i32 0, align 4
@RN5T618_WATCHDOG_WDOGTIM_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @rn5t618_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rn5t618_wdt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %10 = call %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.rn5t618_wdt* %10, %struct.rn5t618_wdt** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rn5t618_wdt_map, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rn5t618_wdt_map, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rn5t618_wdt_map, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %31
  %40 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %6, align 8
  %41 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RN5T618_WATCHDOG, align 4
  %46 = load i32, i32* @RN5T618_WATCHDOG_WDOGTIM_M, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rn5t618_wdt_map, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %39
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rn5t618_wdt_map, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %64 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %56, %39
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %36
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
