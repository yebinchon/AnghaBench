; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_ms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_option_ms.c_option_ms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Option MS: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"option_ms_init called\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"vendor is not Option or not determinable, no action taken\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"this is a genuine Option device, proceeding\00", align 1
@option_zero_cd = common dso_local global i64 0, align 8
@ZCD_FORCE_MODEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Forcing Modem Mode\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to switch to modem mode\00", align 1
@EIO = common dso_local global i32 0, align 4
@ZCD_ALLOW_MS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"Allowing Mass Storage Mode if device requests it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_ms_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = call i32 @usb_stor_dbg(%struct.us_data* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = call i32 @option_inquiry(%struct.us_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = call i32 @usb_stor_dbg(%struct.us_data* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = call i32 @usb_stor_dbg(%struct.us_data* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @option_zero_cd, align 8
  %19 = load i64, i64* @ZCD_FORCE_MODEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.us_data*, %struct.us_data** %3, align 8
  %23 = call i32 @usb_stor_dbg(%struct.us_data* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = call i32 @option_rezero(%struct.us_data* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.us_data*, %struct.us_data** %3, align 8
  %31 = call i32 @usb_stor_dbg(%struct.us_data* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %17
  %36 = load i64, i64* @option_zero_cd, align 8
  %37 = load i64, i64* @ZCD_ALLOW_MS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = call i32 @usb_stor_dbg(%struct.us_data* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %32, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*) #1

declare dso_local i32 @option_inquiry(%struct.us_data*) #1

declare dso_local i32 @option_rezero(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
