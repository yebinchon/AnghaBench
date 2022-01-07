; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cedrus_dev = type { i32, i32 }
%struct.cedrus_ctx = type { i32, %struct.TYPE_3__, %struct.cedrus_dev* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cedrus_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cedrus_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca %struct.cedrus_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.cedrus_dev* @video_drvdata(%struct.file* %7)
  store %struct.cedrus_dev* %8, %struct.cedrus_dev** %4, align 8
  store %struct.cedrus_ctx* null, %struct.cedrus_ctx** %5, align 8
  %9 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cedrus_ctx* @kzalloc(i32 16, i32 %17)
  store %struct.cedrus_ctx* %18, %struct.cedrus_ctx** %5, align 8
  %19 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %20 = icmp ne %struct.cedrus_ctx* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %23 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %85

27:                                               ; preds = %16
  %28 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %28, i32 0, i32 1
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @video_devdata(%struct.file* %30)
  %32 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %29, i32 %31)
  %33 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %33, i32 0, i32 1
  %35 = load %struct.file*, %struct.file** %3, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %38 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %38, i32 0, i32 2
  store %struct.cedrus_dev* %37, %struct.cedrus_dev** %39, align 8
  %40 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %41 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %42 = call i32 @cedrus_init_ctrls(%struct.cedrus_dev* %40, %struct.cedrus_ctx* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %78

46:                                               ; preds = %27
  %47 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %51 = call i32 @v4l2_m2m_ctx_init(i32 %49, %struct.cedrus_ctx* %50, i32* @cedrus_queue_init)
  %52 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %74

67:                                               ; preds = %46
  %68 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %68, i32 0, i32 1
  %70 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %69)
  %71 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %72 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %2, align 4
  br label %85

74:                                               ; preds = %61
  %75 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %75, i32 0, i32 0
  %77 = call i32 @v4l2_ctrl_handler_free(i32* %76)
  br label %78

78:                                               ; preds = %74, %45
  %79 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %80 = call i32 @kfree(%struct.cedrus_ctx* %79)
  %81 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %82 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %67, %21, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.cedrus_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.cedrus_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @cedrus_init_ctrls(%struct.cedrus_dev*, %struct.cedrus_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.cedrus_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @kfree(%struct.cedrus_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
