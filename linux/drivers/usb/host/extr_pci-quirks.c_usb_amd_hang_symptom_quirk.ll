; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_hang_symptom_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_hang_symptom_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@amd_chipset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AMD_CHIPSET_SB600 = common dso_local global i64 0, align 8
@AMD_CHIPSET_SB700 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_amd_hang_symptom_quirk() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @usb_amd_find_chipset_info()
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0, i32 0), align 8
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0, i32 1), align 8
  %5 = load i64, i64* @AMD_CHIPSET_SB600, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0, i32 1), align 8
  %9 = load i64, i64* @AMD_CHIPSET_SB700, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %12, 58
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = icmp sle i32 %15, 59
  br label %17

17:                                               ; preds = %14, %11, %7
  %18 = phi i1 [ false, %11 ], [ false, %7 ], [ %16, %14 ]
  br label %19

19:                                               ; preds = %17, %0
  %20 = phi i1 [ true, %0 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @usb_amd_find_chipset_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
