; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_dev_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_dev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"l3c%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iob%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iob_slow%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mcb%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mc%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32, i32)* @xgene_pmu_dev_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xgene_pmu_dev_name(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %34 [
    i32 130, label %9
    i32 132, label %14
    i32 131, label %19
    i32 128, label %24
    i32 129, label %29
  ]

9:                                                ; preds = %3
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* %18, i8** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i8* %23, i8** %4, align 8
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %4, align 8
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  store i8* %33, i8** %4, align 8
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* (%struct.device*, i32, i8*, ...) @devm_kasprintf(%struct.device* %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %34, %29, %24, %19, %14, %9
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
