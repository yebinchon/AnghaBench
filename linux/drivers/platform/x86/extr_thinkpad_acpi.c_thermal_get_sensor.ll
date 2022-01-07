; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_thermal_get_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_thermal_get_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TP_EC_THERMAL_TMP0 = common dso_local global i32 0, align 4
@thermal_read_mode = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"TMP%c\00", align 1
@ec_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"UPDT\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@TP_EC_THERMAL_TMP_NA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TP_EC_THERMAL_TMP8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @thermal_get_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_sensor(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @TP_EC_THERMAL_TMP0, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @thermal_read_mode, align 4
  switch i32 %10, label %85 [
    i32 128, label %11
    i32 131, label %28
    i32 132, label %56
    i32 130, label %84
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 7
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @acpi_ec_read(i32 %17, i32* %7)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %91

27:                                               ; preds = %11
  br label %88

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 7
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 48, %33
  %35 = call i32 @snprintf(i8* %32, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ec_handle, align 4
  %37 = call i32 @acpi_evalf(i32 %36, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %91

42:                                               ; preds = %31
  %43 = load i32, i32* @ec_handle, align 4
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %45 = call i32 @acpi_evalf(i32 %43, i32* %6, i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 2732
  %53 = mul nsw i32 %52, 100
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %91

55:                                               ; preds = %28
  br label %88

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = icmp sle i32 %57, 7
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 48, %61
  %63 = call i32 @snprintf(i8* %60, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ec_handle, align 4
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %66 = call i32 @acpi_evalf(i32 %64, i32* %6, i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %91

71:                                               ; preds = %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 127
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, -127
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @TP_EC_THERMAL_TMP_NA, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %91

83:                                               ; preds = %56
  br label %88

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %2, %84
  %86 = load i32, i32* @ENOSYS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %83, %55, %27
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %85, %79, %68, %50, %47, %39, %23, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
