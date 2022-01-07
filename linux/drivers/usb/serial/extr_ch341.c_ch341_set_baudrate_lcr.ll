; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_set_baudrate_lcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_set_baudrate_lcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ch341_private = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CH341_BAUDBASE_FACTOR = common dso_local global i64 0, align 8
@CH341_BAUDBASE_DIVMAX = common dso_local global i16 0, align 2
@CH341_REQ_WRITE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ch341_private*, i16)* @ch341_set_baudrate_lcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_set_baudrate_lcr(%struct.usb_device* %0, %struct.ch341_private* %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.ch341_private*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.ch341_private* %1, %struct.ch341_private** %6, align 8
  store i16 %2, i16* %7, align 2
  %12 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %13 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load i64, i64* @CH341_BAUDBASE_FACTOR, align 8
  %21 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %22 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %20, %23
  store i64 %24, i64* %10, align 8
  %25 = load i16, i16* @CH341_BAUDBASE_DIVMAX, align 2
  store i16 %25, i16* %11, align 2
  br label %26

26:                                               ; preds = %35, %19
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 65520
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i16, i16* %11, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load i64, i64* %10, align 8
  %37 = lshr i64 %36, 3
  store i64 %37, i64* %10, align 8
  %38 = load i16, i16* %11, align 2
  %39 = add i16 %38, -1
  store i16 %39, i16* %11, align 2
  br label %26

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %41, 65520
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %80

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 65536, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = and i64 %49, 65280
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i64
  %53 = or i64 %50, %52
  %54 = trunc i64 %53 to i16
  store i16 %54, i16* %8, align 2
  %55 = call signext i16 @BIT(i32 7)
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* %8, align 2
  %58 = sext i16 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %8, align 2
  %61 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %62 = load i32, i32* @CH341_REQ_WRITE_REG, align 4
  %63 = load i16, i16* %8, align 2
  %64 = call i32 @ch341_control_out(%struct.usb_device* %61, i32 %62, i32 4882, i16 signext %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %46
  %70 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %71 = load i32, i32* @CH341_REQ_WRITE_REG, align 4
  %72 = load i16, i16* %7, align 2
  %73 = call i32 @ch341_control_out(%struct.usb_device* %70, i32 %71, i32 9496, i16 signext %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76, %67, %43, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local signext i16 @BIT(i32) #1

declare dso_local i32 @ch341_control_out(%struct.usb_device*, i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
