; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_switch_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_switch_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32, i64 }

@ASUS_FAN_BOOST_MODE_NORMAL = common dso_local global i64 0, align 8
@ASUS_FAN_BOOST_MODE_OVERBOOST_MASK = common dso_local global i32 0, align 4
@ASUS_FAN_BOOST_MODE_OVERBOOST = common dso_local global i64 0, align 8
@ASUS_FAN_BOOST_MODE_SILENT_MASK = common dso_local global i32 0, align 4
@ASUS_FAN_BOOST_MODE_SILENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @fan_boost_mode_switch_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_boost_mode_switch_next(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  %3 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  %4 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %5 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ASUS_FAN_BOOST_MODE_NORMAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ASUS_FAN_BOOST_MODE_OVERBOOST_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @ASUS_FAN_BOOST_MODE_OVERBOOST, align 8
  %19 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %20 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ASUS_FAN_BOOST_MODE_SILENT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** @ASUS_FAN_BOOST_MODE_SILENT, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %30 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %17
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %35 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ASUS_FAN_BOOST_MODE_OVERBOOST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ASUS_FAN_BOOST_MODE_SILENT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** @ASUS_FAN_BOOST_MODE_SILENT, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %48 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load i64, i64* @ASUS_FAN_BOOST_MODE_NORMAL, align 8
  %51 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %52 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  br label %58

54:                                               ; preds = %33
  %55 = load i64, i64* @ASUS_FAN_BOOST_MODE_NORMAL, align 8
  %56 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %57 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %53
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %61 = call i32 @fan_boost_mode_write(%struct.asus_wmi* %60)
  ret i32 %61
}

declare dso_local i32 @fan_boost_mode_write(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
