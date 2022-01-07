; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_led_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_led_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_set_status.led_sled_arg1 = internal constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@led_set_status.led_led_arg1 = internal constant [3 x i32] [i32 0, i32 128, i32 192], align 4
@led_supported = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@led_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EIO = common dso_local global i32 0, align 4
@TPACPI_LED_EC_HLMS = common dso_local global i32 0, align 4
@TPACPI_LED_EC_HLBL = common dso_local global i32 0, align 4
@TPACPI_LED_BLINK = common dso_local global i32 0, align 4
@TPACPI_LED_EC_HLCL = common dso_local global i32 0, align 4
@TPACPI_LED_OFF = common dso_local global i32 0, align 4
@TPACPI_LED_NUMLEDS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@tpacpi_led_state_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @led_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_set_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @led_supported, align 4
  switch i32 %7, label %116 [
    i32 130, label %8
    i32 128, label %39
    i32 129, label %85
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ugt i32 %9, 7
  %11 = zext i1 %10 to i32
  %12 = call i32 @unlikely(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %130

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @tpacpi_is_led_restricted(i32 %18)
  %20 = call i32 @unlikely(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %130

25:                                               ; preds = %17
  %26 = load i32, i32* @led_handle, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* @led_set_status.led_sled_arg1, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @acpi_evalf(i32 %26, i32* null, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %130

38:                                               ; preds = %25
  br label %119

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = icmp ugt i32 %40, 7
  %42 = zext i1 %41 to i32
  %43 = call i32 @unlikely(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %130

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @tpacpi_is_led_restricted(i32 %49)
  %51 = call i32 @unlikely(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %48
  %57 = load i32, i32* @TPACPI_LED_EC_HLMS, align 4
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 1, %58
  %60 = call i32 @ec_write(i32 %57, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* @TPACPI_LED_EC_HLBL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @TPACPI_LED_BLINK, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %68, %69
  %71 = call i32 @ec_write(i32 %64, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %63, %56
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* @TPACPI_LED_EC_HLCL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @TPACPI_LED_OFF, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %80, %81
  %83 = call i32 @ec_write(i32 %76, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %75, %72
  br label %119

85:                                               ; preds = %2
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TPACPI_LED_NUMLEDS, align 4
  %88 = icmp uge i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @unlikely(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %130

95:                                               ; preds = %85
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @tpacpi_is_led_restricted(i32 %96)
  %98 = call i32 @unlikely(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EPERM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %130

103:                                              ; preds = %95
  %104 = load i32, i32* @led_handle, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* @led_set_status.led_led_arg1, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @acpi_evalf(i32 %104, i32* null, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %130

115:                                              ; preds = %103
  br label %119

116:                                              ; preds = %2
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %130

119:                                              ; preds = %115, %84, %38
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = load i32*, i32** @tpacpi_led_state_cache, align 8
  %125 = load i32, i32* %4, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %116, %112, %100, %92, %53, %45, %35, %22, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @tpacpi_is_led_restricted(i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ec_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
