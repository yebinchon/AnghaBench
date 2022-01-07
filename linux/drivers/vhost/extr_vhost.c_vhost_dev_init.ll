; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32, i32, i32, %struct.vhost_virtqueue**, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.vhost_virtqueue = type { i64, i32, i32, %struct.vhost_dev*, i32*, i32*, i32* }

@EPOLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_dev_init(%struct.vhost_dev* %0, %struct.vhost_virtqueue** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vhost_dev*, align 8
  %8 = alloca %struct.vhost_virtqueue**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vhost_virtqueue*, align 8
  %14 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %7, align 8
  store %struct.vhost_virtqueue** %1, %struct.vhost_virtqueue*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %8, align 8
  %16 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %17 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %16, i32 0, i32 4
  store %struct.vhost_virtqueue** %15, %struct.vhost_virtqueue*** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %20 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %22 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %21, i32 0, i32 15
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %25 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %24, i32 0, i32 14
  store i32* null, i32** %25, align 8
  %26 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %27 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %26, i32 0, i32 13
  store i32* null, i32** %27, align 8
  %28 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %29 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %28, i32 0, i32 12
  store i32* null, i32** %29, align 8
  %30 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %31 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %30, i32 0, i32 11
  store i32* null, i32** %31, align 8
  %32 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %33 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %32, i32 0, i32 10
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %36 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %39 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %42 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %44 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %43, i32 0, i32 9
  %45 = call i32 @init_llist_head(i32* %44)
  %46 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %47 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %46, i32 0, i32 8
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %50 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %49, i32 0, i32 7
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %53 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %52, i32 0, i32 6
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %56 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %55, i32 0, i32 5
  %57 = call i32 @spin_lock_init(i32* %56)
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %101, %6
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %61 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %58
  %65 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %66 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %65, i32 0, i32 4
  %67 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %67, i64 %69
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %70, align 8
  store %struct.vhost_virtqueue* %71, %struct.vhost_virtqueue** %13, align 8
  %72 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %73 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %72, i32 0, i32 6
  store i32* null, i32** %73, align 8
  %74 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %75 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %74, i32 0, i32 5
  store i32* null, i32** %75, align 8
  %76 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %77 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %79 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %80 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %79, i32 0, i32 3
  store %struct.vhost_dev* %78, %struct.vhost_dev** %80, align 8
  %81 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %82 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %81, i32 0, i32 2
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %85 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %86 = call i32 @vhost_vq_reset(%struct.vhost_dev* %84, %struct.vhost_virtqueue* %85)
  %87 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %88 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %64
  %92 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %93 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %92, i32 0, i32 1
  %94 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %95 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @EPOLLIN, align 4
  %98 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %99 = call i32 @vhost_poll_init(i32* %93, i64 %96, i32 %97, %struct.vhost_dev* %98)
  br label %100

100:                                              ; preds = %91, %64
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %58

104:                                              ; preds = %58
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vhost_vq_reset(%struct.vhost_dev*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_poll_init(i32*, i64, i32, %struct.vhost_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
