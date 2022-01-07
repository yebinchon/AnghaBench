; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_get_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_get_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.sddr09_card_info = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"read_status fails\0A\00", align 1
@SDDR09_WP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" WP\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"status 0x%02X%s%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" Ready\00", align 1
@LUNBITS = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" Suspended\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.sddr09_card_info*)* @sddr09_get_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_get_wp(%struct.us_data* %0, %struct.sddr09_card_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.sddr09_card_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.sddr09_card_info* %1, %struct.sddr09_card_info** %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = call i32 @sddr09_read_status(%struct.us_data* %9, i8* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.us_data*, %struct.us_data** %4, align 8
  %15 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @SDDR09_WP, align 4
  %24 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %5, align 8
  %25 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %29

28:                                               ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.us_data*, %struct.us_data** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @LUNBITS, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %32, i8* %33, i8* %39, i8* %47, i8* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %29, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sddr09_read_status(%struct.us_data*, i8*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
