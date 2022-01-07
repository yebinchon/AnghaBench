; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_u_os_desc.h_usb_ext_prop_put_unicode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_u_os_desc.h_usb_ext_prop_put_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@USB_EXT_PROP_B_PROPERTY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @usb_ext_prop_put_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_ext_prop_put_unicode(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @usb_ext_prop_data_len_ptr(i32* %12, i32 %13)
  %15 = call i32 @put_unaligned_le32(i32 %11, i32 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @usb_ext_prop_data_ptr(i32* %20, i32 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 2
  %26 = call i32 @utf8s_to_utf16s(i8* %16, i32 %18, i32 %19, i32* %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %43

31:                                               ; preds = %4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @USB_EXT_PROP_B_PROPERTY_DATA, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = call i32 @put_unaligned_le16(i32 0, i32* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %31, %29
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @usb_ext_prop_data_len_ptr(i32*, i32) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @usb_ext_prop_data_ptr(i32*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
