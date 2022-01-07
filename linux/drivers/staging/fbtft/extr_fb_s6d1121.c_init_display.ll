; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_s6d1121.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %17 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpiod_set_value(i64 %19, i32 0)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 17, i32 8196)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 19, i32 52224)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %26, i32 21, i32 9728)
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %28, i32 20, i32 9514)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %30, i32 18, i32 51)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %32, i32 19, i32 52228)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %34, i32 19, i32 52230)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %36, i32 19, i32 52303)
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %39 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %38, i32 19, i32 26447)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %40, i32 17, i32 8195)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %42, i32 22, i32 7)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %44, i32 2, i32 19)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %46, i32 3, i32 3)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %49 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 1, i32 295)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %50, i32 8, i32 771)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %52, i32 10, i32 11)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %55 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %54, i32 11, i32 3)
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %56, i32 12, i32 0)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %58, i32 65, i32 0)
  %60 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %61 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %60, i32 80, i32 0)
  %62 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %63 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %62, i32 96, i32 5)
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %65 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %64, i32 112, i32 11)
  %66 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %67 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %66, i32 113, i32 0)
  %68 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %69 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %68, i32 120, i32 0)
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %71 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %70, i32 122, i32 0)
  %72 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %73 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %72, i32 121, i32 7)
  %74 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %75 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %74, i32 7, i32 81)
  %76 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %77 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %76, i32 7, i32 83)
  %78 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %79 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %78, i32 121, i32 0)
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %81 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %80, i32 34)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
