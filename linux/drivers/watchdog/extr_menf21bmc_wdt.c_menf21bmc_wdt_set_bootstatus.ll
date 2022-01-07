; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menf21bmc_wdt.c_menf21bmc_wdt_set_bootstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menf21bmc_wdt.c_menf21bmc_wdt_set_bootstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menf21bmc_wdt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BMC_CMD_RST_RSN = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@WDIOF_EXTERN1 = common dso_local global i32 0, align 4
@WDIOF_EXTERN2 = common dso_local global i32 0, align 4
@WDIOF_POWERUNDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menf21bmc_wdt*)* @menf21bmc_wdt_set_bootstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menf21bmc_wdt_set_bootstatus(%struct.menf21bmc_wdt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menf21bmc_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.menf21bmc_wdt* %0, %struct.menf21bmc_wdt** %3, align 8
  %5 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %3, align 8
  %6 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BMC_CMD_RST_RSN, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @WDIOF_CARDRESET, align 4
  %19 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %3, align 8
  %20 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %57

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @WDIOF_EXTERN1, align 4
  %29 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %3, align 8
  %30 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @WDIOF_EXTERN2, align 4
  %39 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %3, align 8
  %40 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %55

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @WDIOF_POWERUNDER, align 4
  %49 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %3, align 8
  %50 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %17
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
