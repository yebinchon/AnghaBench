; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_flashdl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_flashdl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64, i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HFA384x_PORTID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"called when port enabled.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HFA384x_DLSTATE_DISABLED = common dso_local global i64 0, align 8
@HFA384x_RID_DOWNLOADBUFFER = common dso_local global i32 0, align 4
@HFA384x_RID_MAXLOADTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"flashdl_enable\0A\00", align 1
@HFA384x_DLSTATE_FLASHENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_flashdl_enable(%struct.hfa384x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HFA384x_PORTID_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %12 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HFA384x_DLSTATE_DISABLED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %77

36:                                               ; preds = %27
  %37 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %38 = load i32, i32* @HFA384x_RID_DOWNLOADBUFFER, align 4
  %39 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %40 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %39, i32 0, i32 2
  %41 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %37, i32 %38, %struct.TYPE_2__* %40, i32 12)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %36
  %47 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %48 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @le16_to_cpus(i32* %49)
  %51 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %52 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @le16_to_cpus(i32* %53)
  %55 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %56 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @le16_to_cpus(i32* %57)
  %59 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %60 = load i32, i32* @HFA384x_RID_MAXLOADTIME, align 4
  %61 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %62 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %61, i32 0, i32 1
  %63 = call i32 @hfa384x_drvr_getconfig16(%struct.hfa384x* %59, i32 %60, i32* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %46
  %69 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %70 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %69, i32 0, i32 1
  %71 = call i32 @le16_to_cpus(i32* %70)
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* @HFA384x_DLSTATE_FLASHENABLED, align 8
  %74 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %75 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %68, %66, %44, %33, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @hfa384x_drvr_getconfig(%struct.hfa384x*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @hfa384x_drvr_getconfig16(%struct.hfa384x*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
