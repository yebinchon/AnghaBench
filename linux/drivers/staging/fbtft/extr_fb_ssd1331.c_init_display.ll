; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1331.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1331.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %10, i32 174)
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 180
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 2
  %25 = or i32 96, %24
  %26 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %20, i32 160, i32 %25)
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 2
  %33 = or i32 114, %32
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %28, i32 160, i32 %33)
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %36, i32 114)
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %39 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %38, i32 161, i32 0)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %40, i32 162, i32 0)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %42, i32 164)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %44, i32 168, i32 63)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %46, i32 173, i32 142)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %49 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 177, i32 49)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %50, i32 179, i32 240)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %52, i32 138, i32 100)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %55 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %54, i32 139, i32 120)
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %56, i32 140, i32 100)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %58, i32 187, i32 58)
  %60 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %61 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %60, i32 190, i32 62)
  %62 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %63 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %62, i32 135, i32 6)
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %65 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %64, i32 129, i32 145)
  %66 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %67 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %66, i32 130, i32 80)
  %68 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %69 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %68, i32 131, i32 125)
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %71 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %70, i32 175)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
