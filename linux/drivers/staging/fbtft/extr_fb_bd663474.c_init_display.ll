; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_bd663474.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_bd663474.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %10 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gpiod_set_value(i64 %12, i32 0)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %17, align 8
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = bitcast %struct.fbtft_par* %19 to %struct.fbtft_par.0*
  %21 = call i32 %18(%struct.fbtft_par.0* %20)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 @write_reg(%struct.fbtft_par* %22, i32 0, i32 1)
  %24 = call i32 @mdelay(i32 10)
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %26 = call i32 @write_reg(%struct.fbtft_par* %25, i32 256, i32 0)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = call i32 @write_reg(%struct.fbtft_par* %27, i32 257, i32 0)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = call i32 @write_reg(%struct.fbtft_par* %29, i32 258, i32 12560)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = call i32 @write_reg(%struct.fbtft_par* %31, i32 259, i32 57856)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = call i32 @write_reg(%struct.fbtft_par* %33, i32 272, i32 157)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 @write_reg(%struct.fbtft_par* %35, i32 273, i32 34)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 @write_reg(%struct.fbtft_par* %37, i32 256, i32 288)
  %39 = call i32 @mdelay(i32 20)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 @write_reg(%struct.fbtft_par* %40, i32 256, i32 12576)
  %42 = call i32 @mdelay(i32 80)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %44 = call i32 @write_reg(%struct.fbtft_par* %43, i32 1, i32 256)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 @write_reg(%struct.fbtft_par* %45, i32 2, i32 0)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 3, i32 4656)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 @write_reg(%struct.fbtft_par* %49, i32 6, i32 0)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 @write_reg(%struct.fbtft_par* %51, i32 7, i32 257)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 @write_reg(%struct.fbtft_par* %53, i32 8, i32 2056)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = call i32 @write_reg(%struct.fbtft_par* %55, i32 9, i32 0)
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %58 = call i32 @write_reg(%struct.fbtft_par* %57, i32 11, i32 0)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %60 = call i32 @write_reg(%struct.fbtft_par* %59, i32 12, i32 0)
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %62 = call i32 @write_reg(%struct.fbtft_par* %61, i32 13, i32 24)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 18, i32 0)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 @write_reg(%struct.fbtft_par* %65, i32 19, i32 0)
  %67 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %68 = call i32 @write_reg(%struct.fbtft_par* %67, i32 24, i32 0)
  %69 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %70 = call i32 @write_reg(%struct.fbtft_par* %69, i32 25, i32 0)
  %71 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %72 = call i32 @write_reg(%struct.fbtft_par* %71, i32 515, i32 0)
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %74 = call i32 @write_reg(%struct.fbtft_par* %73, i32 516, i32 0)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = call i32 @write_reg(%struct.fbtft_par* %75, i32 528, i32 0)
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %78 = call i32 @write_reg(%struct.fbtft_par* %77, i32 529, i32 239)
  %79 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %80 = call i32 @write_reg(%struct.fbtft_par* %79, i32 530, i32 0)
  %81 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %82 = call i32 @write_reg(%struct.fbtft_par* %81, i32 531, i32 319)
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %84 = call i32 @write_reg(%struct.fbtft_par* %83, i32 532, i32 0)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %86 = call i32 @write_reg(%struct.fbtft_par* %85, i32 533, i32 0)
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %88 = call i32 @write_reg(%struct.fbtft_par* %87, i32 534, i32 0)
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %90 = call i32 @write_reg(%struct.fbtft_par* %89, i32 535, i32 0)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 @write_reg(%struct.fbtft_par* %91, i32 768, i32 21315)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %94 = call i32 @write_reg(%struct.fbtft_par* %93, i32 769, i32 4129)
  %95 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %96 = call i32 @write_reg(%struct.fbtft_par* %95, i32 770, i32 3)
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %98 = call i32 @write_reg(%struct.fbtft_par* %97, i32 771, i32 17)
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %100 = call i32 @write_reg(%struct.fbtft_par* %99, i32 772, i32 1290)
  %101 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %102 = call i32 @write_reg(%struct.fbtft_par* %101, i32 773, i32 17218)
  %103 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %104 = call i32 @write_reg(%struct.fbtft_par* %103, i32 774, i32 4352)
  %105 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %106 = call i32 @write_reg(%struct.fbtft_par* %105, i32 775, i32 3)
  %107 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %108 = call i32 @write_reg(%struct.fbtft_par* %107, i32 776, i32 4609)
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %110 = call i32 @write_reg(%struct.fbtft_par* %109, i32 777, i32 1290)
  %111 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %112 = call i32 @write_reg(%struct.fbtft_par* %111, i32 1024, i32 16423)
  %113 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %114 = call i32 @write_reg(%struct.fbtft_par* %113, i32 1025, i32 0)
  %115 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %116 = call i32 @write_reg(%struct.fbtft_par* %115, i32 1026, i32 0)
  %117 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %118 = call i32 @write_reg(%struct.fbtft_par* %117, i32 1027, i32 319)
  %119 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %120 = call i32 @write_reg(%struct.fbtft_par* %119, i32 1028, i32 0)
  %121 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %122 = call i32 @write_reg(%struct.fbtft_par* %121, i32 512, i32 0)
  %123 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %124 = call i32 @write_reg(%struct.fbtft_par* %123, i32 513, i32 0)
  %125 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %126 = call i32 @write_reg(%struct.fbtft_par* %125, i32 256, i32 28960)
  %127 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %128 = call i32 @write_reg(%struct.fbtft_par* %127, i32 7, i32 259)
  %129 = call i32 @mdelay(i32 10)
  %130 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %131 = call i32 @write_reg(%struct.fbtft_par* %130, i32 7, i32 275)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
