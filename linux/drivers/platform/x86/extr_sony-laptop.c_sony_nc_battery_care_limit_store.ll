; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_battery_care_limit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_battery_care_limit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@bcare_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sony_nc_battery_care_limit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sony_nc_battery_care_limit_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 31
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %72

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 10, i64* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %72

25:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ule i64 %29, 50
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 32, i32* %11, align 4
  br label %45

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = icmp ule i64 %33, 80
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 16, i32* %11, align 4
  br label %44

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = icmp ule i64 %37, 100
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 48, i32* %11, align 4
  br label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %72

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bcare_ctl, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 319
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 2
  %54 = or i32 %51, %53
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 1
  %58 = shl i32 %57, 16
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %25
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bcare_ctl, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, 256
  %65 = call i64 @sony_call_snc_handle(i32 %62, i32 %64, i32* %10)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i64, i64* @EIO, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %67, %40, %22, %15
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @sony_call_snc_handle(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
