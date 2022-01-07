; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_ramdl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_ramdl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64 }

@HFA384x_DLSTATE_RAMENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ramdl_disable()\0A\00", align 1
@HFA384x_PROGMODE_DISABLE = common dso_local global i32 0, align 4
@HFA384x_DLSTATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_ramdl_disable(%struct.hfa384x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfa384x*, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  %4 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %5 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HFA384x_DLSTATE_RAMENABLED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %15 = load i32, i32* @HFA384x_PROGMODE_DISABLE, align 4
  %16 = call i32 @hfa384x_cmd_download(%struct.hfa384x* %14, i32 %15, i32 0, i32 0, i32 0)
  %17 = load i64, i64* @HFA384x_DLSTATE_DISABLED, align 8
  %18 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %19 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @hfa384x_cmd_download(%struct.hfa384x*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
