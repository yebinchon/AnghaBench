; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_thermal_profiles_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_thermal_profiles_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@THM_PROFILE_MAX = common dso_local global i16 0, align 2
@th_handle = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@snc_thermal_profiles = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @sony_nc_thermal_profiles_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sony_nc_thermal_profiles_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %8, align 8
  store i16 0, i16* %7, align 2
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i16, i16* %7, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @THM_PROFILE_MAX, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load i16, i16* %7, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @th_handle, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* %7, align 2
  %24 = sext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %18, %15
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  %34 = load i8**, i8*** @snc_thermal_profiles, align 8
  %35 = load i16, i16* %7, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %30, i64 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %27, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i16, i16* %7, align 2
  %45 = add i16 %44, 1
  store i16 %45, i16* %7, align 2
  br label %9

46:                                               ; preds = %9
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %49, i64 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  ret i64 %56
}

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
