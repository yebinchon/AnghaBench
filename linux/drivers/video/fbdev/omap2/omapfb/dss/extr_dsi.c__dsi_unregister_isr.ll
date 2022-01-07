; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__dsi_unregister_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__dsi_unregister_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_isr_data = type { i8*, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, %struct.dsi_isr_data*, i32)* @_dsi_unregister_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dsi_unregister_isr(i32* %0, i8* %1, i64 %2, %struct.dsi_isr_data* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dsi_isr_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_isr_data*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.dsi_isr_data* %3, %struct.dsi_isr_data** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %48, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %10, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %19, i64 %21
  store %struct.dsi_isr_data* %22, %struct.dsi_isr_data** %12, align 8
  %23 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %24 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %18
  %29 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %30 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %36 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28, %18
  br label %48

41:                                               ; preds = %34
  %42 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %43 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %45 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %44, i32 0, i32 0
  store i8* null, i8** %45, align 8
  %46 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %47 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  store i32 0, i32* %6, align 4
  br label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
