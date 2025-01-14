; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usb_decode_ctrl(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  switch i32 %15, label %83 [
    i32 136, label %16
    i32 140, label %23
    i32 132, label %23
    i32 135, label %31
    i32 138, label %36
    i32 133, label %36
    i32 139, label %45
    i32 134, label %50
    i32 137, label %55
    i32 131, label %61
    i32 128, label %67
    i32 129, label %73
    i32 130, label %78
  ]

16:                                               ; preds = %7
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @usb_decode_get_status(i32 %17, i32 %18, i32 %19, i8* %20, i64 %21)
  br label %107

23:                                               ; preds = %7, %7
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @usb_decode_set_clear_feature(i32 %24, i32 %25, i32 %26, i32 %27, i8* %28, i64 %29)
  br label %107

31:                                               ; preds = %7
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @usb_decode_set_address(i32 %32, i8* %33, i64 %34)
  br label %107

36:                                               ; preds = %7, %7
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @usb_decode_get_set_descriptor(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i8* %42, i64 %43)
  br label %107

45:                                               ; preds = %7
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @usb_decode_get_configuration(i32 %46, i8* %47, i64 %48)
  br label %107

50:                                               ; preds = %7
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @usb_decode_set_configuration(i32 %51, i8* %52, i64 %53)
  br label %107

55:                                               ; preds = %7
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @usb_decode_get_intf(i32 %56, i32 %57, i8* %58, i64 %59)
  br label %107

61:                                               ; preds = %7
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @usb_decode_set_intf(i32 %62, i32 %63, i8* %64, i64 %65)
  br label %107

67:                                               ; preds = %7
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @usb_decode_synch_frame(i32 %68, i32 %69, i8* %70, i64 %71)
  br label %107

73:                                               ; preds = %7
  %74 = load i32, i32* %14, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @usb_decode_set_sel(i32 %74, i8* %75, i64 %76)
  br label %107

78:                                               ; preds = %7
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @usb_decode_set_isoch_delay(i32 %79, i8* %80, i64 %81)
  br label %107

83:                                               ; preds = %7
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = and i32 %89, 255
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @cpu_to_le16(i32 %91)
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @cpu_to_le16(i32 %94)
  %96 = and i32 %95, 255
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @cpu_to_le16(i32 %97)
  %99 = ashr i32 %98, 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @cpu_to_le16(i32 %100)
  %102 = and i32 %101, 255
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @cpu_to_le16(i32 %103)
  %105 = ashr i32 %104, 8
  %106 = call i32 @snprintf(i8* %84, i64 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %83, %78, %73, %67, %61, %55, %50, %45, %36, %31, %23, %16
  %108 = load i8*, i8** %8, align 8
  ret i8* %108
}

declare dso_local i32 @usb_decode_get_status(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_clear_feature(i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_address(i32, i8*, i64) #1

declare dso_local i32 @usb_decode_get_set_descriptor(i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_get_configuration(i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_configuration(i32, i8*, i64) #1

declare dso_local i32 @usb_decode_get_intf(i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_intf(i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_synch_frame(i32, i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_sel(i32, i8*, i64) #1

declare dso_local i32 @usb_decode_set_isoch_delay(i32, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
