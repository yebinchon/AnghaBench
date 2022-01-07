; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_zone_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_zone_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_zone = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"alienware-wmi: invalid target zone\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zone_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zone_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.platform_zone*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %13 = call %struct.platform_zone* @match_zone(%struct.device_attribute* %12)
  store %struct.platform_zone* %13, %struct.platform_zone** %10, align 8
  %14 = load %struct.platform_zone*, %struct.platform_zone** %10, align 8
  %15 = icmp eq %struct.platform_zone* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.platform_zone*, %struct.platform_zone** %10, align 8
  %21 = call i32 @parse_rgb(i8* %19, %struct.platform_zone* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.platform_zone*, %struct.platform_zone** %10, align 8
  %28 = call i32 @alienware_update_led(%struct.platform_zone* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  br label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %24, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.platform_zone* @match_zone(%struct.device_attribute*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @parse_rgb(i8*, %struct.platform_zone*) #1

declare dso_local i32 @alienware_update_led(%struct.platform_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
