; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_read_extrablock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_read_extrablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.bulk_cb_wrap = type { i32, i32*, i32, i32 }

@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@FDIR_READ = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i8*)* @ms_lib_read_extrablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_read_extrablock(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bulk_cb_wrap*, align 8
  %13 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.us_data*, %struct.us_data** %7, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %17, %struct.bulk_cb_wrap** %12, align 8
  %18 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %19 = call i32 @memset(%struct.bulk_cb_wrap* %18, i32 0, i32 24)
  %20 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %23 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 4, %24
  %26 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %27 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %29 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %30 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %32 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 241, i32* %34, align 4
  %35 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %36 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 3, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = trunc i32 %39 to i8
  %41 = zext i8 %40 to i32
  %42 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %43 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = trunc i32 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %50 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = trunc i32 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %58 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 16
  %63 = trunc i32 %62 to i8
  %64 = zext i8 %63 to i32
  %65 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %66 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %71 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  store i32 %69, i32* %73, align 4
  %74 = load %struct.us_data*, %struct.us_data** %7, align 8
  %75 = load i32, i32* @FDIR_READ, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @ene_send_scsi_cmd(%struct.us_data* %74, i32 %75, i8* %76, i32 0)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %5
  %82 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %5
  %84 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
