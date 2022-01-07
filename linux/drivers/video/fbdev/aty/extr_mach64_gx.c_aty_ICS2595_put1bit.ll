; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_ICS2595_put1bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_ICS2595_put1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i64 }

@CLOCK_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.atyfb_par*)* @aty_ICS2595_put1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_ICS2595_put1bit(i32 %0, %struct.atyfb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.atyfb_par* %1, %struct.atyfb_par** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @CLOCK_CNTL, align 8
  %9 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %10 = call i32 @aty_ld_8(i64 %8, %struct.atyfb_par* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @CLOCK_CNTL, align 8
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %13 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -5
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 2
  %20 = or i32 %17, %19
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %22 = call i32 @aty_st_8(i64 %15, i32 %20, %struct.atyfb_par* %21)
  %23 = load i64, i64* @CLOCK_CNTL, align 8
  %24 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %25 = call i32 @aty_ld_8(i64 %23, %struct.atyfb_par* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* @CLOCK_CNTL, align 8
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %28 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -9
  %33 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %34 = call i32 @aty_st_8(i64 %30, i32 %32, %struct.atyfb_par* %33)
  %35 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %36 = call i32 @aty_StrobeClock(%struct.atyfb_par* %35)
  %37 = load i64, i64* @CLOCK_CNTL, align 8
  %38 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %39 = call i32 @aty_ld_8(i64 %37, %struct.atyfb_par* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i64, i64* @CLOCK_CNTL, align 8
  %41 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %42 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, -9
  %47 = or i32 %46, 8
  %48 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %49 = call i32 @aty_st_8(i64 %44, i32 %47, %struct.atyfb_par* %48)
  %50 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %51 = call i32 @aty_StrobeClock(%struct.atyfb_par* %50)
  ret void
}

declare dso_local i32 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_StrobeClock(%struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
