; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hdaps.c___hdaps_read_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hdaps.c___hdaps_read_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@HDAPS_PORT_KMACT = common dso_local global i32 0, align 4
@km_activity = common dso_local global i32 0, align 4
@hdaps_invert = common dso_local global i32 0, align 4
@HDAPS_X_AXIS = common dso_local global i32 0, align 4
@HDAPS_Y_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @__hdaps_read_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hdaps_read_pair(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = call i64 (...) @__device_refresh_sync()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %45

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @inw(i32 %16)
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @inw(i32 %19)
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HDAPS_PORT_KMACT, align 4
  %23 = call i32 @inb(i32 %22)
  store i32 %23, i32* @km_activity, align 4
  %24 = call i32 (...) @__device_complete()
  %25 = load i32, i32* @hdaps_invert, align 4
  %26 = load i32, i32* @HDAPS_X_AXIS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 0, %31
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %15
  %35 = load i32, i32* @hdaps_invert, align 4
  %36 = load i32, i32* @HDAPS_Y_AXIS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @__device_refresh_sync(...) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @__device_complete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
