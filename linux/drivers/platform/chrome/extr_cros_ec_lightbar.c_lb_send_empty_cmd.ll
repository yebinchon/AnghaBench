; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_send_empty_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_send_empty_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32 }
%struct.ec_params_lightbar = type { i32 }
%struct.cros_ec_command = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*, i32)* @lb_send_empty_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_send_empty_cmd(%struct.cros_ec_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ec_params_lightbar*, align 8
  %7 = alloca %struct.cros_ec_command*, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %10 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %9)
  store %struct.cros_ec_command* %10, %struct.cros_ec_command** %7, align 8
  %11 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %12 = icmp ne %struct.cros_ec_command* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %18 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %20, %struct.ec_params_lightbar** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %6, align 8
  %23 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @lb_throttle()
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %47

28:                                               ; preds = %16
  %29 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %33 = call i32 @cros_ec_cmd_xfer(i32 %31, %struct.cros_ec_command* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %39 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EC_RES_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %47

46:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %43, %36, %27
  %48 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %49 = call i32 @kfree(%struct.cros_ec_command* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
