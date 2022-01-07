; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_cursor_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_cursor_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CURSOR_A_CONTROL = common dso_local global i32 0, align 4
@CURSOR_MODE_MASK = common dso_local global i32 0, align 4
@CURSOR_MODE_64_4C_AX = common dso_local global i32 0, align 4
@CURSOR_A_BASEADDR = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_cursor_show(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %4 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %7 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %13 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %18 = call i64 @IS_I9XX(%struct.intelfb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16, %11
  %21 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %22 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %55

27:                                               ; preds = %20
  %28 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %29 = call i32 @INREG(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @CURSOR_MODE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @CURSOR_MODE_64_4C_AX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @OUTREG(i32 %37, i32 %38)
  %40 = load i32, i32* @CURSOR_A_BASEADDR, align 4
  %41 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %42 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OUTREG(i32 %40, i32 %44)
  br label %55

46:                                               ; preds = %16
  %47 = load i32, i32* @CURSOR_CONTROL, align 4
  %48 = call i32 @INREG(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @CURSOR_ENABLE, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @CURSOR_CONTROL, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @OUTREG(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %10, %26, %46, %27
  ret void
}

declare dso_local i64 @IS_I9XX(%struct.intelfb_info*) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
