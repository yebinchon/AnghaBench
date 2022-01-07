; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_copyblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_copyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.bulk_cb_wrap = type { i32, i32, i32*, i32 }

@MS_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@FDIR_WRITE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i8, i8*, i32)* @ms_read_copyblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_copyblock(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bulk_cb_wrap*, align 8
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8 %4, i8* %13, align 1
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.us_data*, %struct.us_data** %9, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %21, %struct.bulk_cb_wrap** %16, align 8
  %22 = load %struct.us_data*, %struct.us_data** %9, align 8
  %23 = load i32, i32* @MS_RW_PATTERN, align 4
  %24 = call i32 @ene_load_bincode(%struct.us_data* %22, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %29, i32* %8, align 4
  br label %121

30:                                               ; preds = %7
  %31 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %32 = call i32 @memset(%struct.bulk_cb_wrap* %31, i32 0, i32 24)
  %33 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %36 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = mul nsw i32 512, %37
  %39 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %40 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %42 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %44 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 240, i32* %46, align 4
  %47 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %48 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 8, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = trunc i32 %51 to i8
  %53 = zext i8 %52 to i32
  %54 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %55 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = trunc i32 %59 to i8
  %61 = zext i8 %60 to i32
  %62 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %63 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %67 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = trunc i32 %70 to i8
  %72 = zext i8 %71 to i32
  %73 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %74 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = ashr i32 %77, 8
  %79 = trunc i32 %78 to i8
  %80 = zext i8 %79 to i32
  %81 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %82 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  store i32 %80, i32* %84, align 4
  %85 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %86 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = trunc i32 %89 to i8
  %91 = zext i8 %90 to i32
  %92 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %93 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 9
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = ashr i32 %96, 8
  %98 = trunc i32 %97 to i8
  %99 = zext i8 %98 to i32
  %100 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %101 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  store i32 %99, i32* %103, align 4
  %104 = load i8, i8* %13, align 1
  %105 = zext i8 %104 to i32
  %106 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %16, align 8
  %107 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  store i32 %105, i32* %109, align 4
  %110 = load %struct.us_data*, %struct.us_data** %9, align 8
  %111 = load i32, i32* @FDIR_WRITE, align 4
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @ene_send_scsi_cmd(%struct.us_data* %110, i32 %111, i8* %112, i32 0)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %30
  %118 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %118, i32* %8, align 4
  br label %121

119:                                              ; preds = %30
  %120 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %117, %28
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
