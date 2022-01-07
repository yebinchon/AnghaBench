; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1289.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1289.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %17 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpiod_set_value(i64 %19, i32 0)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 0, i32 1)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 3, i32 43172)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %26, i32 12, i32 0)
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %28, i32 13, i32 2060)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %30, i32 14, i32 11008)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %32, i32 30, i32 183)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = call i32 @BIT(i32 13)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 11
  %40 = or i32 %35, %39
  %41 = call i32 @BIT(i32 9)
  %42 = or i32 %40, %41
  %43 = load i32, i32* @HEIGHT, align 4
  %44 = sub nsw i32 %43, 1
  %45 = or i32 %42, %44
  %46 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %34, i32 1, i32 %45)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %47, i32 2, i32 1536)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %49, i32 16, i32 0)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %51, i32 5, i32 0)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %53, i32 6, i32 0)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %55, i32 22, i32 61212)
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %58 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %57, i32 23, i32 3)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %60 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %59, i32 7, i32 563)
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %62 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %61, i32 11, i32 0)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %63, i32 15, i32 0)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %65, i32 65, i32 0)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %68 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %67, i32 66, i32 0)
  %69 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %70 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %69, i32 72, i32 0)
  %71 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %72 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %71, i32 73, i32 319)
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %74 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %73, i32 74, i32 0)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %75, i32 75, i32 0)
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %78 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %77, i32 68, i32 61184)
  %79 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %80 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %79, i32 69, i32 0)
  %81 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %82 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %81, i32 70, i32 319)
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %84 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %83, i32 35, i32 0)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %86 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %85, i32 36, i32 0)
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %88 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %87, i32 37, i32 32768)
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %90 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %89, i32 79, i32 0)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %91, i32 78, i32 0)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %94 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %93, i32 34)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
