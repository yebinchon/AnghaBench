; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinconf_group_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.sprd_pinctrl = type { %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.sprd_pin_group* }
%struct.sprd_pin_group = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"%s: 0x%lx \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @sprd_pinconf_group_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_pinconf_group_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sprd_pinctrl*, align 8
  %8 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %9 = alloca %struct.sprd_pin_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %16 = call %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.sprd_pinctrl* %16, %struct.sprd_pinctrl** %7, align 8
  %17 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %7, align 8
  %18 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %18, align 8
  store %struct.sprd_pinctrl_soc_info* %19, %struct.sprd_pinctrl_soc_info** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %22 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %28 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %27, i32 0, i32 1
  %29 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %29, i64 %31
  store %struct.sprd_pin_group* %32, %struct.sprd_pin_group** %9, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = call i32 @seq_putc(%struct.seq_file* %33, i8 signext 10)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %63, %26
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %9, align 8
  %38 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %9, align 8
  %43 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i8* @pin_get_name(%struct.pinctrl_dev* %49, i32 %50)
  store i8* %51, i8** %11, align 8
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @sprd_pinconf_get_config(%struct.pinctrl_dev* %52, i32 %53, i64* %10)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %68

58:                                               ; preds = %41
  %59 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %35

68:                                               ; preds = %25, %57, %35
  ret void
}

declare dso_local %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i8* @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @sprd_pinconf_get_config(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
