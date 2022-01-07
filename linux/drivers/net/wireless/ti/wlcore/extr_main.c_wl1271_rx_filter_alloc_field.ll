; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_rx_filter_alloc_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_rx_filter_alloc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl12xx_rx_filter = type { i64, %struct.wl12xx_rx_filter_field* }
%struct.wl12xx_rx_filter_field = type { i32, i8*, i8*, i32 }

@WL1271_RX_FILTER_MAX_FIELDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Max fields per RX filter. can't alloc another\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate RX filter pattern\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_rx_filter_alloc_field(%struct.wl12xx_rx_filter* %0, i32 %1, i8* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl12xx_rx_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wl12xx_rx_filter_field*, align 8
  store %struct.wl12xx_rx_filter* %0, %struct.wl12xx_rx_filter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %7, align 8
  %14 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL1271_RX_FILTER_MAX_FIELDS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = call i32 @wl1271_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %64

22:                                               ; preds = %5
  %23 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %7, align 8
  %24 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %23, i32 0, i32 1
  %25 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %24, align 8
  %26 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %7, align 8
  %27 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %25, i64 %28
  store %struct.wl12xx_rx_filter_field* %29, %struct.wl12xx_rx_filter_field** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @kzalloc(i8* %30, i32 %31)
  %33 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %34 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %36 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = call i32 @wl1271_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %64

43:                                               ; preds = %22
  %44 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %7, align 8
  %45 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %51 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %54 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %57 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wl12xx_rx_filter_field*, %struct.wl12xx_rx_filter_field** %12, align 8
  %59 = getelementptr inbounds %struct.wl12xx_rx_filter_field, %struct.wl12xx_rx_filter_field* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8**, i8*** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @memcpy(i32 %60, i8** %61, i8* %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %43, %39, %18
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @kzalloc(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
