; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_set_device_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_set_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@DEVADD0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"cannot set speed to unknown device %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unsupported hub number %d\0A\00", align 1
@USBSPD_SPEED_LOW = common dso_local global i32 0, align 4
@USBSPD_SPEED_FULL = common dso_local global i32 0, align 4
@USBSPD_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unsupported speed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_set_device_config(%struct.usbhs_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %16 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %15)
  store %struct.device* %16, %struct.device** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* @DEVADD0, align 8
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %14, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 10
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %65

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 10
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %30
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %47 [
    i32 128, label %41
    i32 130, label %43
    i32 129, label %45
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @USBSPD_SPEED_LOW, align 4
  store i32 %42, i32* %13, align 4
  br label %53

43:                                               ; preds = %39
  %44 = load i32, i32* @USBSPD_SPEED_FULL, align 4
  store i32 %44, i32* %13, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @USBSPD_SPEED_HIGH, align 4
  store i32 %46, i32* %13, align 4
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %65

53:                                               ; preds = %45, %43, %41
  %54 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @UPPHUB(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @HUBPORT(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @USBSPD(i32 %61)
  %63 = or i32 %60, %62
  %64 = call i32 @usbhs_write(%struct.usbhs_priv* %54, i64 %55, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %53, %47, %33, %24
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i64, i32) #1

declare dso_local i32 @UPPHUB(i32) #1

declare dso_local i32 @HUBPORT(i32) #1

declare dso_local i32 @USBSPD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
