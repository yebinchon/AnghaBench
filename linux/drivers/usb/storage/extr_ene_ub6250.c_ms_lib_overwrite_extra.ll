; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_overwrite_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_overwrite_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.bulk_cb_wrap = type { i32, i32*, i32, i32 }

@MS_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@FDIR_READ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8, i8)* @ms_lib_overwrite_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_overwrite_extra(%struct.us_data* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.bulk_cb_wrap*, align 8
  %11 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %12 = load %struct.us_data*, %struct.us_data** %6, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %15, %struct.bulk_cb_wrap** %10, align 8
  %16 = load %struct.us_data*, %struct.us_data** %6, align 8
  %17 = load i32, i32* @MS_RW_PATTERN, align 4
  %18 = call i32 @ene_load_bincode(%struct.us_data* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %23, i32* %5, align 4
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %26 = call i32 @memset(%struct.bulk_cb_wrap* %25, i32 0, i32 24)
  %27 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %30 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %32 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %34 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %35 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %37 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 242, i32* %39, align 4
  %40 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %41 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 5, i32* %43, align 4
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %47 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %54 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 8
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %62 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 16
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %70 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %68, i32* %72, align 4
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %76 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %74, i32* %78, align 4
  %79 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %80 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 255, i32* %82, align 4
  %83 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %84 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 8
  store i32 255, i32* %86, align 4
  %87 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %88 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 9
  store i32 255, i32* %90, align 4
  %91 = load %struct.us_data*, %struct.us_data** %6, align 8
  %92 = load i32, i32* @FDIR_READ, align 4
  %93 = call i32 @ene_send_scsi_cmd(%struct.us_data* %91, i32 %92, i32* null, i32 0)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %24
  %98 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %98, i32* %5, align 4
  br label %101

99:                                               ; preds = %24
  %100 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %97, %22
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
