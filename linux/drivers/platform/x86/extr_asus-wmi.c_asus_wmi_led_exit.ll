; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_led_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_led_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_wmi*)* @asus_wmi_led_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wmi_led_exit(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  %3 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %4 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @IS_ERR_OR_NULL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %11 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %10, i32 0, i32 4
  %12 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %15 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IS_ERR_OR_NULL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 3
  %23 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %26 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR_OR_NULL(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %33 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %32, i32 0, i32 2
  %34 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %37 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @IS_ERR_OR_NULL(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %44 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %43, i32 0, i32 1
  %45 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %44)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %48 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %53 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @destroy_workqueue(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
