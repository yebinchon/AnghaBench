; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_arm-versatile-reboot.c_versatile_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_arm-versatile-reboot.c_versatile_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@versatile_reboot_type = common dso_local global i32 0, align 4
@syscon_regmap = common dso_local global i32 0, align 4
@INTEGRATOR_HDR_LOCK_OFFSET = common dso_local global i32 0, align 4
@VERSATILE_LOCK_VAL = common dso_local global i32 0, align 4
@INTEGRATOR_HDR_CTRL_OFFSET = common dso_local global i32 0, align 4
@INTEGRATOR_CM_CTRL_RESET = common dso_local global i32 0, align 4
@VERSATILE_SYS_LOCK_OFFSET = common dso_local global i32 0, align 4
@VERSATILE_SYS_RESETCTL_OFFSET = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @versatile_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_reboot(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @versatile_reboot_type, align 4
  switch i32 %7, label %67 [
    i32 134, label %8
    i32 128, label %18
    i32 133, label %29
    i32 132, label %37
    i32 131, label %45
    i32 130, label %45
    i32 129, label %56
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @syscon_regmap, align 4
  %10 = load i32, i32* @INTEGRATOR_HDR_LOCK_OFFSET, align 4
  %11 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %12 = call i32 @regmap_write(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @syscon_regmap, align 4
  %14 = load i32, i32* @INTEGRATOR_HDR_CTRL_OFFSET, align 4
  %15 = load i32, i32* @INTEGRATOR_CM_CTRL_RESET, align 4
  %16 = load i32, i32* @INTEGRATOR_CM_CTRL_RESET, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  br label %67

18:                                               ; preds = %3
  %19 = load i32, i32* @syscon_regmap, align 4
  %20 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %21 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @syscon_regmap, align 4
  %24 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 263, i32 261)
  %26 = load i32, i32* @syscon_regmap, align 4
  %27 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 0)
  br label %67

29:                                               ; preds = %3
  %30 = load i32, i32* @syscon_regmap, align 4
  %31 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %32 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %33 = call i32 @regmap_write(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @syscon_regmap, align 4
  %35 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %36 = call i32 @regmap_write(i32 %34, i32 %35, i32 8)
  br label %67

37:                                               ; preds = %3
  %38 = load i32, i32* @syscon_regmap, align 4
  %39 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %40 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @syscon_regmap, align 4
  %43 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 256)
  br label %67

45:                                               ; preds = %3, %3
  %46 = load i32, i32* @syscon_regmap, align 4
  %47 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %48 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %49 = call i32 @regmap_write(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @syscon_regmap, align 4
  %51 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 0)
  %53 = load i32, i32* @syscon_regmap, align 4
  %54 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 4)
  br label %67

56:                                               ; preds = %3
  %57 = load i32, i32* @syscon_regmap, align 4
  %58 = load i32, i32* @VERSATILE_SYS_LOCK_OFFSET, align 4
  %59 = load i32, i32* @VERSATILE_LOCK_VAL, align 4
  %60 = call i32 @regmap_write(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @syscon_regmap, align 4
  %62 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 240)
  %64 = load i32, i32* @syscon_regmap, align 4
  %65 = load i32, i32* @VERSATILE_SYS_RESETCTL_OFFSET, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 244)
  br label %67

67:                                               ; preds = %3, %56, %45, %37, %29, %18, %8
  %68 = call i32 (...) @dsb()
  %69 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %69
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
