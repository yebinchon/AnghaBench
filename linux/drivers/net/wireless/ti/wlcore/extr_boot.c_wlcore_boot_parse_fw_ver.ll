; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_parse_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_parse_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.wl1271_static_data = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%u.%u.%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fw version incorrect value\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl1271_static_data*)* @wlcore_boot_parse_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_boot_parse_fw_ver(%struct.wl1271* %0, %struct.wl1271_static_data* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl1271_static_data*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl1271_static_data* %1, %struct.wl1271_static_data** %4, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.wl1271_static_data*, %struct.wl1271_static_data** %4, align 8
  %11 = getelementptr inbounds %struct.wl1271_static_data, %struct.wl1271_static_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strncpy(i8* %9, i32 %12, i32 8)
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 0, i8* %18, align 1
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %28, i32* %33, i32* %38, i32* %43, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 5
  br i1 %51, label %52, label %61

52:                                               ; preds = %2
  %53 = call i32 @wl1271_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @memset(i32* %57, i32 0, i32 8)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %2
  %62 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %63 = call i32 @wlcore_identify_fw(%struct.wl1271* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %66, %52
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wlcore_identify_fw(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
