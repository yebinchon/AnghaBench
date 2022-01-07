; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_get_card_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_get_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.bulk_cb_wrap = type { i32, i32*, i32, i32 }

@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@FDIR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8*)* @ene_get_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_get_card_type(%struct.us_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bulk_cb_wrap*, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %12, %struct.bulk_cb_wrap** %7, align 8
  %13 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %14 = call i32 @memset(%struct.bulk_cb_wrap* %13, i32 0, i32 24)
  %15 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %18 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %20 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %22 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %23 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %25 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 237, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %33 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = trunc i32 %36 to i8
  %38 = zext i8 %37 to i32
  %39 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %40 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.us_data*, %struct.us_data** %4, align 8
  %44 = load i32, i32* @FDIR_READ, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @ene_send_scsi_cmd(%struct.us_data* %43, i32 %44, i8* %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  ret i32 %47
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
