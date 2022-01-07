; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_group_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_group_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.group_desc = type { i32, i64 }
%struct.imx_pin = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  %s: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @imx_pinconf_group_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_pinconf_group_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.group_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_pin*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev* %22, i32 %23)
  store %struct.group_desc* %24, %struct.group_desc** %7, align 8
  %25 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %26 = icmp ne %struct.group_desc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %64

28:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %32 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %37 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.imx_pin*
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %39, i64 %41
  store %struct.imx_pin* %42, %struct.imx_pin** %12, align 8
  %43 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %44 = load %struct.imx_pin*, %struct.imx_pin** %12, align 8
  %45 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @pin_get_name(%struct.pinctrl_dev* %43, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %49 = load %struct.imx_pin*, %struct.imx_pin** %12, align 8
  %50 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @imx_pinconf_get(%struct.pinctrl_dev* %48, i32 %51, i64* %8)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %64

56:                                               ; preds = %35
  %57 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %29

64:                                               ; preds = %18, %27, %55, %29
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.group_desc* @pinctrl_generic_get_group(%struct.pinctrl_dev*, i32) #1

declare dso_local i8* @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @imx_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
