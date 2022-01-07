; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_id_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_id_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }
%struct.datafab_info = type { i32, i32 }

@datafab_id_device.scommand = internal global [8 x i8] c"\00\01\00\00\00\A0\EC\01", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.datafab_info*)* @datafab_id_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_id_device(%struct.us_data* %0, %struct.datafab_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.datafab_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.datafab_info* %1, %struct.datafab_info** %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %13 = icmp ne %struct.datafab_info* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %98

16:                                               ; preds = %2
  %17 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %18 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.us_data*, %struct.us_data** %4, align 8
  %23 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %24 = call i32 @datafab_determine_lun(%struct.us_data* %22, %struct.datafab_info* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @memcpy(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_id_device.scommand, i64 0, i64 0), i32 8)
  %34 = load i32, i32* @GFP_NOIO, align 4
  %35 = call i8* @kmalloc(i32 512, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %39, i32* %3, align 4
  br label %98

40:                                               ; preds = %31
  %41 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %42 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, %44
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = load %struct.us_data*, %struct.us_data** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @datafab_bulk_write(%struct.us_data* %51, i8* %52, i32 8)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %58, i32* %8, align 4
  br label %94

59:                                               ; preds = %40
  %60 = load %struct.us_data*, %struct.us_data** %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @datafab_bulk_read(%struct.us_data* %60, i8* %61, i32 512)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 117
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 24
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 116
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 16
  %77 = or i32 %71, %76
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 115
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = or i32 %77, %82
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 114
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %83, %87
  %89 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %90 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %91, i32* %8, align 4
  br label %94

92:                                               ; preds = %59
  %93 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %66, %57
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %38, %28, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @datafab_determine_lun(%struct.us_data*, %struct.datafab_info*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @datafab_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
