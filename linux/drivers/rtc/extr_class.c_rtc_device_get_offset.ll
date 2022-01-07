; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_rtc_device_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_rtc_device_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"start-year\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_device*)* @rtc_device_get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_device_get_offset(%struct.rtc_device* %0) #0 {
  %2 = alloca %struct.rtc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %2, align 8
  %6 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %7 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %10 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_property_read_u32(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mktime64(i32 %23, i32 1, i32 1, i32 0, i32 0, i32 0)
  %25 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %26 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %28 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %31 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %109

35:                                               ; preds = %29
  %36 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %37 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %40 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = add nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %46 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %50 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %35
  %54 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %55 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %62 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %53, %35
  %66 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %67 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %71 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %76 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %109

77:                                               ; preds = %53
  %78 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %79 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %83 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %89 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %108

90:                                               ; preds = %77
  %91 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %92 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %96 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i32, i32* %3, align 4
  %101 = sub nsw i32 0, %100
  %102 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %103 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  br label %107

104:                                              ; preds = %90
  %105 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %106 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %105, i32 0, i32 4
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %13, %34, %108, %65
  ret void
}

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
