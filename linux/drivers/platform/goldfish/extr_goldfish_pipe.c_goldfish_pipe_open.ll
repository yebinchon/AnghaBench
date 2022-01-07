; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.goldfish_pipe* }
%struct.goldfish_pipe = type { i32, %struct.goldfish_pipe_command*, i32, i32, %struct.goldfish_pipe_dev* }
%struct.goldfish_pipe_command = type { i32 }
%struct.goldfish_pipe_dev = type { i32, %struct.goldfish_pipe**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_BUFFERS_PER_COMMAND = common dso_local global i32 0, align 4
@PIPE_CMD_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @goldfish_pipe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_pipe_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.goldfish_pipe_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.goldfish_pipe*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.goldfish_pipe_dev* @to_goldfish_pipe_dev(%struct.file* %11)
  store %struct.goldfish_pipe_dev* %12, %struct.goldfish_pipe_dev** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.goldfish_pipe* @kzalloc(i32 32, i32 %13)
  store %struct.goldfish_pipe* %14, %struct.goldfish_pipe** %10, align 8
  %15 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %16 = icmp ne %struct.goldfish_pipe* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %22 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %23 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %22, i32 0, i32 4
  store %struct.goldfish_pipe_dev* %21, %struct.goldfish_pipe_dev** %23, align 8
  %24 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %25 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %28 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %27, i32 0, i32 2
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 4, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUILD_BUG_ON(i32 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64 @__get_free_page(i32 %35)
  %37 = inttoptr i64 %36 to %struct.goldfish_pipe_command*
  %38 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %39 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %38, i32 0, i32 1
  store %struct.goldfish_pipe_command* %37, %struct.goldfish_pipe_command** %39, align 8
  %40 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %41 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %40, i32 0, i32 1
  %42 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %41, align 8
  %43 = icmp ne %struct.goldfish_pipe_command* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %20
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %124

47:                                               ; preds = %20
  %48 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %49 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %53 = call i32 @get_free_pipe_id_locked(%struct.goldfish_pipe_dev* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  br label %114

58:                                               ; preds = %47
  %59 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %60 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %61 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %60, i32 0, i32 1
  %62 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.goldfish_pipe*, %struct.goldfish_pipe** %62, i64 %64
  store %struct.goldfish_pipe* %59, %struct.goldfish_pipe** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %68 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %71 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %70, i32 0, i32 1
  %72 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %71, align 8
  %73 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @MAX_BUFFERS_PER_COMMAND, align 4
  %75 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %76 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 8
  %80 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %81 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %80, i32 0, i32 1
  %82 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %81, align 8
  %83 = call i64 @__pa(%struct.goldfish_pipe_command* %82)
  %84 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %85 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %83, i64* %88, align 8
  %89 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %90 = load i32, i32* @PIPE_CMD_OPEN, align 4
  %91 = call i32 @goldfish_pipe_cmd_locked(%struct.goldfish_pipe* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %93 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %92, i32 0, i32 0
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %58
  br label %103

99:                                               ; preds = %58
  %100 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %101 = load %struct.file*, %struct.file** %5, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 0
  store %struct.goldfish_pipe* %100, %struct.goldfish_pipe** %102, align 8
  store i32 0, i32* %3, align 4
  br label %128

103:                                              ; preds = %98
  %104 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %105 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %109 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %108, i32 0, i32 1
  %110 = load %struct.goldfish_pipe**, %struct.goldfish_pipe*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.goldfish_pipe*, %struct.goldfish_pipe** %110, i64 %112
  store %struct.goldfish_pipe* null, %struct.goldfish_pipe** %113, align 8
  br label %114

114:                                              ; preds = %103, %56
  %115 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %6, align 8
  %116 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %115, i32 0, i32 0
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %120 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %119, i32 0, i32 1
  %121 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %120, align 8
  %122 = ptrtoint %struct.goldfish_pipe_command* %121 to i64
  %123 = call i32 @free_page(i64 %122)
  br label %124

124:                                              ; preds = %114, %44
  %125 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %10, align 8
  %126 = call i32 @kfree(%struct.goldfish_pipe* %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %99, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.goldfish_pipe_dev* @to_goldfish_pipe_dev(%struct.file*) #1

declare dso_local %struct.goldfish_pipe* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_free_pipe_id_locked(%struct.goldfish_pipe_dev*) #1

declare dso_local i64 @__pa(%struct.goldfish_pipe_command*) #1

declare dso_local i32 @goldfish_pipe_cmd_locked(%struct.goldfish_pipe*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.goldfish_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
