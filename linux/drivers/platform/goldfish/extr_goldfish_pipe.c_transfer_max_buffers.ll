; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_transfer_max_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_transfer_max_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@PIPE_CMD_WRITE = common dso_local global i32 0, align 4
@PIPE_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goldfish_pipe*, i64, i64, i32, i64, i32, i32*, i32*)* @transfer_max_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_max_buffers(%struct.goldfish_pipe* %0, i64 %1, i64 %2, i32 %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.goldfish_pipe*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.goldfish_pipe* %0, %struct.goldfish_pipe** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %18, align 8
  %24 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %25 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %91

31:                                               ; preds = %8
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %37 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pin_user_pages(i64 %32, i64 %33, i32 %34, i32 %35, i32 %38, i32* %19)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %44 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %9, align 4
  br label %91

47:                                               ; preds = %31
  %48 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %49 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %59 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @populate_rw_params(i32 %50, i32 %51, i64 %52, i64 %53, i64 %54, i64 %55, i32 %56, i32 %57, %struct.TYPE_4__* %60)
  %62 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = load i32, i32* @PIPE_CMD_WRITE, align 4
  br label %69

67:                                               ; preds = %47
  %68 = load i32, i32* @PIPE_CMD_READ, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @goldfish_pipe_cmd_locked(%struct.goldfish_pipe* %62, i32 %70)
  %72 = load i32*, i32** %17, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %74 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %16, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %81 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @release_user_pages(i32 %82, i32 %83, i32 %84, i32 %86)
  %88 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %89 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %69, %42, %28
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pin_user_pages(i64, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @populate_rw_params(i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @goldfish_pipe_cmd_locked(%struct.goldfish_pipe*, i32) #1

declare dso_local i32 @release_user_pages(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
