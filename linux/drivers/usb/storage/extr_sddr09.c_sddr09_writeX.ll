; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_writeX.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_writeX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }

@LUNBITS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [45 x i8] c"Result for send_control in sddr09_writeX %d\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Result for bulk_transfer in sddr09_writeX %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i64, i32, i32, i8*, i32)* @sddr09_writeX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_writeX(%struct.us_data* %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i64 %1, i64* %10, align 8
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
  store i8 -23, i8* %22, align 1
  %23 = load i8, i8* @LUNBITS, align 1
  %24 = load i8*, i8** %16, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %23, i8* %25, align 1
  %26 = load i64, i64* %10, align 8
  %27 = lshr i64 %26, 16
  %28 = trunc i64 %27 to i32
  %29 = call zeroext i8 @MSB_of(i32 %28)
  %30 = load i8*, i8** %16, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %31, align 1
  %32 = load i64, i64* %10, align 8
  %33 = lshr i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = call zeroext i8 @LSB_of(i32 %34)
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* %10, align 8
  %39 = and i64 %38, 65535
  %40 = trunc i64 %39 to i32
  %41 = call zeroext i8 @MSB_of(i32 %40)
  %42 = load i8*, i8** %16, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8 %41, i8* %43, align 1
  %44 = load i64, i64* %10, align 8
  %45 = and i64 %44, 65535
  %46 = trunc i64 %45 to i32
  %47 = call zeroext i8 @LSB_of(i32 %46)
  %48 = load i8*, i8** %16, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  store i8 %47, i8* %49, align 1
  %50 = load i64, i64* %11, align 8
  %51 = lshr i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = call zeroext i8 @MSB_of(i32 %52)
  %54 = load i8*, i8** %16, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  store i8 %53, i8* %55, align 1
  %56 = load i64, i64* %11, align 8
  %57 = lshr i64 %56, 16
  %58 = trunc i64 %57 to i32
  %59 = call zeroext i8 @LSB_of(i32 %58)
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  store i8 %59, i8* %61, align 1
  %62 = load i64, i64* %11, align 8
  %63 = and i64 %62, 65535
  %64 = trunc i64 %63 to i32
  %65 = call zeroext i8 @MSB_of(i32 %64)
  %66 = load i8*, i8** %16, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8 %65, i8* %67, align 1
  %68 = load i64, i64* %11, align 8
  %69 = and i64 %68, 65535
  %70 = trunc i64 %69 to i32
  %71 = call zeroext i8 @LSB_of(i32 %70)
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 9
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %12, align 4
  %75 = call zeroext i8 @MSB_of(i32 %74)
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 10
  store i8 %75, i8* %77, align 1
  %78 = load i32, i32* %12, align 4
  %79 = call zeroext i8 @LSB_of(i32 %78)
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 11
  store i8 %79, i8* %81, align 1
  %82 = load %struct.us_data*, %struct.us_data** %9, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @sddr09_send_scsi_command(%struct.us_data* %82, i8* %83, i32 12)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %7
  %88 = load %struct.us_data*, %struct.us_data** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @usb_stor_dbg(%struct.us_data* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %8, align 4
  br label %111

92:                                               ; preds = %7
  %93 = load %struct.us_data*, %struct.us_data** %9, align 8
  %94 = load %struct.us_data*, %struct.us_data** %9, align 8
  %95 = getelementptr inbounds %struct.us_data, %struct.us_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @usb_stor_bulk_transfer_sg(%struct.us_data* %93, i32 %96, i8* %97, i32 %98, i32 %99, i32* null)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load %struct.us_data*, %struct.us_data** %9, align 8
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @usb_stor_dbg(%struct.us_data* %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %111

110:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %104, %87
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local zeroext i8 @MSB_of(i32) #1

declare dso_local zeroext i8 @LSB_of(i32) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_sg(%struct.us_data*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
