; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_usb_stor_sddr09_dpcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_usb_stor_sddr09_dpcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"send_command fails\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%02X %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"2nd send_command fails\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @usb_stor_sddr09_dpcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_sddr09_dpcm_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = call i32 @sddr09_common_init(%struct.us_data* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sddr09_send_command(%struct.us_data* %17, i32 1, i32 %18, i8* %19, i32 2)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %88

27:                                               ; preds = %16
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = load i32, i32* @USB_DIR_IN, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @sddr09_send_command(%struct.us_data* %38, i32 8, i32 %39, i8* %40, i32 2)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.us_data*, %struct.us_data** %3, align 8
  %46 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %88

48:                                               ; preds = %27
  %49 = load %struct.us_data*, %struct.us_data** %3, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load %struct.us_data*, %struct.us_data** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @sddr09_request_sense(%struct.us_data* %59, i8* %60, i32 18)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %48
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 18
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %71

85:                                               ; preds = %71
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %64, %48
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %44, %23, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @sddr09_common_init(%struct.us_data*) #1

declare dso_local i32 @sddr09_send_command(%struct.us_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @sddr09_request_sense(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
