; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_exceeds_release_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_exceeds_release_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_request = type { i32, i32, i32, %struct.fw_download* }
%struct.fw_download = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Firmware download didn't finish in time, abort: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_request*)* @exceeds_release_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exceeds_release_timeout(%struct.fw_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_request*, align 8
  %4 = alloca %struct.fw_download*, align 8
  store %struct.fw_request* %0, %struct.fw_request** %3, align 8
  %5 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %6 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %5, i32 0, i32 3
  %7 = load %struct.fw_download*, %struct.fw_download** %6, align 8
  store %struct.fw_download* %7, %struct.fw_download** %4, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %10 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @time_before(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %17 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %20 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %24 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.fw_download*, %struct.fw_download** %4, align 8
  %26 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %27 = call i32 @free_firmware(%struct.fw_download* %25, %struct.fw_request* %26)
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @free_firmware(%struct.fw_download*, %struct.fw_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
