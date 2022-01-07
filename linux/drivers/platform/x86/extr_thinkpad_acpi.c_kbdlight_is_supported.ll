; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_kbdlight_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_kbdlight_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MLCG\00", align 1
@TPACPI_DBG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"kbdlight MLCG is unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"qdd\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"kbdlight MLCG failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"kbdlight MLCG err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"kbdlight MLCG returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kbdlight_is_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbdlight_is_supported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @hkey_handle, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @hkey_handle, align 4
  %8 = call i32 @acpi_has_method(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %12 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

13:                                               ; preds = %6
  %14 = load i32, i32* @hkey_handle, align 4
  %15 = call i32 @acpi_evalf(i32 %14, i32* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %19 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  store i32 0, i32* %1, align 4
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @BIT(i32 9)
  %33 = and i32 %31, %32
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %27, %23, %17, %10, %5
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @vdbg_printk(i32, i8*, ...) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
