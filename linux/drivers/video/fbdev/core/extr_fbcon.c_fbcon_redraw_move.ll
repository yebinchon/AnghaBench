; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_redraw_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_redraw_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }
%struct.fbcon_display = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fbcon_display*, i32, i32, i32)* @fbcon_redraw_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_redraw_move(%struct.vc_data* %0, %struct.fbcon_display* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca %struct.fbcon_display*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store %struct.fbcon_display* %1, %struct.fbcon_display** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  %27 = inttoptr i64 %26 to i16*
  store i16* %27, i16** %11, align 8
  br label %28

28:                                               ; preds = %103, %5
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %28
  %33 = load i16*, i16** %11, align 8
  store i16* %33, i16** %12, align 8
  %34 = load i16*, i16** %11, align 8
  %35 = call i16* @advance_row(i16* %34, i32 1)
  store i16* %35, i16** %13, align 8
  store i32 0, i32* %15, align 4
  store i16 1, i16* %16, align 2
  br label %36

36:                                               ; preds = %82, %32
  %37 = load i16*, i16** %11, align 8
  %38 = call zeroext i16 @scr_readw(i16* %37)
  store i16 %38, i16* %14, align 2
  %39 = load i16, i16* %16, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %14, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 65280
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %36
  %46 = load i16, i16* %14, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 65280
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %16, align 2
  %50 = load i16*, i16** %11, align 8
  %51 = load i16*, i16** %12, align 8
  %52 = icmp ugt i16* %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %45
  %54 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %55 = load i16*, i16** %12, align 8
  %56 = load i16*, i16** %11, align 8
  %57 = load i16*, i16** %12, align 8
  %58 = ptrtoint i16* %56 to i64
  %59 = ptrtoint i16* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @fbcon_putcs(%struct.vc_data* %54, i16* %55, i32 %62, i32 %63, i32 %64)
  %66 = load i16*, i16** %11, align 8
  %67 = load i16*, i16** %12, align 8
  %68 = ptrtoint i16* %66 to i64
  %69 = ptrtoint i16* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 2
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load i16*, i16** %11, align 8
  store i16* %76, i16** %12, align 8
  br label %77

77:                                               ; preds = %53, %45
  br label %78

78:                                               ; preds = %77, %36
  %79 = call i32 (...) @console_conditional_schedule()
  %80 = load i16*, i16** %11, align 8
  %81 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %81, i16** %11, align 8
  br label %82

82:                                               ; preds = %78
  %83 = load i16*, i16** %11, align 8
  %84 = load i16*, i16** %13, align 8
  %85 = icmp ult i16* %83, %84
  br i1 %85, label %36, label %86

86:                                               ; preds = %82
  %87 = load i16*, i16** %11, align 8
  %88 = load i16*, i16** %12, align 8
  %89 = icmp ugt i16* %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %92 = load i16*, i16** %12, align 8
  %93 = load i16*, i16** %11, align 8
  %94 = load i16*, i16** %12, align 8
  %95 = ptrtoint i16* %93 to i64
  %96 = ptrtoint i16* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 2
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @fbcon_putcs(%struct.vc_data* %91, i16* %92, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %90, %86
  %104 = call i32 (...) @console_conditional_schedule()
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %28

107:                                              ; preds = %28
  ret void
}

declare dso_local i16* @advance_row(i16*, i32) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @fbcon_putcs(%struct.vc_data*, i16*, i32, i32, i32) #1

declare dso_local i32 @console_conditional_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
