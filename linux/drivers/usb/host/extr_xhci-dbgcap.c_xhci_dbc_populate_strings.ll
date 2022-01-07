; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_populate_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_populate_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbc_str_descs = type { i32*, i64, i64, i64 }
%struct.usb_string_descriptor = type { i32, i8*, i64 }

@DBC_STRING_SERIAL = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@DBC_MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@USB_DT_STRING = common dso_local global i8* null, align 8
@DBC_STRING_PRODUCT = common dso_local global i32 0, align 4
@DBC_STRING_MANUFACTURER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbc_str_descs*)* @xhci_dbc_populate_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_dbc_populate_strings(%struct.dbc_str_descs* %0) #0 {
  %2 = alloca %struct.dbc_str_descs*, align 8
  %3 = alloca %struct.usb_string_descriptor*, align 8
  %4 = alloca i32, align 4
  store %struct.dbc_str_descs* %0, %struct.dbc_str_descs** %2, align 8
  %5 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %6 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.usb_string_descriptor*
  store %struct.usb_string_descriptor* %8, %struct.usb_string_descriptor** %3, align 8
  %9 = load i32, i32* @DBC_STRING_SERIAL, align 4
  %10 = load i32, i32* @DBC_STRING_SERIAL, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %13 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %14 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %18 = call i32 @utf8s_to_utf16s(i32 %9, i32 %11, i32 %12, i32* %16, i32 %17)
  %19 = load i32, i32* @DBC_STRING_SERIAL, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 2
  %23 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @USB_DT_STRING, align 8
  %26 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %27 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %29 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %34 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.usb_string_descriptor*
  store %struct.usb_string_descriptor* %36, %struct.usb_string_descriptor** %3, align 8
  %37 = load i32, i32* @DBC_STRING_PRODUCT, align 4
  %38 = load i32, i32* @DBC_STRING_PRODUCT, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %41 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %42 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %46 = call i32 @utf8s_to_utf16s(i32 %37, i32 %39, i32 %40, i32* %44, i32 %45)
  %47 = load i32, i32* @DBC_STRING_PRODUCT, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = add nsw i32 %48, 1
  %50 = mul nsw i32 %49, 2
  %51 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %52 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @USB_DT_STRING, align 8
  %54 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %55 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %57 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 8
  store i32 %62, i32* %4, align 4
  %63 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %64 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.usb_string_descriptor*
  store %struct.usb_string_descriptor* %66, %struct.usb_string_descriptor** %3, align 8
  %67 = load i32, i32* @DBC_STRING_MANUFACTURER, align 4
  %68 = load i32, i32* @DBC_STRING_MANUFACTURER, align 4
  %69 = call i32 @strlen(i32 %68)
  %70 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %71 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %72 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %76 = call i32 @utf8s_to_utf16s(i32 %67, i32 %69, i32 %70, i32* %74, i32 %75)
  %77 = load i32, i32* @DBC_STRING_MANUFACTURER, align 4
  %78 = call i32 @strlen(i32 %77)
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %79, 2
  %81 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %82 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** @USB_DT_STRING, align 8
  %84 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %85 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.usb_string_descriptor*, %struct.usb_string_descriptor** %3, align 8
  %87 = getelementptr inbounds %struct.usb_string_descriptor, %struct.usb_string_descriptor* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 %91, 8
  store i32 %92, i32* %4, align 4
  %93 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %94 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 4, i32* %96, align 4
  %97 = load i8*, i8** @USB_DT_STRING, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %100 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %104 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 9, i32* %106, align 4
  %107 = load %struct.dbc_str_descs*, %struct.dbc_str_descs** %2, align 8
  %108 = getelementptr inbounds %struct.dbc_str_descs, %struct.dbc_str_descs* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 4, i32* %110, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @utf8s_to_utf16s(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
