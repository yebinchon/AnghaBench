; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_match_group_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_match_group_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltq_pin_group = type { i32, i32* }
%struct.ltq_pinmux_info = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"could not find mfp for pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't find mux %d on pin%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltq_pin_group*, %struct.ltq_pinmux_info*, i32)* @match_group_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_group_mux(%struct.ltq_pin_group* %0, %struct.ltq_pinmux_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltq_pin_group*, align 8
  %6 = alloca %struct.ltq_pinmux_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ltq_pin_group* %0, %struct.ltq_pin_group** %5, align 8
  store %struct.ltq_pinmux_info* %1, %struct.ltq_pinmux_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %62, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %5, align 8
  %14 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %11
  %18 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %6, align 8
  %19 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %5, align 8
  %20 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @match_mfp(%struct.ltq_pinmux_info* %18, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %6, align 8
  %31 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %5, align 8
  %34 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %67

43:                                               ; preds = %17
  %44 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %6, align 8
  %45 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @match_mux(i32* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %6, align 8
  %56 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %65

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %11

65:                                               ; preds = %54, %11
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @match_mfp(%struct.ltq_pinmux_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @match_mux(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
