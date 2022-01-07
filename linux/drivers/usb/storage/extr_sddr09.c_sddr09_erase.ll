; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"erase address %lu\0A\00", align 1
@LUNBITS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Result for send_control in sddr09_erase %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @sddr09_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_erase(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @usb_stor_dbg(%struct.us_data* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @memset(i8* %14, i32 0, i32 12)
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 -22, i8* %17, align 1
  %18 = load i8, i8* @LUNBITS, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %18, i8* %20, align 1
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 16
  %23 = call zeroext i8 @MSB_of(i64 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8 %23, i8* %25, align 1
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 16
  %28 = call zeroext i8 @LSB_of(i64 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 7
  store i8 %28, i8* %30, align 1
  %31 = load i64, i64* %4, align 8
  %32 = and i64 %31, 65535
  %33 = call zeroext i8 @MSB_of(i64 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  store i8 %33, i8* %35, align 1
  %36 = load i64, i64* %4, align 8
  %37 = and i64 %36, 65535
  %38 = call zeroext i8 @LSB_of(i64 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 9
  store i8 %38, i8* %40, align 1
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sddr09_send_scsi_command(%struct.us_data* %41, i8* %42, i32 12)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load %struct.us_data*, %struct.us_data** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @usb_stor_dbg(%struct.us_data* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %2
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local zeroext i8 @MSB_of(i64) #1

declare dso_local zeroext i8 @LSB_of(i64) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
