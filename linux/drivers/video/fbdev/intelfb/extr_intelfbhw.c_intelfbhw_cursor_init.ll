; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CURSOR_A_CONTROL = common dso_local global i32 0, align 4
@CURSOR_MODE_MASK = common dso_local global i32 0, align 4
@CURSOR_MOBILE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@CURSOR_MEM_TYPE_LOCAL = common dso_local global i32 0, align 4
@CURSOR_PIPE_SELECT_SHIFT = common dso_local global i32 0, align 4
@CURSOR_MODE_DISABLE = common dso_local global i32 0, align 4
@CURSOR_A_BASEADDR = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_FORMAT_MASK = common dso_local global i32 0, align 4
@CURSOR_GAMMA_ENABLE = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@CURSOR_STRIDE_MASK = common dso_local global i32 0, align 4
@CURSOR_FORMAT_3C = common dso_local global i32 0, align 4
@CURSOR_SIZE_H_SHIFT = common dso_local global i32 0, align 4
@CURSOR_SIZE_V_SHIFT = common dso_local global i32 0, align 4
@CURSOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_cursor_init(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %4 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %10 = call i64 @IS_I9XX(%struct.intelfb_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %8, %1
  %13 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %14 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %79

19:                                               ; preds = %12
  %20 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %21 = call i32 @INREG(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CURSOR_MODE_MASK, align 4
  %23 = load i32, i32* @CURSOR_MOBILE_GAMMA_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CURSOR_MEM_TYPE_LOCAL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CURSOR_PIPE_SELECT_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @CURSOR_MODE_DISABLE, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @CURSOR_A_CONTROL, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @OUTREG(i32 %36, i32 %37)
  %39 = load i32, i32* @CURSOR_A_BASEADDR, align 4
  %40 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %41 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @OUTREG(i32 %39, i32 %43)
  br label %79

45:                                               ; preds = %8
  %46 = load i32, i32* @CURSOR_CONTROL, align 4
  %47 = call i32 @INREG(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @CURSOR_FORMAT_MASK, align 4
  %49 = load i32, i32* @CURSOR_GAMMA_ENABLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CURSOR_ENABLE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CURSOR_STRIDE_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @CURSOR_FORMAT_3C, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @CURSOR_CONTROL, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @OUTREG(i32 %61, i32 %62)
  %64 = load i32, i32* @CURSOR_A_BASEADDR, align 4
  %65 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %66 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 12
  %70 = call i32 @OUTREG(i32 %64, i32 %69)
  %71 = load i32, i32* @CURSOR_SIZE_H_SHIFT, align 4
  %72 = shl i32 64, %71
  %73 = load i32, i32* @CURSOR_SIZE_V_SHIFT, align 4
  %74 = shl i32 64, %73
  %75 = or i32 %72, %74
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @CURSOR_SIZE, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @OUTREG(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %18, %45, %19
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
