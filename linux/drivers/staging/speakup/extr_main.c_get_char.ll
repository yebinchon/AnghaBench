; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32*, i32*)* @get_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_char(%struct.vc_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 32, i32* %7, align 4
  %10 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %11 = icmp ne %struct.vc_data* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = ptrtoint i32* %17 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32* @screen_pos(%struct.vc_data* %16, i32 %26, i32 1)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @scr_readw(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %15
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, 256
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %15
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @inverse_translate(%struct.vc_data* %48, i32 %49, i32 1)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 65280
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %12, %3
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32* @screen_pos(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @inverse_translate(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
