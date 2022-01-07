; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_upd161704.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_upd161704.c_init_display.c"
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
  %23 = call i32 @write_reg(%struct.fbtft_par* %22, i32 3, i32 1)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 @write_reg(%struct.fbtft_par* %24, i32 58, i32 1)
  %26 = call i32 @udelay(i32 100)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = call i32 @write_reg(%struct.fbtft_par* %27, i32 36, i32 123)
  %29 = call i32 @udelay(i32 10)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = call i32 @write_reg(%struct.fbtft_par* %30, i32 37, i32 59)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = call i32 @write_reg(%struct.fbtft_par* %32, i32 38, i32 52)
  %34 = call i32 @udelay(i32 10)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 @write_reg(%struct.fbtft_par* %35, i32 39, i32 4)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 @write_reg(%struct.fbtft_par* %37, i32 82, i32 37)
  %39 = call i32 @udelay(i32 10)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 @write_reg(%struct.fbtft_par* %40, i32 83, i32 51)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = call i32 @write_reg(%struct.fbtft_par* %42, i32 97, i32 28)
  %44 = call i32 @udelay(i32 10)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 @write_reg(%struct.fbtft_par* %45, i32 98, i32 44)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 99, i32 34)
  %49 = call i32 @udelay(i32 10)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = call i32 @write_reg(%struct.fbtft_par* %50, i32 100, i32 39)
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 @write_reg(%struct.fbtft_par* %53, i32 101, i32 20)
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = call i32 @write_reg(%struct.fbtft_par* %56, i32 102, i32 16)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = call i32 @write_reg(%struct.fbtft_par* %58, i32 46, i32 45)
  %60 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %61 = call i32 @write_reg(%struct.fbtft_par* %60, i32 25, i32 0)
  %62 = call i32 @udelay(i32 200)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 26, i32 4096)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 @write_reg(%struct.fbtft_par* %65, i32 27, i32 35)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %68 = call i32 @write_reg(%struct.fbtft_par* %67, i32 28, i32 3073)
  %69 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %70 = call i32 @write_reg(%struct.fbtft_par* %69, i32 29, i32 0)
  %71 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %72 = call i32 @write_reg(%struct.fbtft_par* %71, i32 30, i32 9)
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %74 = call i32 @write_reg(%struct.fbtft_par* %73, i32 31, i32 53)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = call i32 @write_reg(%struct.fbtft_par* %75, i32 32, i32 21)
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %78 = call i32 @write_reg(%struct.fbtft_par* %77, i32 24, i32 7803)
  %79 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %80 = call i32 @write_reg(%struct.fbtft_par* %79, i32 8, i32 0)
  %81 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %82 = call i32 @write_reg(%struct.fbtft_par* %81, i32 9, i32 239)
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %84 = call i32 @write_reg(%struct.fbtft_par* %83, i32 10, i32 0)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %86 = call i32 @write_reg(%struct.fbtft_par* %85, i32 11, i32 319)
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %88 = call i32 @write_reg(%struct.fbtft_par* %87, i32 41, i32 0)
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %90 = call i32 @write_reg(%struct.fbtft_par* %89, i32 42, i32 0)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 @write_reg(%struct.fbtft_par* %91, i32 43, i32 239)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %94 = call i32 @write_reg(%struct.fbtft_par* %93, i32 44, i32 319)
  %95 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %96 = call i32 @write_reg(%struct.fbtft_par* %95, i32 50, i32 2)
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %98 = call i32 @write_reg(%struct.fbtft_par* %97, i32 51, i32 0)
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %100 = call i32 @write_reg(%struct.fbtft_par* %99, i32 55, i32 0)
  %101 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %102 = call i32 @write_reg(%struct.fbtft_par* %101, i32 59, i32 1)
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %104 = call i32 @write_reg(%struct.fbtft_par* %103, i32 4, i32 0)
  %105 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %106 = call i32 @write_reg(%struct.fbtft_par* %105, i32 5, i32 0)
  %107 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %108 = call i32 @write_reg(%struct.fbtft_par* %107, i32 1, i32 0)
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %110 = call i32 @write_reg(%struct.fbtft_par* %109, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
