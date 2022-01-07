; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_is_status_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_is_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"DWC OTG HCD HUB STATUS DATA: Root port status changed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  port_connect_status_change: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"  port_reset_change: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  port_enable_change: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  port_suspend_change: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"  port_over_current_change: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, i32)* @dwc2_hcd_is_status_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hcd_is_status_changed(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %104

12:                                               ; preds = %2
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %19
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %33, %26, %19, %12
  %48 = phi i1 [ true, %33 ], [ true, %26 ], [ true, %19 ], [ true, %12 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %102

52:                                               ; preds = %47
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %85 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %88 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  %93 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %97 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %52, %47
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %9
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
