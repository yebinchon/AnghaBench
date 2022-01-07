; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_num_pwms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_num_pwms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }

@U8_MAX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EC_RES_INVALID_COMMAND = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EC_RES_INVALID_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*)* @cros_ec_num_pwms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_num_pwms(%struct.cros_ec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @U8_MAX, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  %12 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__cros_ec_pwm_get_duty(%struct.cros_ec_device* %12, i32 %13, i64* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %22, %11
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @EC_RES_INVALID_COMMAND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @EC_RES_INVALID_PARAM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %7

52:                                               ; preds = %7
  %53 = load i32, i32* @U8_MAX, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %43, %38, %31, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @__cros_ec_pwm_get_duty(%struct.cros_ec_device*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
