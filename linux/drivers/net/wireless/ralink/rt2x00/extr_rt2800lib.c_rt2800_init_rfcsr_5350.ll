; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5350.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr_5350.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr_5350 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr_5350(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %3, i32 0, i32 240)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %5, i32 1, i32 35)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %7, i32 2, i32 80)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %9, i32 3, i32 8)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %11, i32 4, i32 73)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %13, i32 5, i32 16)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 6, i32 224)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %17, i32 7, i32 0)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 8, i32 241)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %21, i32 9, i32 2)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %23, i32 10, i32 83)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 11, i32 74)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 12, i32 70)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i64 @rt2800_clk_is_20mhz(%struct.rt2x00_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 13, i32 31)
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 13, i32 159)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 14, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 15, i32 0)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %43, i32 16, i32 192)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 18, i32 3)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %47, i32 19, i32 0)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 20, i32 0)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %51, i32 21, i32 0)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 22, i32 32)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %55, i32 23, i32 0)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %57, i32 24, i32 0)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %59, i32 25, i32 128)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %61, i32 26, i32 0)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %63, i32 27, i32 3)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %65, i32 28, i32 0)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %67, i32 29, i32 208)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %69, i32 30, i32 16)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %71, i32 31, i32 128)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %73, i32 32, i32 128)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %76 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %75, i32 33, i32 0)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %77, i32 34, i32 7)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %79, i32 35, i32 18)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %81, i32 36, i32 0)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %83, i32 37, i32 8)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %85, i32 38, i32 133)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %87, i32 39, i32 27)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %89, i32 40, i32 11)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %91, i32 41, i32 187)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %93, i32 42, i32 213)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %95, i32 43, i32 155)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 44, i32 12)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %99, i32 45, i32 166)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %101, i32 46, i32 115)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %103, i32 47, i32 0)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %105, i32 48, i32 16)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %107, i32 49, i32 128)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %109, i32 50, i32 0)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %111, i32 51, i32 0)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %114 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %113, i32 52, i32 56)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %115, i32 53, i32 0)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %118 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %117, i32 54, i32 56)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %119, i32 55, i32 67)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %122 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %121, i32 56, i32 130)
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %123, i32 57, i32 0)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %125, i32 58, i32 57)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %128 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %127, i32 59, i32 11)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %129, i32 60, i32 69)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %131, i32 61, i32 209)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %133, i32 62, i32 0)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %136 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %135, i32 63, i32 0)
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2800_clk_is_20mhz(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
