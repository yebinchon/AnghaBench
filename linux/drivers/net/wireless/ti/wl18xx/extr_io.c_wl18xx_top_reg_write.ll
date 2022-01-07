; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_io.c_wl18xx_top_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_io.c_wl18xx_top_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_top_reg_write(%struct.wl1271* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = srem i32 %10, 2
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = srem i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @wlcore_read32(%struct.wl1271* %22, i32 %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %57

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, -65536
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @wlcore_write32(%struct.wl1271* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %56

37:                                               ; preds = %17
  %38 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 2
  %41 = call i32 @wlcore_read32(%struct.wl1271* %38, i32 %40, i32* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %57

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 65535
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 2
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @wlcore_write32(%struct.wl1271* %51, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %45, %28
  br label %57

57:                                               ; preds = %56, %44, %27
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wlcore_read32(%struct.wl1271*, i32, i32*) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
