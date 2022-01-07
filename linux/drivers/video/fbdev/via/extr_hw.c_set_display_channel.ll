; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_set_display_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_set_display_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@viafb_LCD2_ON = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@CRD2 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i64 0, align 8
@viafb_LCD_ON = common dso_local global i64 0, align 8
@viafb_DVI_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_display_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_display_channel() #0 {
  %1 = load i64, i64* @viafb_LCD2_ON, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* @CRD2, align 4
  %12 = load i32, i32* @VIACR, align 4
  %13 = load i64, i64* @BIT4, align 8
  %14 = load i64, i64* @BIT5, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @viafb_write_reg_mask(i32 %11, i32 %12, i32 32, i64 %15)
  br label %68

17:                                               ; preds = %3, %0
  %18 = load i64, i64* @viafb_LCD_ON, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64, i64* @viafb_DVI_ON, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @CRD2, align 4
  %25 = load i32, i32* @VIACR, align 4
  %26 = load i64, i64* @BIT4, align 8
  %27 = load i64, i64* @BIT5, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @viafb_write_reg_mask(i32 %24, i32 %25, i32 16, i64 %28)
  br label %67

30:                                               ; preds = %20, %17
  %31 = load i64, i64* @viafb_DVI_ON, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @CRD2, align 4
  %35 = load i32, i32* @VIACR, align 4
  %36 = load i64, i64* @BIT4, align 8
  %37 = load i64, i64* @BIT5, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @viafb_write_reg_mask(i32 %34, i32 %35, i32 48, i64 %38)
  br label %66

40:                                               ; preds = %30
  %41 = load i64, i64* @viafb_LCD_ON, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @CRD2, align 4
  %52 = load i32, i32* @VIACR, align 4
  %53 = load i64, i64* @BIT4, align 8
  %54 = load i64, i64* @BIT5, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @viafb_write_reg_mask(i32 %51, i32 %52, i32 32, i64 %55)
  br label %64

57:                                               ; preds = %43
  %58 = load i32, i32* @CRD2, align 4
  %59 = load i32, i32* @VIACR, align 4
  %60 = load i64, i64* @BIT4, align 8
  %61 = load i64, i64* @BIT5, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @viafb_write_reg_mask(i32 %58, i32 %59, i32 0, i64 %62)
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %10
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
