; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_match_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_match_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.platform_zone = type { i32, i64 }
%struct.device_attribute = type { i32 }

@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@zone_data = common dso_local global %struct.platform_zone* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"alienware-wmi: matched zone location: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_zone* (%struct.device_attribute*)* @match_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_zone* @match_zone(%struct.device_attribute* %0) #0 {
  %2 = alloca %struct.platform_zone*, align 8
  %3 = alloca %struct.device_attribute*, align 8
  %4 = alloca i64, align 8
  store %struct.device_attribute* %0, %struct.device_attribute** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.platform_zone*, %struct.platform_zone** @zone_data, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %12, i64 %13
  %15 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.device_attribute*
  %18 = load %struct.device_attribute*, %struct.device_attribute** %3, align 8
  %19 = icmp eq %struct.device_attribute* %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.platform_zone*, %struct.platform_zone** @zone_data, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %21, i64 %22
  %24 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.platform_zone*, %struct.platform_zone** @zone_data, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.platform_zone, %struct.platform_zone* %27, i64 %28
  store %struct.platform_zone* %29, %struct.platform_zone** %2, align 8
  br label %35

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %5

34:                                               ; preds = %5
  store %struct.platform_zone* null, %struct.platform_zone** %2, align 8
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.platform_zone*, %struct.platform_zone** %2, align 8
  ret %struct.platform_zone* %36
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
