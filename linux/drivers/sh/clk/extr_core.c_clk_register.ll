; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@clock_list_sem = common dso_local global i32 0, align 4
@root_clks = common dso_local global i32 0, align 4
@clock_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_register(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = call i64 @IS_ERR_OR_NULL(%struct.clk* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  store i32 0, i32* %2, align 4
  br label %61

24:                                               ; preds = %17
  %25 = call i32 @mutex_lock(i32* @clock_list_sem)
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = call i32 @clk_establish_mapping(%struct.clk* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %58

37:                                               ; preds = %24
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 2
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @list_add(%struct.TYPE_6__* %44, i32* %48)
  br label %54

50:                                               ; preds = %37
  %51 = load %struct.clk*, %struct.clk** %3, align 8
  %52 = getelementptr inbounds %struct.clk, %struct.clk* %51, i32 0, i32 2
  %53 = call i32 @list_add(%struct.TYPE_6__* %52, i32* @root_clks)
  br label %54

54:                                               ; preds = %50, %42
  %55 = load %struct.clk*, %struct.clk** %3, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 1
  %57 = call i32 @list_add(%struct.TYPE_6__* %56, i32* @clock_list)
  br label %58

58:                                               ; preds = %54, %36
  %59 = call i32 @mutex_unlock(i32* @clock_list_sem)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %23, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @clk_establish_mapping(%struct.clk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
