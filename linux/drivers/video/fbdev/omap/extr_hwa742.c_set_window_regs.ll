; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_set_window_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_set_window_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32)* }

@hwa742 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HWA742_WINDOW_X_START_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @set_window_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_window_regs(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = call i32 %37(i32 8)
  %39 = load i32, i32* @HWA742_WINDOW_X_START_0, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (i32*, i32)*, i32 (i32*, i32)** %41, align 8
  %43 = call i32 %42(i32* %10, i32 1)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32)*, i32 (i32*, i32)** %45, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %48 = call i32 %46(i32* %47, i32 8)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
