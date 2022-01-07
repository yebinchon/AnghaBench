; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams369fg06 = type { i32, i32, %struct.backlight_device*, %struct.lcd_platform_data* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lcd_platform_data = type { i32, i32 (i32)*, i32, i32 (i32, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"reset is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialize ldi.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to enable ldi.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"lcd gamma setting failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams369fg06*)* @ams369fg06_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_power_on(%struct.ams369fg06* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ams369fg06*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcd_platform_data*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.ams369fg06* %0, %struct.ams369fg06** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %8 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %7, i32 0, i32 3
  %9 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %8, align 8
  store %struct.lcd_platform_data* %9, %struct.lcd_platform_data** %5, align 8
  %10 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %11 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %10, i32 0, i32 2
  %12 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  store %struct.backlight_device* %12, %struct.backlight_device** %6, align 8
  %13 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %14 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %13, i32 0, i32 3
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i32)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %22 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %20(i32 %23, i32 1)
  %25 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @msleep(i32 %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %36 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %90

41:                                               ; preds = %29
  %42 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %42, i32 0, i32 1
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %46 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %44(i32 %47)
  %49 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @msleep(i32 %51)
  %53 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %54 = call i32 @ams369fg06_ldi_init(%struct.ams369fg06* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %59 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %90

63:                                               ; preds = %41
  %64 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %65 = call i32 @ams369fg06_ldi_enable(%struct.ams369fg06* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %70 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %90

74:                                               ; preds = %63
  %75 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %76 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %77 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ams369fg06_gamma_ctl(%struct.ams369fg06* %75, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %85 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %83, %68, %57, %34
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ams369fg06_ldi_init(%struct.ams369fg06*) #1

declare dso_local i32 @ams369fg06_ldi_enable(%struct.ams369fg06*) #1

declare dso_local i32 @ams369fg06_gamma_ctl(%struct.ams369fg06*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
