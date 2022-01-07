; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_debugfs.c_h1_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_debugfs.c_h1_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32 }
%struct.h1_gpio_status_request = type { i32, i32, %struct.hi_gpio_status_response*, %struct.h1_gpio_status_request*, i32, i32, i32 }
%struct.hi_gpio_status_response = type { i32, i64 }
%struct.wilco_ec_message = type { i32, i32, %struct.hi_gpio_status_response*, %struct.wilco_ec_message*, i32, i32, i32 }

@CMD_KB_CHROME = common dso_local global i32 0, align 4
@SUB_CMD_H1_GPIO = common dso_local global i32 0, align 4
@WILCO_EC_MSG_LEGACY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @h1_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h1_gpio_get(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wilco_ec_device*, align 8
  %7 = alloca %struct.h1_gpio_status_request, align 8
  %8 = alloca %struct.hi_gpio_status_response, align 8
  %9 = alloca %struct.wilco_ec_message, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.wilco_ec_device*
  store %struct.wilco_ec_device* %12, %struct.wilco_ec_device** %6, align 8
  %13 = bitcast %struct.h1_gpio_status_request* %7 to %struct.wilco_ec_message*
  %14 = call i32 @memset(%struct.wilco_ec_message* %13, i32 0, i32 40)
  %15 = load i32, i32* @CMD_KB_CHROME, align 4
  %16 = getelementptr inbounds %struct.h1_gpio_status_request, %struct.h1_gpio_status_request* %7, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @SUB_CMD_H1_GPIO, align 4
  %18 = getelementptr inbounds %struct.h1_gpio_status_request, %struct.h1_gpio_status_request* %7, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = call i32 @memset(%struct.wilco_ec_message* %9, i32 0, i32 40)
  %20 = load i32, i32* @WILCO_EC_MSG_LEGACY, align 4
  %21 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %9, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = bitcast %struct.h1_gpio_status_request* %7 to %struct.wilco_ec_message*
  %23 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %9, i32 0, i32 3
  store %struct.wilco_ec_message* %22, %struct.wilco_ec_message** %23, align 8
  %24 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %9, i32 0, i32 0
  store i32 40, i32* %24, align 8
  %25 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %9, i32 0, i32 2
  store %struct.hi_gpio_status_response* %8, %struct.hi_gpio_status_response** %25, align 8
  %26 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %9, i32 0, i32 1
  store i32 16, i32* %26, align 4
  %27 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %6, align 8
  %28 = call i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %27, %struct.wilco_ec_message* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.hi_gpio_status_response, %struct.hi_gpio_status_response* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.hi_gpio_status_response, %struct.hi_gpio_status_response* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %37, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.wilco_ec_message*, i32, i32) #1

declare dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device*, %struct.wilco_ec_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
