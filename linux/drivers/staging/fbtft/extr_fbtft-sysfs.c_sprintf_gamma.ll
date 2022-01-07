; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_sprintf_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-sysfs.c_sprintf_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%04x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fbtft_par*, i32*, i8*)* @sprintf_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sprintf_gamma(%struct.fbtft_par* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.fbtft_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %17 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %25 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %37 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %35, %39
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %34, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @scnprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 10, i8* %56, align 1
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %62 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
