; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_hx8357.c_hx8357_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.hx8357_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to set power mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @hx8357_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx8357_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hx8357_data*, align 8
  %6 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %8 = call %struct.hx8357_data* @lcd_get_data(%struct.lcd_device* %7)
  store %struct.hx8357_data* %8, %struct.hx8357_data** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @POWER_IS_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %14 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @POWER_IS_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %20 = call i32 @hx8357_exit_standby(%struct.lcd_device* %19)
  store i32 %20, i32* %6, align 4
  br label %35

21:                                               ; preds = %12, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @POWER_IS_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %27 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @POWER_IS_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %33 = call i32 @hx8357_enter_standby(%struct.lcd_device* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %25, %21
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.hx8357_data*, %struct.hx8357_data** %5, align 8
  %41 = getelementptr inbounds %struct.hx8357_data, %struct.hx8357_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %44 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.hx8357_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @hx8357_exit_standby(%struct.lcd_device*) #1

declare dso_local i32 @hx8357_enter_standby(%struct.lcd_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
