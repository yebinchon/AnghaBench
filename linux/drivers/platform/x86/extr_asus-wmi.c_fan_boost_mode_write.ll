; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Set fan boost mode: %u\0A\00", align 1
@ASUS_WMI_DEVID_FAN_BOOST_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set fan boost mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to set fan boost mode (retval): 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @fan_boost_mode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_boost_mode_write(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @ASUS_WMI_DEVID_FAN_BOOST_MODE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @asus_wmi_set_devstate(i32 %12, i32 %13, i32* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
