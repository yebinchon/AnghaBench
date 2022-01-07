; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_initializers.c_usb_stor_ucr61s2b_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_initializers.c_usb_stor_ucr61s2b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i64 }
%struct.bulk_cb_wrap = type { i32, i32, i64, i64, i8*, i64, i8* }
%struct.bulk_cs_wrap = type { i32, i32, i64, i64, i8*, i64, i8* }

@usb_stor_ucr61s2b_init.init_string = internal global [13 x i8] c"\EC\0A\06\00$PCCHIPS\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"Sending UCR-61S2B initialization packet...\0A\00", align 1
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Getting status packet...\0A\00", align 1
@US_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_ucr61s2b_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.bulk_cb_wrap*, align 8
  %5 = alloca %struct.bulk_cs_wrap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %11, %struct.bulk_cb_wrap** %4, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bulk_cs_wrap*
  store %struct.bulk_cs_wrap* %15, %struct.bulk_cs_wrap** %5, align 8
  %16 = load %struct.us_data*, %struct.us_data** %3, align 8
  %17 = call i32 @usb_stor_dbg(%struct.us_data* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %21 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %23 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = call i8* @cpu_to_le32(i32 0)
  %25 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %26 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %28 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %30 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %32 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %31, i32 0, i32 0
  store i32 12, i32* %32, align 8
  %33 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %34 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %38 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @usb_stor_ucr61s2b_init.init_string, i64 0, i64 0), i32 12)
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %4, align 8
  %46 = bitcast %struct.bulk_cb_wrap* %45 to %struct.bulk_cs_wrap*
  %47 = load i32, i32* @US_BULK_CB_WRAP_LEN, align 4
  %48 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %41, i32 %44, %struct.bulk_cs_wrap* %46, i32 %47, i32* %7)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %1
  %55 = load %struct.us_data*, %struct.us_data** %3, align 8
  %56 = call i32 @usb_stor_dbg(%struct.us_data* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.us_data*, %struct.us_data** %3, align 8
  %58 = load %struct.us_data*, %struct.us_data** %3, align 8
  %59 = getelementptr inbounds %struct.us_data, %struct.us_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %62 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %63 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %57, i32 %60, %struct.bulk_cs_wrap* %61, i32 %62, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %51
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, %struct.bulk_cs_wrap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
