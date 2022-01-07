; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_add_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_add_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe_dev = type { i64, %struct.goldfish_pipe*, %struct.goldfish_pipe** }
%struct.goldfish_pipe = type { i64, %struct.goldfish_pipe*, %struct.goldfish_pipe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_pipe_dev*, i64, i64)* @signalled_pipes_add_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signalled_pipes_add_locked(%struct.goldfish_pipe_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.goldfish_pipe_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.goldfish_pipe*, align 8
  store %struct.goldfish_pipe_dev* %0, %struct.goldfish_pipe_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %10 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %19 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %18, i32 0, i32 2
  %20 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.goldfish_pipe*, %struct.goldfish_pipe** %20, i64 %21
  %23 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %22, align 8
  store %struct.goldfish_pipe* %23, %struct.goldfish_pipe** %7, align 8
  %24 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %25 = icmp ne %struct.goldfish_pipe* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %69

27:                                               ; preds = %17
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %30 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %34 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %33, i32 0, i32 1
  %35 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %34, align 8
  %36 = icmp ne %struct.goldfish_pipe* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %39 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %38, i32 0, i32 2
  %40 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %39, align 8
  %41 = icmp ne %struct.goldfish_pipe* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %44 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %43, i32 0, i32 1
  %45 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %44, align 8
  %46 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %47 = icmp eq %struct.goldfish_pipe* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %37, %27
  br label %69

49:                                               ; preds = %42
  %50 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %51 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %50, i32 0, i32 1
  %52 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %51, align 8
  %53 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %54 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %53, i32 0, i32 2
  store %struct.goldfish_pipe* %52, %struct.goldfish_pipe** %54, align 8
  %55 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %56 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %55, i32 0, i32 1
  %57 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %56, align 8
  %58 = icmp ne %struct.goldfish_pipe* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %61 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %62 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %61, i32 0, i32 1
  %63 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %62, align 8
  %64 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %63, i32 0, i32 1
  store %struct.goldfish_pipe* %60, %struct.goldfish_pipe** %64, align 8
  br label %65

65:                                               ; preds = %59, %49
  %66 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %7, align 8
  %67 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %4, align 8
  %68 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %67, i32 0, i32 1
  store %struct.goldfish_pipe* %66, %struct.goldfish_pipe** %68, align 8
  br label %69

69:                                               ; preds = %65, %48, %26, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
