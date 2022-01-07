; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.st_pio_control = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Alt Fn %u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"[OE:%d,PU:%ld,OD:%ld]\09%s\0A\09\09[retime:%ld,invclk:%ld,clknotdat:%ld,de:%ld,rt-clk:%ld,rt-delay:%ld]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @st_pinconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_pio_control*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @st_gpio_pin(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev* %17, i32 %18)
  store %struct.st_pio_control* %19, %struct.st_pio_control** %7, align 8
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @st_pinconf_get(%struct.pinctrl_dev* %20, i32 %21, i64* %8)
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @st_pctl_get_pin_function(%struct.st_pio_control* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %38

35:                                               ; preds = %3
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %41 = call %struct.TYPE_2__* @pc_to_bank(%struct.st_pio_control* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @st_gpio_get_direction(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ST_PINCONF_UNPACK_PU(i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @ST_PINCONF_UNPACK_OD(i64 %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @ST_PINCONF_UNPACK_RT(i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @ST_PINCONF_UNPACK_RT_CLK(i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @ST_PINCONF_UNPACK_RT_DELAY(i64 %63)
  %65 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49, i32 %51, i8* %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64)
  ret void
}

declare dso_local i32 @st_gpio_pin(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @st_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_pctl_get_pin_function(%struct.st_pio_control*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @st_gpio_get_direction(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @pc_to_bank(%struct.st_pio_control*) #1

declare dso_local i32 @ST_PINCONF_UNPACK_PU(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_OD(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DELAY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
