; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_get_clock_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_get_clock_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_clock_info = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_mgr_get_clock_div(i32 %0, %struct.dispc_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dispc_clock_info*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dispc_clock_info* %1, %struct.dispc_clock_info** %4, align 8
  %6 = call i64 (...) @dispc_fclk_rate()
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @DISPC_DIVISORo(i32 %7)
  %9 = call i8* @REG_GET(i32 %8, i32 23, i32 16)
  %10 = ptrtoint i8* %9 to i64
  %11 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %12 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DISPC_DIVISORo(i32 %13)
  %15 = call i8* @REG_GET(i32 %14, i32 7, i32 0)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %18 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %21 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = udiv i64 %19, %22
  %24 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %25 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %27 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %30 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %28, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %36 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  ret i32 0
}

declare dso_local i64 @dispc_fclk_rate(...) #1

declare dso_local i8* @REG_GET(i32, i32, i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
