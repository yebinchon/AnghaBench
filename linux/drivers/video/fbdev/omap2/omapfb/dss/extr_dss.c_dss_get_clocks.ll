; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.clk*, %struct.TYPE_5__*, %struct.clk*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.clk = type { i32 }
%struct.TYPE_4__ = type { i32 }

@dss = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get clock fck\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Failed to get %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dss_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_get_clocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.clk*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 3), align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = call %struct.clk* @devm_clk_get(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %5, %struct.clk** %2, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = call i64 @IS_ERR(%struct.clk* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = call i32 @PTR_ERR(%struct.clk* %11)
  store i32 %12, i32* %1, align 4
  br label %38

13:                                               ; preds = %0
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  store %struct.clk* %14, %struct.clk** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 2), align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.clk* @clk_get(i32* null, i64 %22)
  store %struct.clk* %23, %struct.clk** %2, align 8
  %24 = load %struct.clk*, %struct.clk** %2, align 8
  %25 = call i64 @IS_ERR(%struct.clk* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load %struct.clk*, %struct.clk** %2, align 8
  %33 = call i32 @PTR_ERR(%struct.clk* %32)
  store i32 %33, i32* %1, align 4
  br label %38

34:                                               ; preds = %19
  br label %36

35:                                               ; preds = %13
  store %struct.clk* null, %struct.clk** %2, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  store %struct.clk* %37, %struct.clk** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %36, %27, %9
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
