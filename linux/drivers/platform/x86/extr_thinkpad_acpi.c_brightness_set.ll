; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bright_maxlvl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPACPI_DBG_BRGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set backlight level to %d\0A\00", align 1
@brightness_mutex = common dso_local global i32 0, align 4
@brightness_mode = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brightness_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @bright_maxlvl, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i32, i32* @TPACPI_DBG_BRGHT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @vdbg_printk(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @mutex_lock_killable(i32* @brightness_mutex)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %11
  %21 = load i32, i32* @brightness_mode, align 4
  switch i32 %21, label %28 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @tpacpi_brightness_set_ec(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @tpacpi_brightness_set_ucmsstep(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = call i32 @mutex_unlock(i32* @brightness_mutex)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %18, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @vdbg_printk(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @tpacpi_brightness_set_ec(i32) #1

declare dso_local i32 @tpacpi_brightness_set_ucmsstep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
