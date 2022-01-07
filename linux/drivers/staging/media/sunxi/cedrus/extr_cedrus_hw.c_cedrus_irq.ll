; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_dev = type { i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)* }
%struct.cedrus_ctx = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Instance released before the end of transaction\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@CEDRUS_IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Missing source and/or destination buffers\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CEDRUS_IRQ_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cedrus_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cedrus_dev*, align 8
  %7 = alloca %struct.cedrus_ctx*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cedrus_dev*
  store %struct.cedrus_dev* %13, %struct.cedrus_dev** %6, align 8
  %14 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %15 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.cedrus_ctx* @v4l2_m2m_get_curr_priv(i32 %16)
  store %struct.cedrus_ctx* %17, %struct.cedrus_ctx** %7, align 8
  %18 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %19 = icmp ne %struct.cedrus_ctx* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %22 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %21, i32 0, i32 0
  %23 = call i32 @v4l2_err(i32* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %2
  %26 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %27 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %34, align 8
  %36 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %37 = call i32 %35(%struct.cedrus_ctx* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @CEDRUS_IRQ_NONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %25
  %44 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %45 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %52, align 8
  %54 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %55 = call i32 %53(%struct.cedrus_ctx* %54)
  %56 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %57 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %64, align 8
  %66 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %67 = call i32 %65(%struct.cedrus_ctx* %66)
  %68 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %71)
  store %struct.vb2_v4l2_buffer* %72, %struct.vb2_v4l2_buffer** %8, align 8
  %73 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %76)
  store %struct.vb2_v4l2_buffer* %77, %struct.vb2_v4l2_buffer** %9, align 8
  %78 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %79 = icmp ne %struct.vb2_v4l2_buffer* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %43
  %81 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %82 = icmp ne %struct.vb2_v4l2_buffer* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %80, %43
  %84 = load %struct.cedrus_dev*, %struct.cedrus_dev** %6, align 8
  %85 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %84, i32 0, i32 0
  %86 = call i32 @v4l2_err(i32* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @CEDRUS_IRQ_ERROR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %93, i32* %10, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %97, i32 %98)
  %100 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %100, i32 %101)
  %103 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %7, align 8
  %109 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @v4l2_m2m_job_finish(i32 %107, i32 %111)
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %96, %83, %41, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.cedrus_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
