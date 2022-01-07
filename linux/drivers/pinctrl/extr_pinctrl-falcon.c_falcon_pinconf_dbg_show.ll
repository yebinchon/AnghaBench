; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-falcon.c_falcon_pinconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-falcon.c_falcon_pinconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.pin_desc = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c" (port %d) mux %d -- \00", align 1
@LTQ_PINCONF_PARAM_PULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pull %d \00", align 1
@LTQ_PINCONF_PARAM_DRIVE_CURRENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"drive-current %d \00", align 1
@LTQ_PINCONF_PARAM_SLEW_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"slew-rate %d \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" owner: %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" not registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @falcon_pinconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_pinconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pin_desc*, align 8
  %9 = alloca %struct.ltq_pinmux_info*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.ltq_pinmux_info* %12, %struct.ltq_pinmux_info** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PORT(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %9, align 8
  %18 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PORT_PIN(i32 %24)
  %26 = call i32 @LTQ_PADC_MUX(i32 %25)
  %27 = call i32 @pad_r32(i32 %23, i32 %26)
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %27)
  %29 = load i32, i32* @LTQ_PINCONF_PARAM_PULL, align 4
  %30 = call i64 @LTQ_PINCONF_PACK(i32 %29, i32 0)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @falcon_pinconf_get(%struct.pinctrl_dev* %31, i32 %32, i64* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @LTQ_PINCONF_UNPACK_ARG(i64 %37)
  %39 = trunc i64 %38 to i32
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %3
  %42 = load i32, i32* @LTQ_PINCONF_PARAM_DRIVE_CURRENT, align 4
  %43 = call i64 @LTQ_PINCONF_PACK(i32 %42, i32 0)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @falcon_pinconf_get(%struct.pinctrl_dev* %44, i32 %45, i64* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @LTQ_PINCONF_UNPACK_ARG(i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @LTQ_PINCONF_PARAM_SLEW_RATE, align 4
  %56 = call i64 @LTQ_PINCONF_PACK(i32 %55, i32 0)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @falcon_pinconf_get(%struct.pinctrl_dev* %57, i32 %58, i64* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @LTQ_PINCONF_UNPACK_ARG(i64 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %68, i32 %69)
  store %struct.pin_desc* %70, %struct.pin_desc** %8, align 8
  %71 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %72 = icmp ne %struct.pin_desc* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %75 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %80 = load %struct.pin_desc*, %struct.pin_desc** %8, align 8
  %81 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %73
  br label %88

85:                                               ; preds = %67
  %86 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %84
  ret void
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @PORT(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @pad_r32(i32, i32) #1

declare dso_local i32 @LTQ_PADC_MUX(i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i64 @LTQ_PINCONF_PACK(i32, i32) #1

declare dso_local i32 @falcon_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i64 @LTQ_PINCONF_UNPACK_ARG(i64) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
