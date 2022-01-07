; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_coldboot_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_coldboot_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arche_platform_drvdata = type { i64, i32, i32, i32, i32, i32 }

@ARCHE_PLATFORM_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Booting from cold boot state\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to enable svc_ref_clk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arche_platform_drvdata*)* @arche_platform_coldboot_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_platform_coldboot_seq(%struct.arche_platform_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arche_platform_drvdata*, align 8
  %4 = alloca i32, align 4
  store %struct.arche_platform_drvdata* %0, %struct.arche_platform_drvdata** %3, align 8
  %5 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %6 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %13 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %17 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @svc_reset_onoff(i32 %18, i32 %21)
  %23 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %24 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpiod_set_value(i32 %25, i32 0)
  %27 = call i32 @usleep_range(i32 100, i32 200)
  %28 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %11
  %35 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %36 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %11
  %42 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %43 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %46 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @svc_reset_onoff(i32 %44, i32 %50)
  %52 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %53 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %54 = call i32 @arche_platform_set_state(%struct.arche_platform_drvdata* %52, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %41, %34, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @svc_reset_onoff(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @arche_platform_set_state(%struct.arche_platform_drvdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
