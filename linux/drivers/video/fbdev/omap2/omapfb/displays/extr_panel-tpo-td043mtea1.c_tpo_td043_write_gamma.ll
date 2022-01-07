; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_write_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_write_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32*)* @tpo_td043_write_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpo_td043_write_gamma(%struct.spi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 768
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %18, 2
  %20 = ashr i32 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @tpo_td043_write(%struct.spi_device* %27, i32 17, i32 %28)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %47, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 768
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, 2
  %44 = ashr i32 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tpo_td043_write(%struct.spi_device* %51, i32 18, i32 %52)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %71, %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 768
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %66, 2
  %68 = ashr i32 %64, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @tpo_td043_write(%struct.spi_device* %75, i32 19, i32 %76)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %92, %74
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 12
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 20, %83
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 255
  %91 = call i32 @tpo_td043_write(%struct.spi_device* %82, i32 %84, i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %78

95:                                               ; preds = %78
  ret void
}

declare dso_local i32 @tpo_td043_write(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
