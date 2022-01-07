; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_via_pitch_alignment_patch_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_via_pitch_alignment_patch_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IGA2 = common dso_local global i32 0, align 4
@CR66 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@CR67 = common dso_local global i32 0, align 4
@CR65 = common dso_local global i32 0, align 4
@CR13 = common dso_local global i32 0, align 4
@CR35 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @via_pitch_alignment_patch_lcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_pitch_alignment_patch_lcd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 3
  %17 = mul nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = and i64 %19, 31
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %121

22:                                               ; preds = %3
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %23, 31
  %25 = and i64 %24, -32
  %26 = lshr i64 %25, 3
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IGA2, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %90

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 8
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  store i8 %36, i8* %10, align 1
  %37 = load i32, i32* @CR66, align 4
  %38 = load i32, i32* @VIACR, align 4
  %39 = load i8, i8* %10, align 1
  %40 = call i32 @viafb_write_reg(i32 %37, i32 %38, i8 zeroext %39)
  %41 = load i32, i32* @VIACR, align 4
  %42 = load i32, i32* @CR67, align 4
  %43 = call i32 @viafb_read_reg(i32 %41, i32 %42)
  %44 = and i32 %43, 252
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %11, align 1
  %46 = load i64, i64* %12, align 8
  %47 = and i64 %46, 768
  %48 = lshr i64 %47, 8
  %49 = trunc i64 %48 to i8
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %11, align 1
  %55 = load i32, i32* @CR67, align 4
  %56 = load i32, i32* @VIACR, align 4
  %57 = load i8, i8* %11, align 1
  %58 = call i32 @viafb_write_reg(i32 %55, i32 %56, i8 zeroext %57)
  br label %59

59:                                               ; preds = %33, %30
  %60 = load i32, i32* @VIACR, align 4
  %61 = load i32, i32* @CR67, align 4
  %62 = call i32 @viafb_read_reg(i32 %60, i32 %61)
  %63 = and i32 %62, 243
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %11, align 1
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %65, 1536
  %67 = lshr i64 %66, 7
  %68 = trunc i64 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %11, align 1
  %74 = load i32, i32* @CR67, align 4
  %75 = load i32, i32* @VIACR, align 4
  %76 = load i8, i8* %11, align 1
  %77 = call i32 @viafb_write_reg(i32 %74, i32 %75, i8 zeroext %76)
  %78 = load i64, i64* %12, align 8
  %79 = lshr i64 %78, 1
  %80 = and i64 %79, 255
  %81 = trunc i64 %80 to i8
  store i8 %81, i8* %9, align 1
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %83, 2
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %9, align 1
  %86 = load i32, i32* @CR65, align 4
  %87 = load i32, i32* @VIACR, align 4
  %88 = load i8, i8* %9, align 1
  %89 = call i32 @viafb_write_reg(i32 %86, i32 %87, i8 zeroext %88)
  br label %120

90:                                               ; preds = %22
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 8
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = and i64 %94, 255
  %96 = trunc i64 %95 to i8
  store i8 %96, i8* %7, align 1
  %97 = load i32, i32* @CR13, align 4
  %98 = load i32, i32* @VIACR, align 4
  %99 = load i8, i8* %7, align 1
  %100 = call i32 @viafb_write_reg(i32 %97, i32 %98, i8 zeroext %99)
  %101 = load i32, i32* @VIACR, align 4
  %102 = load i32, i32* @CR35, align 4
  %103 = call i32 @viafb_read_reg(i32 %101, i32 %102)
  %104 = and i32 %103, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %8, align 1
  %106 = load i64, i64* %12, align 8
  %107 = and i64 %106, 1792
  %108 = lshr i64 %107, 3
  %109 = trunc i64 %108 to i8
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* %8, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %112, %110
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %8, align 1
  %115 = load i32, i32* @CR35, align 4
  %116 = load i32, i32* @VIACR, align 4
  %117 = load i8, i8* %8, align 1
  %118 = call i32 @viafb_write_reg(i32 %115, i32 %116, i8 zeroext %117)
  br label %119

119:                                              ; preds = %93, %90
  br label %120

120:                                              ; preds = %119, %59
  br label %121

121:                                              ; preds = %120, %3
  ret void
}

declare dso_local i32 @viafb_write_reg(i32, i32, i8 zeroext) #1

declare dso_local i32 @viafb_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
