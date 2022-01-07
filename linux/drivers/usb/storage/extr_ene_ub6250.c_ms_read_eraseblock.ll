; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_eraseblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_eraseblock.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @ms_read_eraseblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_eraseblock(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bulk_cb_wrap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %12, %struct.bulk_cb_wrap** %6, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.us_data*, %struct.us_data** %4, align 8
  %15 = load i32, i32* @MS_RW_PATTERN, align 4
  %16 = call i32 @ene_load_bincode(%struct.us_data* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %24 = call i32 @memset(%struct.bulk_cb_wrap* %23, i32 0, i32 24)
  %25 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %28 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %30 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %29, i32 0, i32 0
  store i32 512, i32* %30, align 8
  %31 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %32 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %33 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %35 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 242, i32* %37, align 4
  %38 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %39 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 6, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i8
  %44 = zext i8 %43 to i32
  %45 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %46 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 8
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %54 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 16
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %62 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load %struct.us_data*, %struct.us_data** %4, align 8
  %66 = load i32, i32* @FDIR_READ, align 4
  %67 = call i32 @ene_send_scsi_cmd(%struct.us_data* %65, i32 %66, i32* null, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %22
  %72 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %22
  %74 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
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
