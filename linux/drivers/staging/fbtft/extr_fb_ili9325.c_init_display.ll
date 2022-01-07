; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9325.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9325.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@bt = common dso_local global i32 0, align 4
@vc = common dso_local global i32 0, align 4
@vrh = common dso_local global i32 0, align 4
@vdv = common dso_local global i32 0, align 4
@vcm = common dso_local global i32 0, align 4
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
  %22 = load i32, i32* @bt, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* @bt, align 4
  %24 = load i32, i32* @vc, align 4
  %25 = and i32 %24, 7
  store i32 %25, i32* @vc, align 4
  %26 = load i32, i32* @vrh, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* @vrh, align 4
  %28 = load i32, i32* @vdv, align 4
  %29 = and i32 %28, 31
  store i32 %29, i32* @vdv, align 4
  %30 = load i32, i32* @vcm, align 4
  %31 = and i32 %30, 63
  store i32 %31, i32* @vcm, align 4
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = call i32 @write_reg(%struct.fbtft_par* %32, i32 227, i32 12296)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = call i32 @write_reg(%struct.fbtft_par* %34, i32 231, i32 18)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = call i32 @write_reg(%struct.fbtft_par* %36, i32 239, i32 4657)
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %39 = call i32 @write_reg(%struct.fbtft_par* %38, i32 1, i32 256)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 @write_reg(%struct.fbtft_par* %40, i32 2, i32 1792)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = call i32 @write_reg(%struct.fbtft_par* %42, i32 4, i32 0)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 @write_reg(%struct.fbtft_par* %44, i32 8, i32 519)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = call i32 @write_reg(%struct.fbtft_par* %46, i32 9, i32 0)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %49 = call i32 @write_reg(%struct.fbtft_par* %48, i32 10, i32 0)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = call i32 @write_reg(%struct.fbtft_par* %50, i32 12, i32 0)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = call i32 @write_reg(%struct.fbtft_par* %52, i32 13, i32 0)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %55 = call i32 @write_reg(%struct.fbtft_par* %54, i32 15, i32 0)
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = call i32 @write_reg(%struct.fbtft_par* %56, i32 16, i32 0)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = call i32 @write_reg(%struct.fbtft_par* %58, i32 17, i32 7)
  %60 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %61 = call i32 @write_reg(%struct.fbtft_par* %60, i32 18, i32 0)
  %62 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %63 = call i32 @write_reg(%struct.fbtft_par* %62, i32 19, i32 0)
  %64 = call i32 @mdelay(i32 200)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = call i32 @BIT(i32 12)
  %67 = load i32, i32* @bt, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %66, %68
  %70 = call i32 @BIT(i32 7)
  %71 = or i32 %69, %70
  %72 = call i32 @BIT(i32 4)
  %73 = or i32 %71, %72
  %74 = call i32 @write_reg(%struct.fbtft_par* %65, i32 16, i32 %73)
  %75 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %76 = load i32, i32* @vc, align 4
  %77 = or i32 544, %76
  %78 = call i32 @write_reg(%struct.fbtft_par* %75, i32 17, i32 %77)
  %79 = call i32 @mdelay(i32 50)
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %81 = load i32, i32* @vrh, align 4
  %82 = call i32 @write_reg(%struct.fbtft_par* %80, i32 18, i32 %81)
  %83 = call i32 @mdelay(i32 50)
  %84 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %85 = load i32, i32* @vdv, align 4
  %86 = shl i32 %85, 8
  %87 = call i32 @write_reg(%struct.fbtft_par* %84, i32 19, i32 %86)
  %88 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %89 = load i32, i32* @vcm, align 4
  %90 = call i32 @write_reg(%struct.fbtft_par* %88, i32 41, i32 %89)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 @write_reg(%struct.fbtft_par* %91, i32 43, i32 12)
  %93 = call i32 @mdelay(i32 50)
  %94 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %95 = call i32 @write_reg(%struct.fbtft_par* %94, i32 32, i32 0)
  %96 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %97 = call i32 @write_reg(%struct.fbtft_par* %96, i32 33, i32 0)
  %98 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %99 = call i32 @write_reg(%struct.fbtft_par* %98, i32 80, i32 0)
  %100 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %101 = call i32 @write_reg(%struct.fbtft_par* %100, i32 81, i32 239)
  %102 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %103 = call i32 @write_reg(%struct.fbtft_par* %102, i32 82, i32 0)
  %104 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %105 = call i32 @write_reg(%struct.fbtft_par* %104, i32 83, i32 319)
  %106 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %107 = call i32 @write_reg(%struct.fbtft_par* %106, i32 96, i32 42752)
  %108 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %109 = call i32 @write_reg(%struct.fbtft_par* %108, i32 97, i32 1)
  %110 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %111 = call i32 @write_reg(%struct.fbtft_par* %110, i32 106, i32 0)
  %112 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %113 = call i32 @write_reg(%struct.fbtft_par* %112, i32 128, i32 0)
  %114 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %115 = call i32 @write_reg(%struct.fbtft_par* %114, i32 129, i32 0)
  %116 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %117 = call i32 @write_reg(%struct.fbtft_par* %116, i32 130, i32 0)
  %118 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %119 = call i32 @write_reg(%struct.fbtft_par* %118, i32 131, i32 0)
  %120 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %121 = call i32 @write_reg(%struct.fbtft_par* %120, i32 132, i32 0)
  %122 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %123 = call i32 @write_reg(%struct.fbtft_par* %122, i32 133, i32 0)
  %124 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %125 = call i32 @write_reg(%struct.fbtft_par* %124, i32 144, i32 16)
  %126 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %127 = call i32 @write_reg(%struct.fbtft_par* %126, i32 146, i32 1536)
  %128 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %129 = call i32 @write_reg(%struct.fbtft_par* %128, i32 7, i32 307)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
