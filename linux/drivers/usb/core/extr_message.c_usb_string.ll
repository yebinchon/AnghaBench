; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32 }

@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@USB_DT_STRING = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c"wrong descriptor type %02x for string %d (\22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_string(%struct.usb_device* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EHOSTUNREACH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %104

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %104

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 256
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %104

40:                                               ; preds = %34
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call i8* @kmalloc(i32 256, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %104

48:                                               ; preds = %40
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @usb_get_langid(%struct.usb_device* %49, i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %100

55:                                               ; preds = %48
  %56 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @usb_string_sub(%struct.usb_device* %56, i32 %59, i32 %60, i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %100

66:                                               ; preds = %55
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 2
  %74 = sdiv i32 %73, 2
  %75 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @utf16s_to_utf8s(i32* %71, i32 %74, i32 %75, i8* %76, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @USB_DT_STRING, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %66
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 1
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 zeroext %95, i32 %96, i8* %97)
  br label %99

99:                                               ; preds = %90, %66
  br label %100

100:                                              ; preds = %99, %65, %54
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @kfree(i8* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %45, %37, %26, %17
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_langid(%struct.usb_device*, i8*) #1

declare dso_local i32 @usb_string_sub(%struct.usb_device*, i32, i32, i8*) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
