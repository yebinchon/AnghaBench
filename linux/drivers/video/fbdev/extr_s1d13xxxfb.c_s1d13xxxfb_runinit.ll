; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_runinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_runinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1d13xxxfb_par = type { i32 }
%struct.s1d13xxxfb_regval = type { i64, i64 }

@S1DREG_DELAYOFF = common dso_local global i64 0, align 8
@S1DREG_DELAYON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_regval*, i32)* @s1d13xxxfb_runinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s1d13xxxfb_runinit(%struct.s1d13xxxfb_par* %0, %struct.s1d13xxxfb_regval* %1, i32 %2) #0 {
  %4 = alloca %struct.s1d13xxxfb_par*, align 8
  %5 = alloca %struct.s1d13xxxfb_regval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s1d13xxxfb_par* %0, %struct.s1d13xxxfb_par** %4, align 8
  store %struct.s1d13xxxfb_regval* %1, %struct.s1d13xxxfb_regval** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %55, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.s1d13xxxfb_regval*, %struct.s1d13xxxfb_regval** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %13, i64 %15
  %17 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @S1DREG_DELAYOFF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = load %struct.s1d13xxxfb_regval*, %struct.s1d13xxxfb_regval** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %22, i64 %24
  %26 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @S1DREG_DELAYON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21, %12
  %31 = load %struct.s1d13xxxfb_regval*, %struct.s1d13xxxfb_regval** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %31, i64 %33
  %35 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @mdelay(i32 %37)
  br label %54

39:                                               ; preds = %21
  %40 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %41 = load %struct.s1d13xxxfb_regval*, %struct.s1d13xxxfb_regval** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %41, i64 %43
  %45 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.s1d13xxxfb_regval*, %struct.s1d13xxxfb_regval** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %47, i64 %49
  %51 = getelementptr inbounds %struct.s1d13xxxfb_regval, %struct.s1d13xxxfb_regval* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %40, i64 %46, i64 %52)
  br label %54

54:                                               ; preds = %39, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %8

58:                                               ; preds = %8
  %59 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
