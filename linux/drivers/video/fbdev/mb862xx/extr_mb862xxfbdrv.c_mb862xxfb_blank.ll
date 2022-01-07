; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.mb862xxfb_par* }
%struct.mb862xxfb_par = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"blank mode=%d\0A\00", align 1
@disp = common dso_local global i32 0, align 4
@GC_DCM1 = common dso_local global i32 0, align 4
@GC_DCM01_DEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @mb862xxfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xxfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.mb862xxfb_par*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %9, align 8
  store %struct.mb862xxfb_par* %10, %struct.mb862xxfb_par** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %41 [
    i32 130, label %17
    i32 129, label %29
    i32 131, label %40
    i32 128, label %40
    i32 132, label %40
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @disp, align 4
  %19 = load i32, i32* @GC_DCM1, align 4
  %20 = call i64 @inreg(i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @GC_DCM01_DEN, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @disp, align 4
  %26 = load i32, i32* @GC_DCM1, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @outreg(i32 %25, i32 %26, i64 %27)
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @disp, align 4
  %31 = load i32, i32* @GC_DCM1, align 4
  %32 = call i64 @inreg(i32 %30, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* @GC_DCM01_DEN, align 8
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* @disp, align 4
  %37 = load i32, i32* @GC_DCM1, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @outreg(i32 %36, i32 %37, i64 %38)
  br label %42

40:                                               ; preds = %2, %2, %2
  br label %41

41:                                               ; preds = %2, %40
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %29, %17
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @inreg(i32, i32) #1

declare dso_local i32 @outreg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
