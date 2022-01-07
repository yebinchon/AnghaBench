; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_usbstring.c_usb_gadget_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_usbstring.c_usb_gadget_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget_strings = type { i32, %struct.usb_string* }
%struct.usb_string = type { i32, i32 }

@USB_DT_STRING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_get_string(%struct.usb_gadget_strings* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_gadget_strings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_string*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_gadget_strings* %0, %struct.usb_gadget_strings** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* @USB_DT_STRING, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %5, align 8
  %19 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %5, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  store i32 4, i32* %4, align 4
  br label %96

29:                                               ; preds = %3
  %30 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %5, align 8
  %31 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %30, i32 0, i32 1
  %32 = load %struct.usb_string*, %struct.usb_string** %31, align 8
  store %struct.usb_string* %32, %struct.usb_string** %8, align 8
  br label %33

33:                                               ; preds = %51, %29
  %34 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %35 = icmp ne %struct.usb_string* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %38 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %45 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %53 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %52, i32 1
  store %struct.usb_string* %53, %struct.usb_string** %8, align 8
  br label %33

54:                                               ; preds = %49, %41
  %55 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %56 = icmp ne %struct.usb_string* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %59 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %96

65:                                               ; preds = %57
  %66 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %67 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strlen(i32 %68)
  %70 = call i32 @min(i64 126, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %72 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i32 @utf8s_to_utf16s(i32 %73, i32 %74, i32 %75, i32* %77, i32 126)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %96

84:                                               ; preds = %65
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %86, 2
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @USB_DT_STRING, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %84, %81, %62, %12
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @utf8s_to_utf16s(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
