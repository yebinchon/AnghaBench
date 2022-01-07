; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cmd_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cmd_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, i64* }
%struct.hfa384x_metacmd = type { %struct.TYPE_2__, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@HFA384x_CMDCODE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"cmdresp.init: status=0x%04x, resp0=0x%04x, resp1=0x%04x, resp2=0x%04x\0A\00", align 1
@HFA384x_NUMPORTS_MAX = common dso_local global i32 0, align 4
@HFA384x_LINK_NOTCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_cmd_initialize(%struct.hfa384x* %0) #0 {
  %2 = alloca %struct.hfa384x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfa384x_metacmd, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @HFA384x_CMDCODE_INIT, align 4
  %7 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 4
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %12 = call i32 @hfa384x_docmd(%struct.hfa384x* %11, %struct.hfa384x_metacmd* %5)
  store i32 %12, i32* %3, align 4
  %13 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @HFA384x_NUMPORTS_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %35 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* @HFA384x_LINK_NOTCONNECTED, align 4
  %46 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %47 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @hfa384x_docmd(%struct.hfa384x*, %struct.hfa384x_metacmd*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
