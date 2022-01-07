; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_ASIE_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_ASIE_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.uwb_ie_hdr = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UWB_APP_SPEC_IE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ASIE_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASIE_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca %struct.uwb_ie_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %13)
  store %struct.uwb_dev* %14, %struct.uwb_dev** %7, align 8
  %15 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %16 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %15, i32 0, i32 0
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %16, align 8
  store %struct.uwb_rc* %17, %struct.uwb_rc** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @scnprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %12, align 4
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %30 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @le16_to_cpu(i32 %33)
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %55, %3
  %36 = call %struct.uwb_ie_hdr* @uwb_ie_next(i8** %10, i64* %11)
  store %struct.uwb_ie_hdr* %36, %struct.uwb_ie_hdr** %9, align 8
  %37 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %38 = icmp ne %struct.uwb_ie_hdr* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %56

40:                                               ; preds = %35
  %41 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UWB_APP_SPEC_IE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %48 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 16
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i32 @uwb_ie_dump_hex(%struct.uwb_ie_hdr* %47, i64 %51, i8* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %56

55:                                               ; preds = %40
  br label %35

56:                                               ; preds = %46, %39
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %58 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8**, i64*) #1

declare dso_local i32 @uwb_ie_dump_hex(%struct.uwb_ie_hdr*, i64, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
