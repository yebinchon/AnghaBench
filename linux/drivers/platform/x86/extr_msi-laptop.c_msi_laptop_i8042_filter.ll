; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_msi_laptop_i8042_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_msi_laptop_i8042_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serio = type { i32 }

@msi_laptop_i8042_filter.extended = internal global i32 0, align 4
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@msi_touchpad_dwork = common dso_local global i32 0, align 4
@HZ = common dso_local global double 0.000000e+00, align 8
@msi_touchpad_work = common dso_local global i32 0, align 4
@msi_rfkill_dwork = common dso_local global i32 0, align 4
@msi_rfkill_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, %struct.serio*)* @msi_laptop_i8042_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_laptop_i8042_filter(i8 zeroext %0, i8 zeroext %1, %struct.serio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.serio*, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.serio* %2, %struct.serio** %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 224
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* @msi_laptop_i8042_filter.extended, align 4
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %15
  %24 = load i32, i32* @msi_laptop_i8042_filter.extended, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  store i32 0, i32* @msi_laptop_i8042_filter.extended, align 4
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %56 [
    i32 228, label %30
    i32 84, label %43
    i32 98, label %43
    i32 118, label %43
  ]

30:                                               ; preds = %27
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load double, double* @HZ, align 8
  %37 = fmul double 5.000000e-01, %36
  %38 = call i32 @round_jiffies_relative(double %37)
  %39 = call i32 @schedule_delayed_work(i32* @msi_touchpad_dwork, i32 %38)
  br label %42

40:                                               ; preds = %30
  %41 = call i32 @schedule_work(i32* @msi_touchpad_work)
  br label %42

42:                                               ; preds = %40, %35
  br label %56

43:                                               ; preds = %27, %27, %27
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load double, double* @HZ, align 8
  %50 = fmul double 5.000000e-01, %49
  %51 = call i32 @round_jiffies_relative(double %50)
  %52 = call i32 @schedule_delayed_work(i32* @msi_rfkill_dwork, i32 %51)
  br label %55

53:                                               ; preds = %43
  %54 = call i32 @schedule_work(i32* @msi_rfkill_work)
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %27, %55, %42
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %22, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(double) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
