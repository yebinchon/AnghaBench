; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_readX.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_readX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }

@LUNBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Result for send_control in sddr09_read2%d %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Result for bulk_transfer in sddr09_read2%d %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i64, i32, i32, i8*, i32)* @sddr09_readX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_readX(%struct.us_data* %0, i32 %1, i64 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.us_data*, %struct.us_data** %9, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 -24, i8* %22, align 1
  %23 = load i32, i32* @LUNBITS, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %16, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  %29 = load i64, i64* %11, align 8
  %30 = lshr i64 %29, 16
  %31 = trunc i64 %30 to i32
  %32 = call zeroext i8 @MSB_of(i32 %31)
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8 %32, i8* %34, align 1
  %35 = load i64, i64* %11, align 8
  %36 = lshr i64 %35, 16
  %37 = trunc i64 %36 to i32
  %38 = call zeroext i8 @LSB_of(i32 %37)
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 %38, i8* %40, align 1
  %41 = load i64, i64* %11, align 8
  %42 = and i64 %41, 65535
  %43 = trunc i64 %42 to i32
  %44 = call zeroext i8 @MSB_of(i32 %43)
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8 %44, i8* %46, align 1
  %47 = load i64, i64* %11, align 8
  %48 = and i64 %47, 65535
  %49 = trunc i64 %48 to i32
  %50 = call zeroext i8 @LSB_of(i32 %49)
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  store i8 %50, i8* %52, align 1
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 6
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %12, align 4
  %62 = call zeroext i8 @MSB_of(i32 %61)
  %63 = load i8*, i8** %16, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 10
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %12, align 4
  %66 = call zeroext i8 @LSB_of(i32 %65)
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 11
  store i8 %66, i8* %68, align 1
  %69 = load %struct.us_data*, %struct.us_data** %9, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @sddr09_send_scsi_command(%struct.us_data* %69, i8* %70, i32 12)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %7
  %75 = load %struct.us_data*, %struct.us_data** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @usb_stor_dbg(%struct.us_data* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %8, align 4
  br label %100

80:                                               ; preds = %7
  %81 = load %struct.us_data*, %struct.us_data** %9, align 8
  %82 = load %struct.us_data*, %struct.us_data** %9, align 8
  %83 = getelementptr inbounds %struct.us_data, %struct.us_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @usb_stor_bulk_transfer_sg(%struct.us_data* %81, i32 %84, i8* %85, i32 %86, i32 %87, i32* null)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.us_data*, %struct.us_data** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @usb_stor_dbg(%struct.us_data* %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %100

99:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %92, %74
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local zeroext i8 @MSB_of(i32) #1

declare dso_local zeroext i8 @LSB_of(i32) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_sg(%struct.us_data*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
