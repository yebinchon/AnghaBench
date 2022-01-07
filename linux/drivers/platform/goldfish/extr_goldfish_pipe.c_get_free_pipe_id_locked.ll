; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_get_free_pipe_id_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_get_free_pipe_id_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe_dev = type { i32, %struct.goldfish_pipe** }
%struct.goldfish_pipe = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goldfish_pipe_dev*)* @get_free_pipe_id_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_free_pipe_id_locked(%struct.goldfish_pipe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.goldfish_pipe_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.goldfish_pipe**, align 8
  store %struct.goldfish_pipe_dev* %0, %struct.goldfish_pipe_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %10 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %15 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %14, i32 0, i32 1
  %16 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.goldfish_pipe*, %struct.goldfish_pipe** %16, i64 %18
  %20 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %19, align 8
  %21 = icmp ne %struct.goldfish_pipe* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %30 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.goldfish_pipe** @kcalloc(i32 %33, i32 8, i32 %34)
  store %struct.goldfish_pipe** %35, %struct.goldfish_pipe*** %6, align 8
  %36 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %6, align 8
  %37 = icmp ne %struct.goldfish_pipe** %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %6, align 8
  %43 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %44 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %43, i32 0, i32 1
  %45 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %44, align 8
  %46 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %47 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(%struct.goldfish_pipe** %42, %struct.goldfish_pipe** %45, i32 %51)
  %53 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %54 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %53, i32 0, i32 1
  %55 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %54, align 8
  %56 = call i32 @kfree(%struct.goldfish_pipe** %55)
  %57 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %6, align 8
  %58 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %59 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %58, i32 0, i32 1
  store %struct.goldfish_pipe** %57, %struct.goldfish_pipe*** %59, align 8
  %60 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %61 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %65 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %41, %38, %22
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.goldfish_pipe** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.goldfish_pipe**, %struct.goldfish_pipe**, i32) #1

declare dso_local i32 @kfree(%struct.goldfish_pipe**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
