; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.isd200_info = type { i32*, i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Entering isd200_IssueATAReadRegs\0A\00", align 1
@ACTION_READ_STATUS = common dso_local global i32 0, align 4
@ISD200_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"   Error reading ATA registers\0A\00", align 1
@ISD200_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"   Got ATA Register[ATA_REG_ERROR_OFFSET] = 0x%x\0A\00", align 1
@ATA_REG_ERROR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_read_regs(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.isd200_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.isd200_info*
  store %struct.isd200_info* %9, %struct.isd200_info** %3, align 8
  %10 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.us_data*, %struct.us_data** %2, align 8
  %12 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = load i32, i32* @ACTION_READ_STATUS, align 4
  %15 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %16 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @isd200_action(%struct.us_data* %13, i32 %14, i32 %17, i32 8)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ISD200_TRANSPORT_GOOD, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.us_data*, %struct.us_data** %2, align 8
  %24 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %28 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %31 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcpy(i32* %29, i32 %32, i32 8)
  %34 = load %struct.us_data*, %struct.us_data** %2, align 8
  %35 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %36 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @ATA_REG_ERROR_OFFSET, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %26, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @isd200_action(%struct.us_data*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
