; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_has_agfn_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_has_agfn_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32 }

@ASUS_WMI_DEVID_FAN_CTRL = common dso_local global i32 0, align 4
@ASUS_WMI_UNSUPPORTED_METHOD = common dso_local global i32 0, align 4
@ASUS_WMI_DSTS_PRESENCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_has_agfn_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_has_agfn_fan(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = call i32 @asus_agfn_fan_speed_read(%struct.asus_wmi* %7, i32 1, i32* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %14 = load i32, i32* @ASUS_WMI_DEVID_FAN_CTRL, align 4
  %15 = call i32 @asus_wmi_get_devstate(%struct.asus_wmi* %13, i32 %14, i32* %6)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %44

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ASUS_WMI_UNSUPPORTED_METHOD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -524288
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %29 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ASUS_WMI_DSTS_PRESENCE_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  br label %40

40:                                               ; preds = %38, %23, %19
  %41 = phi i1 [ true, %23 ], [ true, %19 ], [ %39, %38 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %18, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @asus_agfn_fan_speed_read(%struct.asus_wmi*, i32, i32*) #1

declare dso_local i32 @asus_wmi_get_devstate(%struct.asus_wmi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
