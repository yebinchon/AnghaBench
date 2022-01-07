; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.vt8500lcd_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vt8500lcd_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500lcd_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.vt8500lcd_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = call %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info* %18)
  store %struct.vt8500lcd_info* %19, %struct.vt8500lcd_info** %14, align 8
  store i32 1, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp uge i32 %20, 256
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %106

25:                                               ; preds = %6
  %26 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = mul i32 19595, %32
  %34 = load i32, i32* %10, align 4
  %35 = mul i32 38470, %34
  %36 = add i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = mul i32 7471, %37
  %39 = add i32 %36, %38
  %40 = lshr i32 %39, 16
  store i32 %40, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %43 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %104 [
    i32 128, label %47
    i32 129, label %83
    i32 130, label %83
  ]

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %48, 16
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %52 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %17, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %57 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = call i32 @chan_to_field(i32 %55, i32* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %63 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @chan_to_field(i32 %61, i32* %65)
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %71 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @chan_to_field(i32 %69, i32* %73)
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %50, %47
  br label %104

83:                                               ; preds = %41, %41
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 63488
  %86 = load i32, i32* %10, align 4
  %87 = lshr i32 %86, 5
  %88 = and i32 %87, 2016
  %89 = or i32 %85, %88
  %90 = load i32, i32* %11, align 4
  %91 = lshr i32 %90, 11
  %92 = and i32 %91, 31
  %93 = or i32 %89, %92
  %94 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %14, align 8
  %95 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = add i64 %97, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @writew(i32 %93, i32 %102)
  br label %104

104:                                              ; preds = %41, %83, %82
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %22
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info*) #1

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
