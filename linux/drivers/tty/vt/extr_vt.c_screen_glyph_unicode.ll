; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_screen_glyph_unicode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_screen_glyph_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.uni_screen = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @screen_glyph_unicode(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_screen*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %8 = call %struct.uni_screen* @get_vc_uniscr(%struct.vc_data* %7)
  store %struct.uni_screen* %8, %struct.uni_screen** %6, align 8
  %9 = load %struct.uni_screen*, %struct.uni_screen** %6, align 8
  %10 = icmp ne %struct.uni_screen* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.uni_screen*, %struct.uni_screen** %6, align 8
  %13 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %14, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i32 @screen_glyph(%struct.vc_data* %33, i32 %35)
  %37 = call i32 @inverse_translate(%struct.vc_data* %32, i32 %36, i32 1)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.uni_screen* @get_vc_uniscr(%struct.vc_data*) #1

declare dso_local i32 @inverse_translate(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @screen_glyph(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
