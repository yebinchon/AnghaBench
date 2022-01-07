; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_check_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_check_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT3290 = common dso_local global i32 0, align 4
@FW_BAD_LENGTH = common dso_local global i32 0, align 4
@RT2860 = common dso_local global i32 0, align 4
@RT2872 = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@FW_BAD_VERSION = common dso_local global i32 0, align 4
@FW_BAD_CRC = common dso_local global i32 0, align 4
@FW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_check_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %12 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @RT3290, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store i64 4096, i64* %9, align 8
  br label %21

20:                                               ; preds = %14
  store i64 8192, i64* %9, align 8
  br label %21

21:                                               ; preds = %20, %19
  store i32 1, i32* %10, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = urem i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @FW_BAD_LENGTH, align 4
  store i32 %34, i32* %4, align 4
  br label %81

35:                                               ; preds = %28, %21
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @RT2860, align 4
  %42 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %46 = load i32, i32* @RT2872, align 4
  %47 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = load i32, i32* @RT3070, align 4
  %52 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = udiv i64 %55, %56
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FW_BAD_VERSION, align 4
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %54, %49, %44, %39, %35
  br label %62

62:                                               ; preds = %75, %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @rt2800_check_firmware_crc(i32* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @FW_BAD_CRC, align 4
  store i32 %74, i32* %4, align 4
  br label %81

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* @FW_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %73, %59, %33
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_check_firmware_crc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
