; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { %struct.device* }
%struct.device = type { i32 }
%struct.pwm_device = type { i64 }
%struct.meson_pwm = type { %struct.meson_pwm_channel* }
%struct.meson_pwm_channel = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"failed to set parent %s for %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable clock %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @meson_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.meson_pwm*, align 8
  %7 = alloca %struct.meson_pwm_channel*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %11 = call %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip* %10)
  store %struct.meson_pwm* %11, %struct.meson_pwm** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %16 = call %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device* %15)
  store %struct.meson_pwm_channel* %16, %struct.meson_pwm_channel** %7, align 8
  %17 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %18 = icmp ne %struct.meson_pwm_channel* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.meson_pwm*, %struct.meson_pwm** %6, align 8
  %22 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %21, i32 0, i32 0
  %23 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %22, align 8
  %24 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %23, i64 %26
  store %struct.meson_pwm_channel* %27, %struct.meson_pwm_channel** %7, align 8
  %28 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %29 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %20
  %33 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %34 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %37 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @clk_set_parent(i64 %35, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %45 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @__clk_get_name(i64 %46)
  %48 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %49 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @__clk_get_name(i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %58 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @clk_prepare_enable(i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %66 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @__clk_get_name(i64 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %56
  %73 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %74 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %7, align 8
  %75 = call i32 @pwm_set_chip_data(%struct.pwm_device* %73, %struct.meson_pwm_channel* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %63, %42, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip*) #1

declare dso_local %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @clk_set_parent(i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @__clk_get_name(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.meson_pwm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
