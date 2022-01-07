; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_parse_led_sources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_parse_led_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }

@LM3630A_NUM_SINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"led-sources\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LM3630A_SINK_0 = common dso_local global i64 0, align 8
@LM3630A_SINK_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i32)* @lm3630a_parse_led_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_parse_led_sources(%struct.fwnode_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @LM3630A_NUM_SINKS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %17 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ARRAY_SIZE(i64* %15)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %73

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %15, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %73

38:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %15, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LM3630A_SINK_0, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %15, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LM3630A_SINK_1, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %73

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %15, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @BIT(i64 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %57, %36, %26, %20
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fwnode_property_count_u32(%struct.fwnode_handle*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i64*, i32) #2

declare dso_local i32 @BIT(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
