; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_calc_mem_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_calc_mem_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32 }

@aty_calc_mem_refresh.ragepro_tbl = internal constant [7 x i32] [i32 44, i32 50, i32 55, i32 66, i32 75, i32 80, i32 100], align 16
@aty_calc_mem_refresh.ragexl_tbl = internal constant [15 x i32] [i32 50, i32 66, i32 75, i32 83, i32 90, i32 95, i32 100, i32 105, i32 110, i32 115, i32 120, i32 125, i32 133, i32 143, i32 166], align 16
@XL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atyfb_par*, i32)* @aty_calc_mem_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_calc_mem_refresh(%struct.atyfb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.atyfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @XL_MEM, align 4
  %9 = call i64 @M64_HAS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  store i32* getelementptr inbounds ([15 x i32], [15 x i32]* @aty_calc_mem_refresh.ragexl_tbl, i64 0, i64 0), i32** %5, align 8
  %12 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([15 x i32], [15 x i32]* @aty_calc_mem_refresh.ragexl_tbl, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %2
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @aty_calc_mem_refresh.ragepro_tbl, i64 0, i64 0), i32** %5, align 8
  %14 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @aty_calc_mem_refresh.ragepro_tbl, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %16

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %36 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
