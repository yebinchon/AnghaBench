; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__dsi_register_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c__dsi_register_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_isr_data = type { i8*, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, %struct.dsi_isr_data*, i32)* @_dsi_register_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dsi_register_isr(i32* %0, i8* %1, i64 %2, %struct.dsi_isr_data* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dsi_isr_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_isr_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.dsi_isr_data* %3, %struct.dsi_isr_data** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %59, %5
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %10, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %24, i64 %26
  store %struct.dsi_isr_data* %27, %struct.dsi_isr_data** %12, align 8
  %28 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %29 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %35 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %41 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %82

48:                                               ; preds = %39, %33, %23
  %49 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %50 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %53, %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %19

62:                                               ; preds = %19
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %82

68:                                               ; preds = %62
  %69 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %69, i64 %71
  store %struct.dsi_isr_data* %72, %struct.dsi_isr_data** %12, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %75 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %78 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.dsi_isr_data*, %struct.dsi_isr_data** %12, align 8
  %81 = getelementptr inbounds %struct.dsi_isr_data, %struct.dsi_isr_data* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %68, %65, %45
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
