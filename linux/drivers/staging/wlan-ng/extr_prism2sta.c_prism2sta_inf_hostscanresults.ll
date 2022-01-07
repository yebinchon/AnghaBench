; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_hostscanresults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_hostscanresults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.hfa384x* }
%struct.hfa384x = type { i32, i32, i32 }
%struct.hfa384x_inf_frame = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Received %d hostscan results\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.hfa384x_inf_frame*)* @prism2sta_inf_hostscanresults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2sta_inf_hostscanresults(%struct.wlandevice* %0, %struct.hfa384x_inf_frame* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.hfa384x_inf_frame*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.hfa384x_inf_frame* %1, %struct.hfa384x_inf_frame** %4, align 8
  %7 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %8 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %7, i32 0, i32 0
  %9 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  store %struct.hfa384x* %9, %struct.hfa384x** %5, align 8
  %10 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %11 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 3
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 32, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %22 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @kmemdup(%struct.hfa384x_inf_frame* %25, i32 4, i32 %26)
  %28 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %36 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %38 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %37, i32 0, i32 1
  %39 = call i32 @wake_up_interruptible(i32* %38)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmemdup(%struct.hfa384x_inf_frame*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
