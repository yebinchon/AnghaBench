; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_static_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_static_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32 }
%struct.wl1271_static_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_boot_static_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_boot_static_data(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl1271_static_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 4, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl1271_static_data* @kmalloc(i64 %11, i32 %12)
  store %struct.wl1271_static_data* %13, %struct.wl1271_static_data** %3, align 8
  %14 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %3, align 8
  %15 = icmp ne %struct.wl1271_static_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @wlcore_read(%struct.wl1271* %20, i32 %23, %struct.wl1271_static_data* %24, i64 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %51

30:                                               ; preds = %19
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %3, align 8
  %33 = call i32 @wlcore_boot_parse_fw_ver(%struct.wl1271* %31, %struct.wl1271_static_data* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %51

37:                                               ; preds = %30
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = call i32 @wlcore_validate_fw_ver(%struct.wl1271* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %3, align 8
  %46 = call i32 @wlcore_handle_static_data(%struct.wl1271* %44, %struct.wl1271_static_data* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49, %42, %36, %29
  %52 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %3, align 8
  %53 = call i32 @kfree(%struct.wl1271_static_data* %52)
  br label %54

54:                                               ; preds = %51, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.wl1271_static_data* @kmalloc(i64, i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, %struct.wl1271_static_data*, i64, i32) #1

declare dso_local i32 @wlcore_boot_parse_fw_ver(%struct.wl1271*, %struct.wl1271_static_data*) #1

declare dso_local i32 @wlcore_validate_fw_ver(%struct.wl1271*) #1

declare dso_local i32 @wlcore_handle_static_data(%struct.wl1271*, %struct.wl1271_static_data*) #1

declare dso_local i32 @kfree(%struct.wl1271_static_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
