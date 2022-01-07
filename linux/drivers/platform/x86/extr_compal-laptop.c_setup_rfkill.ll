; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_setup_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_setup_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"compal-wifi\00", align 1
@compal_device = common dso_local global %struct.TYPE_2__* null, align 8
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@compal_rfkill_ops = common dso_local global i32 0, align 4
@WIRELESS_WLAN = common dso_local global i64 0, align 8
@wifi_rfkill = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"compal-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@WIRELESS_BT = common dso_local global i64 0, align 8
@bt_rfkill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rfkill() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compal_device, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %6 = load i64, i64* @WIRELESS_WLAN, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @rfkill_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %4, i32 %5, i32* @compal_rfkill_ops, i8* %7)
  store i32 %8, i32* @wifi_rfkill, align 4
  %9 = load i32, i32* @wifi_rfkill, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %49

14:                                               ; preds = %0
  %15 = load i32, i32* @wifi_rfkill, align 4
  %16 = call i32 @rfkill_register(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %45

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compal_device, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %24 = load i64, i64* @WIRELESS_BT, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @rfkill_alloc(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %23, i32* @compal_rfkill_ops, i8* %25)
  store i32 %26, i32* @bt_rfkill, align 4
  %27 = load i32, i32* @bt_rfkill, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %20
  %33 = load i32, i32* @bt_rfkill, align 4
  %34 = call i32 @rfkill_register(i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %49

39:                                               ; preds = %37
  %40 = load i32, i32* @bt_rfkill, align 4
  %41 = call i32 @rfkill_destroy(i32 %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* @wifi_rfkill, align 4
  %44 = call i32 @rfkill_unregister(i32 %43)
  br label %45

45:                                               ; preds = %42, %19
  %46 = load i32, i32* @wifi_rfkill, align 4
  %47 = call i32 @rfkill_destroy(i32 %46)
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %38, %11
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @rfkill_alloc(i8*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

declare dso_local i32 @rfkill_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
