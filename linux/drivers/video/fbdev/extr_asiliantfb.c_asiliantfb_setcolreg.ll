; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliantfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliantfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mmio_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @asiliantfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asiliantfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %104

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* @mmio_base, align 8
  %26 = add nsw i64 %25, 1936
  %27 = call i32 @writeb(i32 %24, i64 %26)
  %28 = call i32 @udelay(i32 1)
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @mmio_base, align 8
  %31 = add nsw i64 %30, 1937
  %32 = call i32 @writeb(i32 %29, i64 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* @mmio_base, align 8
  %35 = add nsw i64 %34, 1937
  %36 = call i32 @writeb(i32 %33, i64 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* @mmio_base, align 8
  %39 = add nsw i64 %38, 1937
  %40 = call i32 @writeb(i32 %37, i64 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %103

43:                                               ; preds = %17
  %44 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %102 [
    i32 10, label %49
    i32 11, label %68
    i32 16, label %87
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 248
  %52 = shl i32 %51, 7
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 248
  %55 = shl i32 %54, 2
  %56 = or i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 248
  %59 = ashr i32 %58, 3
  %60 = or i32 %56, %59
  %61 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %60, i32* %67, align 4
  br label %102

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 248
  %71 = shl i32 %70, 8
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 252
  %74 = shl i32 %73, 3
  %75 = or i32 %71, %74
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 248
  %78 = ashr i32 %77, 3
  %79 = or i32 %75, %78
  %80 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %79, i32* %86, align 4
  br label %102

87:                                               ; preds = %43
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %89, %91
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %43, %87, %68, %49
  br label %103

103:                                              ; preds = %102, %17
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %16
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
