; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_calc_line_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_calc_line_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i64 }

@SGRAM = common dso_local global i64 0, align 8
@XL_MEM = common dso_local global i32 0, align 4
@WRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atyfb_par*, i32, i32)* @calc_line_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_line_length(%struct.atyfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %13 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SGRAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @XL_MEM, align 4
  %19 = call i32 @M64_HAS(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %23 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WRAM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 63
  %30 = and i32 %29, -64
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %21, %17
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @M64_HAS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
