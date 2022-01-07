; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_cpg.c_sh_clk_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_cpg.c_sh_clk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@CLK_ENABLE_REG_8BIT = common dso_local global i32 0, align 4
@CLK_ENABLE_REG_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clk*)* @sh_clk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_clk_write(i32 %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clk* %1, %struct.clk** %4, align 8
  %5 = load %struct.clk*, %struct.clk** %4, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLK_ENABLE_REG_8BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iowrite8(i32 %12, i32 %15)
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLK_ENABLE_REG_16BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iowrite16(i32 %25, i32 %28)
  br label %36

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iowrite32(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
