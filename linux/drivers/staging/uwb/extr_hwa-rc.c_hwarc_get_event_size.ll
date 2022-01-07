; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_hwa-rc.c_hwarc_get_event_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_hwa-rc.c_hwarc_get_event_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i32, i32, i32 }

@ENOSPC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"Not enough data to read extra size of event 0x%02x/%04x/%02x, only got %zu bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uwb_rc*, %struct.uwb_rceb*, i64, i64, i64)* @hwarc_get_event_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hwarc_get_event_size(%struct.uwb_rc* %0, %struct.uwb_rceb* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rceb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* @ENOSPC, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %18 = bitcast %struct.uwb_rceb* %17 to i8*
  store i8* %18, i8** %12, align 8
  store i64 4, i64* %13, align 8
  %19 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %20 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %10, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = load %struct.device*, %struct.device** %14, align 8
  %29 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %30 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %33 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %37 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %35, i32 %38, i64 %39)
  br label %51

41:                                               ; preds = %5
  %42 = load i64, i64* %9, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr i8, i8* %43, i64 %42
  store i8* %44, i8** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = add i64 %45, %49
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %41, %27
  %52 = load i64, i64* %11, align 8
  ret i64 %52
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
