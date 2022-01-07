; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_determine_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_determine_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }
%struct.datafab_info = type { i32 }

@datafab_determine_lun.scommand = internal global [8 x i8] c"\00\01\00\00\00\A0\EC\01", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"locating...\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.datafab_info*)* @datafab_determine_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_determine_lun(%struct.us_data* %0, %struct.datafab_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.datafab_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.datafab_info* %1, %struct.datafab_info** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %4, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %14 = icmp ne %struct.datafab_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @memcpy(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_determine_lun.scommand, i64 0, i64 0), i32 8)
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = call i8* @kmalloc(i32 512, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %17
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = call i32 @usb_stor_dbg(%struct.us_data* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %77, %26
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %30, 3
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8 -96, i8* %35, align 1
  %36 = load %struct.us_data*, %struct.us_data** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @datafab_bulk_write(%struct.us_data* %36, i8* %37, i32 8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %9, align 4
  br label %81

44:                                               ; preds = %33
  %45 = load %struct.us_data*, %struct.us_data** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @datafab_bulk_read(%struct.us_data* %45, i8* %46, i32 512)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %53 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %54, i32* %9, align 4
  br label %81

55:                                               ; preds = %44
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  store i8 -80, i8* %57, align 1
  %58 = load %struct.us_data*, %struct.us_data** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @datafab_bulk_write(%struct.us_data* %58, i8* %59, i32 8)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %65, i32* %9, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load %struct.us_data*, %struct.us_data** %4, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @datafab_bulk_read(%struct.us_data* %67, i8* %68, i32 512)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.datafab_info*, %struct.datafab_info** %5, align 8
  %75 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %76, i32* %9, align 4
  br label %81

77:                                               ; preds = %66
  %78 = call i32 @msleep(i32 20)
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %73, %64, %51, %42
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %24, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @datafab_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
