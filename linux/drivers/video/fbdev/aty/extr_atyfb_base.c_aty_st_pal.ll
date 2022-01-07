; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_st_pal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_st_pal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@DAC_W_INDEX = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.atyfb_par*)* @aty_st_pal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_st_pal(i32 %0, i32 %1, i32 %2, i32 %3, %struct.atyfb_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atyfb_par*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.atyfb_par* %4, %struct.atyfb_par** %10, align 8
  %11 = load i32, i32* @DAC_W_INDEX, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %14 = call i32 @aty_st_8(i32 %11, i32 %12, %struct.atyfb_par* %13)
  %15 = load i32, i32* @DAC_DATA, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %18 = call i32 @aty_st_8(i32 %15, i32 %16, %struct.atyfb_par* %17)
  %19 = load i32, i32* @DAC_DATA, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %22 = call i32 @aty_st_8(i32 %19, i32 %20, %struct.atyfb_par* %21)
  %23 = load i32, i32* @DAC_DATA, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.atyfb_par*, %struct.atyfb_par** %10, align 8
  %26 = call i32 @aty_st_8(i32 %23, i32 %24, %struct.atyfb_par* %25)
  ret void
}

declare dso_local i32 @aty_st_8(i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
