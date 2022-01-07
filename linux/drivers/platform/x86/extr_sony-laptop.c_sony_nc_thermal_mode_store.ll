; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_thermal_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_thermal_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@THM_PROFILE_MAX = common dso_local global i16 0, align 2
@snc_thermal_profiles = common dso_local global i32* null, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sony_nc_thermal_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sony_nc_thermal_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %60

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %11, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %26, %18
  store i16 0, i16* %10, align 2
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i16, i16* %10, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @THM_PROFILE_MAX, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i32*, i32** @snc_thermal_profiles, align 8
  %39 = load i16, i16* %10, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @strncmp(i8* %37, i32 %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i16, i16* %10, align 2
  %50 = add i16 %49, 1
  store i16 %50, i16* %10, align 2
  br label %30

51:                                               ; preds = %46, %30
  %52 = load i16, i16* %10, align 2
  %53 = call i64 @sony_nc_thermal_mode_set(i16 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i64, i64* @EIO, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %5, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %55, %15
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @sony_nc_thermal_mode_set(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
