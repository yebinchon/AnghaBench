; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_cpg.c_sh_clk_div6_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_cpg.c_sh_clk_div6_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, i32, i32, %struct.clk** }
%struct.clk_div_mult_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @sh_clk_div6_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_clk_div6_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk_div_mult_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call %struct.clk_div_mult_table* @clk_to_div_mult_table(%struct.clk* %10)
  store %struct.clk_div_mult_table* %11, %struct.clk_div_mult_table** %6, align 8
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 4
  %14 = load %struct.clk**, %struct.clk*** %13, align 8
  %15 = icmp ne %struct.clk** %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.clk*, %struct.clk** %4, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 4
  %34 = load %struct.clk**, %struct.clk*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.clk*, %struct.clk** %34, i64 %36
  %38 = load %struct.clk*, %struct.clk** %37, align 8
  %39 = load %struct.clk*, %struct.clk** %5, align 8
  %40 = icmp eq %struct.clk* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %25

46:                                               ; preds = %41, %25
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.clk*, %struct.clk** %4, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = load %struct.clk*, %struct.clk** %5, align 8
  %58 = call i32 @clk_reparent(%struct.clk* %56, %struct.clk* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %95

63:                                               ; preds = %55
  %64 = load %struct.clk*, %struct.clk** %4, align 8
  %65 = call i32 @sh_clk_read(%struct.clk* %64)
  %66 = load %struct.clk*, %struct.clk** %4, align 8
  %67 = getelementptr inbounds %struct.clk, %struct.clk* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.clk*, %struct.clk** %4, align 8
  %72 = getelementptr inbounds %struct.clk, %struct.clk* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %70, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %65, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.clk*, %struct.clk** %4, align 8
  %80 = getelementptr inbounds %struct.clk, %struct.clk* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %78, %81
  %83 = or i32 %77, %82
  %84 = load %struct.clk*, %struct.clk** %4, align 8
  %85 = call i32 @sh_clk_write(i32 %83, %struct.clk* %84)
  %86 = load %struct.clk*, %struct.clk** %4, align 8
  %87 = load %struct.clk*, %struct.clk** %4, align 8
  %88 = getelementptr inbounds %struct.clk, %struct.clk* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %6, align 8
  %91 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %6, align 8
  %94 = call i32 @clk_rate_table_build(%struct.clk* %86, i32 %89, i32 %92, %struct.clk_div_mult_table* %93, i32* null)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %63, %61, %52, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.clk_div_mult_table* @clk_to_div_mult_table(%struct.clk*) #1

declare dso_local i32 @clk_reparent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @sh_clk_read(%struct.clk*) #1

declare dso_local i32 @sh_clk_write(i32, %struct.clk*) #1

declare dso_local i32 @clk_rate_table_build(%struct.clk*, i32, i32, %struct.clk_div_mult_table*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
