; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pega-wlan\00", align 1
@PEGA_WLAN = common dso_local global i32 0, align 4
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pega-bt\00", align 1
@PEGA_BLUETOOTH = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"pega-wwan\00", align 1
@PEGA_WWAN = common dso_local global i32 0, align 4
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @pega_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pega_rfkill_init(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %6 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %14 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %15 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %14, i32 0, i32 2
  %16 = load i32, i32* @PEGA_WLAN, align 4
  %17 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %18 = call i32 @pega_rfkill_setup(%struct.asus_laptop* %13, i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %39

22:                                               ; preds = %12
  %23 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %24, i32 0, i32 1
  %26 = load i32, i32* @PEGA_BLUETOOTH, align 4
  %27 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %28 = call i32 @pega_rfkill_setup(%struct.asus_laptop* %23, i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %34 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %35 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %34, i32 0, i32 0
  %36 = load i32, i32* @PEGA_WWAN, align 4
  %37 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %38 = call i32 @pega_rfkill_setup(%struct.asus_laptop* %33, i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %31, %21
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %44 = call i32 @asus_rfkill_exit(%struct.asus_laptop* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pega_rfkill_setup(%struct.asus_laptop*, i32*, i8*, i32, i32) #1

declare dso_local i32 @asus_rfkill_exit(%struct.asus_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
