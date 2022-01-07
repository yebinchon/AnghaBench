; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_led_table = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ibm_init_struct = type { i32 }

@TPACPI_LED_MAX = common dso_local global i32 0, align 4
@led_tables = common dso_local global %struct.tp_led_table* null, align 8
@hkey_handle = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@mute_led_cdev = common dso_local global %struct.TYPE_6__* null, align 8
@tpacpi_pdev = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibm_init_struct*)* @mute_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mute_led_init(%struct.ibm_init_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibm_init_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tp_led_table*, align 8
  store %struct.ibm_init_struct* %0, %struct.ibm_init_struct** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TPACPI_LED_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load %struct.tp_led_table*, %struct.tp_led_table** @led_tables, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %13, i64 %15
  store %struct.tp_led_table* %16, %struct.tp_led_table** %7, align 8
  %17 = load i32, i32* @hkey_handle, align 4
  %18 = load %struct.tp_led_table*, %struct.tp_led_table** %7, align 8
  %19 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_get_handle(i32 %17, i32 %20, i32* %4)
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load i64, i64* @ENODEV, align 8
  %26 = sub nsw i64 0, %25
  %27 = load %struct.tp_led_table*, %struct.tp_led_table** %7, align 8
  %28 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %69

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ledtrig_audio_get(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mute_led_cdev, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tpacpi_pdev, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mute_led_cdev, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = call i32 @led_classdev_register(i32* %38, %struct.TYPE_6__* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.tp_led_table*, %struct.tp_led_table** @led_tables, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %52, i64 %54
  %56 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mute_led_cdev, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = call i32 @led_classdev_unregister(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %59, %51
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %29
  br label %69

69:                                               ; preds = %68, %24
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %8

72:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i32 @ledtrig_audio_get(i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
