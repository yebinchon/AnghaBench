; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_bl_set_intensity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_bl_set_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32, i32, i32 (...)*, i32, i32 }

@DUTYCTRL_ADRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_lcd*, i32)* @corgi_bl_set_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_bl_set_intensity(%struct.corgi_lcd* %0, i32 %1) #0 {
  %3 = alloca %struct.corgi_lcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 16
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %13 = load i32, i32* @DUTYCTRL_ADRS, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %23 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %27 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @gpio_is_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %11
  %32 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %33 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @gpio_set_value_cansleep(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %11
  %38 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %39 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @gpio_is_valid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %45 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @gpio_set_value_cansleep(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %51 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %50, i32 0, i32 2
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = icmp ne i32 (...)* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %56 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %55, i32 0, i32 2
  %57 = load i32 (...)*, i32 (...)** %56, align 8
  %58 = call i32 (...) %57()
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.corgi_lcd*, %struct.corgi_lcd** %3, align 8
  %62 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret i32 0
}

declare dso_local i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd*, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
