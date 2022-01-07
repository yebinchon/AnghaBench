; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_command_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_command_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_64xx_command_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_64xx_command_active(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 3
  %9 = add nsw i32 64, %8
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 32
  %12 = shl i32 1, %11
  %13 = call i32 @mvs_cw32(%struct.mvs_info* %6, i32 %9, i32 %12)
  %14 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 3
  %17 = add nsw i32 0, %16
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 32
  %20 = shl i32 1, %19
  %21 = call i32 @mvs_cw32(%struct.mvs_info* %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %28, %2
  %23 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 3
  %26 = add nsw i32 0, %25
  %27 = call i32 @mvs_cr32(%struct.mvs_info* %23, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %22, label %35

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %42, %35
  %37 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 3
  %40 = add nsw i32 64, %39
  %41 = call i32 @mvs_cr32(%struct.mvs_info* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = srem i32 %44, 32
  %46 = shl i32 1, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %36, label %49

49:                                               ; preds = %42
  ret void
}

declare dso_local i32 @mvs_cw32(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_cr32(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
