; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_set_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_set_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@CLCD_UBAS = common dso_local global i64 0, align 8
@CLCD_LBAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*)* @clcdfb_set_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdfb_set_start(%struct.clcd_fb* %0) #0 {
  %2 = alloca %struct.clcd_fb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.clcd_fb* %0, %struct.clcd_fb** %2, align 8
  %5 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %6 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %11 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %16 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %14, %19
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %25 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %31 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %29, %34
  %36 = udiv i64 %35, 2
  %37 = add i64 %23, %36
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %40 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLCD_UBAS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i64 %38, i64 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %47 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CLCD_LBAS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i64 %45, i64 %50)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
