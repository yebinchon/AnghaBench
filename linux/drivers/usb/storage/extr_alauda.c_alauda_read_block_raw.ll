; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_read_block_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_read_block_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ALAUDA_BULK_CMD = common dso_local global i32 0, align 4
@ALAUDA_BULK_READ_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pba %d page %d count %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i8*)* @alauda_read_block_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_read_block_raw(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [9 x i8], align 1
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %16 = load i32, i32* @ALAUDA_BULK_CMD, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 1
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  %19 = load i32, i32* @ALAUDA_BULK_READ_BLOCK, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds i8, i8* %18, i64 1
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PBA_HI(i32 %22)
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PBA_ZONE(i32 %26)
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PBA_LO(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds i8, i8* %30, i64 1
  %37 = load i32, i32* %10, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load %struct.us_data*, %struct.us_data** %7, align 8
  %42 = call i32 @MEDIA_PORT(%struct.us_data* %41)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %40, align 1
  %44 = load %struct.us_data*, %struct.us_data** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @usb_stor_dbg(%struct.us_data* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.us_data*, %struct.us_data** %7, align 8
  %50 = load %struct.us_data*, %struct.us_data** %7, align 8
  %51 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %54 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %49, i32 %52, i8* %53, i32 9, i32* null)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %5
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %75

60:                                               ; preds = %5
  %61 = load %struct.us_data*, %struct.us_data** %7, align 8
  %62 = load %struct.us_data*, %struct.us_data** %7, align 8
  %63 = getelementptr inbounds %struct.us_data, %struct.us_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.us_data*, %struct.us_data** %7, align 8
  %67 = call i32 @MEDIA_INFO(%struct.us_data* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 64
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 %71, %72
  %74 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %61, i32 %64, i8* %65, i32 %73, i32* null)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %60, %58
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @PBA_HI(i32) #1

declare dso_local i32 @PBA_ZONE(i32) #1

declare dso_local i32 @PBA_LO(i32) #1

declare dso_local i32 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i32 @MEDIA_INFO(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
