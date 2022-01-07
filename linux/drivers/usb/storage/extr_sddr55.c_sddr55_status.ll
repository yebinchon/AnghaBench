; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.sddr55_card_info = type { i8, i64, i64, i32*, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Result for send_command in status %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @sddr55_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_status(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sddr55_card_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %3, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sddr55_card_info*
  store %struct.sddr55_card_info* %17, %struct.sddr55_card_info** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 8)
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8 -80, i8* %21, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 -128, i8* %23, align 1
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sddr55_bulk_transport(%struct.us_data* %24, i32 %25, i8* %26, i32 8)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  %36 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %103

37:                                               ; preds = %1
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @sddr55_bulk_transport(%struct.us_data* %38, i32 %39, i8* %40, i32 4)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45, %37
  %50 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %51 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %55 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %59 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %61 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %63 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %65 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = call i32 @set_sense_info(i32 2, i32 58, i32 0)
  %67 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %67, i32* %2, align 4
  br label %103

68:                                               ; preds = %45
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  %74 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %74, i32* %2, align 4
  br label %103

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 32
  %81 = trunc i32 %80 to i8
  %82 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %7, align 8
  %83 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %82, i32 0, i32 0
  store i8 %81, i8* %83, align 8
  %84 = load %struct.us_data*, %struct.us_data** %3, align 8
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @sddr55_bulk_transport(%struct.us_data* %84, i32 %85, i8* %86, i32 2)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = call i32 @set_sense_info(i32 4, i32 0, i32 0)
  br label %93

93:                                               ; preds = %91, %75
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %72, %49, %34
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr55_bulk_transport(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @set_sense_info(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
