; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-nb-wmi.c_asus_nb_wmi_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-nb-wmi.c_asus_nb_wmi_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.asus_wmi_driver = type { i32, %struct.TYPE_3__* }

@quirk_asus_unknown = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@quirks = common dso_local global %struct.TYPE_3__* null, align 8
@asus_quirks = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@wapf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to install key filter\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Using i8042 filter function for receiving events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_wmi_driver*)* @asus_nb_wmi_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_nb_wmi_quirks(%struct.asus_wmi_driver* %0) #0 {
  %2 = alloca %struct.asus_wmi_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.asus_wmi_driver* %0, %struct.asus_wmi_driver** %2, align 8
  store %struct.TYPE_3__* @quirk_asus_unknown, %struct.TYPE_3__** @quirks, align 8
  %4 = load i32, i32* @asus_quirks, align 4
  %5 = call i32 @dmi_check_system(i32 %4)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %7 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %2, align 8
  %8 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %7, i32 0, i32 1
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %8, align 8
  %9 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %10 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %2, align 8
  %11 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @wapf, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @wapf, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* @wapf, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirks, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @i8042_install_filter(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

36:                                               ; preds = %27
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %36, %22
  ret void
}

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @i8042_install_filter(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
