; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1351.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1351.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.fbtft_par.0*)*, i32 }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FBTFT_ONBOARD_BACKLIGHT = common dso_local global i64 0, align 8
@register_onboard_backlight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %9 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FBTFT_ONBOARD_BACKLIGHT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load i32, i32* @register_onboard_backlight, align 4
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  br label %21

21:                                               ; preds = %16, %7, %1
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %24, align 8
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = bitcast %struct.fbtft_par* %26 to %struct.fbtft_par.0*
  %28 = call i32 %25(%struct.fbtft_par.0* %27)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %29, i32 253, i32 18)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %31, i32 253, i32 177)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %33, i32 174)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %35, i32 179, i32 241)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %37, i32 202, i32 127)
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %39, i32 21, i32 0, i32 127)
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %42 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %41, i32 117, i32 0, i32 127)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %44 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %43, i32 161, i32 0)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %45, i32 162, i32 0)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %47, i32 181, i32 0)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %49, i32 171, i32 1)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %51, i32 177, i32 50)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %53, i32 180, i32 160, i32 181, i32 85)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %55, i32 187, i32 23)
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %58 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %57, i32 190, i32 5)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %60 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %59, i32 193, i32 200, i32 128, i32 200)
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %62 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %61, i32 199, i32 15)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %63, i32 182, i32 1)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %65, i32 166)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %68 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %67, i32 175)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
