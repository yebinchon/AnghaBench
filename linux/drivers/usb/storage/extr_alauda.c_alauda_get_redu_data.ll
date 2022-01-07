; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_get_redu_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_get_redu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@ALAUDA_BULK_CMD = common dso_local global i8 0, align 1
@ALAUDA_BULK_GET_REDU_DATA = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8*)* @alauda_get_redu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_get_redu_data(%struct.us_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %11 = load i8, i8* @ALAUDA_BULK_CMD, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = load i8, i8* @ALAUDA_BULK_GET_REDU_DATA, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i32, i32* %6, align 4
  %16 = call zeroext i8 @PBA_HI(i32 %15)
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  %18 = load i32, i32* %6, align 4
  %19 = call zeroext i8 @PBA_ZONE(i32 %18)
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i32, i32* %6, align 4
  %23 = call zeroext i8 @PBA_LO(i32 %22)
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load %struct.us_data*, %struct.us_data** %5, align 8
  %28 = call zeroext i8 @MEDIA_PORT(%struct.us_data* %27)
  store i8 %28, i8* %26, align 1
  %29 = load %struct.us_data*, %struct.us_data** %5, align 8
  %30 = load %struct.us_data*, %struct.us_data** %5, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %34 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %29, i32 %32, i8* %33, i32 9, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.us_data*, %struct.us_data** %5, align 8
  %42 = load %struct.us_data*, %struct.us_data** %5, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %41, i32 %44, i8* %45, i32 16, i32* null)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local zeroext i8 @PBA_HI(i32) #1

declare dso_local zeroext i8 @PBA_ZONE(i32) #1

declare dso_local zeroext i8 @PBA_LO(i32) #1

declare dso_local zeroext i8 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
