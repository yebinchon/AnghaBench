; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_u_os_desc.h_usb_ext_prop_put_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_u_os_desc.h_usb_ext_prop_put_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@USB_EXT_PROP_B_PROPERTY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @usb_ext_prop_put_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_ext_prop_put_name(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @usb_ext_prop_name_len_ptr(i32* %10)
  %12 = call i32 @put_unaligned_le16(i32 %9, i32* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @usb_ext_prop_name_ptr(i32* %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 2
  %22 = call i32 @utf8s_to_utf16s(i8* %13, i32 %15, i32 %16, i32* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @USB_EXT_PROP_B_PROPERTY_NAME, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = call i32 @put_unaligned_le16(i32 0, i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32* @usb_ext_prop_name_len_ptr(i32*) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @usb_ext_prop_name_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
