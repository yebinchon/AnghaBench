; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.amvdec_core = type { i32, %struct.TYPE_5__*, %struct.device* }
%struct.TYPE_5__ = type { %struct.amvdec_format* }
%struct.amvdec_format = type { i32* }
%struct.device = type { i32 }
%struct.amvdec_session = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.amvdec_format*, i32, %struct.amvdec_core* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vdec_m2m_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Fail to v4l2_m2m_init\0A\00", align 1
@m2m_queue_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Fail to v4l2_m2m_ctx_init\0A\00", align 1
@esparser_queue_all_src = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vdec_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.amvdec_core*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.amvdec_format*, align 8
  %7 = alloca %struct.amvdec_session*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.amvdec_core* @video_drvdata(%struct.file* %9)
  store %struct.amvdec_core* %10, %struct.amvdec_core** %4, align 8
  %11 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %12 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %15 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.amvdec_format*, %struct.amvdec_format** %17, align 8
  store %struct.amvdec_format* %18, %struct.amvdec_format** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.amvdec_session* @kzalloc(i32 96, i32 %19)
  store %struct.amvdec_session* %20, %struct.amvdec_session** %7, align 8
  %21 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %22 = icmp ne %struct.amvdec_session* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %147

26:                                               ; preds = %1
  %27 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %28 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %29 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %28, i32 0, i32 15
  store %struct.amvdec_core* %27, %struct.amvdec_core** %29, align 8
  %30 = call i32 @v4l2_m2m_init(i32* @vdec_m2m_ops)
  %31 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %32 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %34 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %42 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %143

45:                                               ; preds = %26
  %46 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %47 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %50 = load i32, i32* @m2m_queue_init, align 4
  %51 = call i32 @v4l2_m2m_ctx_init(i32 %48, %struct.amvdec_session* %49, i32 %50)
  %52 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %53 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %55 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %63 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %8, align 4
  br label %138

66:                                               ; preds = %45
  %67 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %68 = call i32 @vdec_init_ctrls(%struct.amvdec_session* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %138

72:                                               ; preds = %66
  %73 = load %struct.amvdec_format*, %struct.amvdec_format** %6, align 8
  %74 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %73, i64 0
  %75 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %80 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %79, i32 0, i32 14
  store i32 %78, i32* %80, align 8
  %81 = load %struct.amvdec_format*, %struct.amvdec_format** %6, align 8
  %82 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %81, i64 0
  %83 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %84 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %83, i32 0, i32 13
  store %struct.amvdec_format* %82, %struct.amvdec_format** %84, align 8
  %85 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %86 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %85, i32 0, i32 0
  store i32 1280, i32* %86, align 8
  %87 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %88 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %87, i32 0, i32 1
  store i32 720, i32* %88, align 4
  %89 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %90 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %89, i32 0, i32 12
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %93 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %92, i32 0, i32 12
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %96 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %95, i32 0, i32 11
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %99 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %98, i32 0, i32 10
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %102 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %101, i32 0, i32 9
  %103 = load i32, i32* @esparser_queue_all_src, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %106 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %105, i32 0, i32 8
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %109 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %108, i32 0, i32 7
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %112 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %111, i32 0, i32 6
  %113 = call i32 @spin_lock_init(i32* %112)
  %114 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %115 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %114, i32 0, i32 3
  %116 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %117 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @v4l2_fh_init(%struct.TYPE_7__* %115, i32 %118)
  %120 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %121 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %120, i32 0, i32 5
  %122 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %123 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32* %121, i32** %124, align 8
  %125 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %126 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %125, i32 0, i32 3
  %127 = call i32 @v4l2_fh_add(%struct.TYPE_7__* %126)
  %128 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %129 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %132 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %135 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %134, i32 0, i32 3
  %136 = load %struct.file*, %struct.file** %3, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 0
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %137, align 8
  store i32 0, i32* %2, align 4
  br label %147

138:                                              ; preds = %71, %59
  %139 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %140 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @v4l2_m2m_release(i32 %141)
  br label %143

143:                                              ; preds = %138, %38
  %144 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %145 = call i32 @kfree(%struct.amvdec_session* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %72, %23
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.amvdec_core* @video_drvdata(%struct.file*) #1

declare dso_local %struct.amvdec_session* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.amvdec_session*, i32) #1

declare dso_local i32 @vdec_init_ctrls(%struct.amvdec_session*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @kfree(%struct.amvdec_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
