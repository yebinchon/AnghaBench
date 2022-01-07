; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@hotkey_dev_attributes = common dso_local global i64 0, align 8
@tpacpi_pdev = common dso_local global %struct.TYPE_5__* null, align 8
@TPACPI_DBG_EXIT = common dso_local global i32 0, align 4
@TPACPI_DBG_HKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"restoring original HKEY status and mask\0A\00", align 1
@tp_features = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@hotkey_orig_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to restore hot key mask to BIOS defaults\0A\00", align 1
@hotkey_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hotkey_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotkey_exit() #0 {
  %1 = load i64, i64* @hotkey_dev_attributes, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @hotkey_dev_attributes, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tpacpi_pdev, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @delete_attr_set(i64 %4, i32* %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %11 = load i32, i32* @TPACPI_DBG_HKEY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @dbg_printk(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tp_features, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @hotkey_orig_mask, align 4
  %18 = call i64 @hotkey_mask_set(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i1 [ false, %9 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @hotkey_status_set(i32 0)
  %24 = or i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @delete_attr_set(i64, i32*) #1

declare dso_local i32 @dbg_printk(i32, i8*) #1

declare dso_local i64 @hotkey_mask_set(i32) #1

declare dso_local i32 @hotkey_status_set(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
