; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_calc_ramarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_calc_ramarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_16K = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@PN_RAMMAP_RAMAREA_1KB = common dso_local global i32 0, align 4
@SZ_2K = common dso_local global i32 0, align 4
@PN_RAMMAP_RAMAREA_2KB = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@PN_RAMMAP_RAMAREA_4KB = common dso_local global i32 0, align 4
@SZ_8K = common dso_local global i32 0, align 4
@PN_RAMMAP_RAMAREA_8KB = common dso_local global i32 0, align 4
@PN_RAMMAP_RAMAREA_16KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usb3_calc_ramarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_calc_ramarea(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SZ_16K, align 4
  %6 = icmp sgt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SZ_1K, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PN_RAMMAP_RAMAREA_1KB, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SZ_2K, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @PN_RAMMAP_RAMAREA_2KB, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SZ_4K, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @PN_RAMMAP_RAMAREA_4KB, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SZ_8K, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PN_RAMMAP_RAMAREA_8KB, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @PN_RAMMAP_RAMAREA_16KB, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %24, %18, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
