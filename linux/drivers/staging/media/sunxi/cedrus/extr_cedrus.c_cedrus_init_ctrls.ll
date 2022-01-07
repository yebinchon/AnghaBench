; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_init_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_init_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cedrus_dev = type { i32 }
%struct.cedrus_ctx = type { %struct.TYPE_3__, %struct.v4l2_ctrl**, %struct.v4l2_ctrl_handler }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@CEDRUS_CONTROLS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to initialize control handler\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cedrus_controls = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create new custom control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cedrus_dev*, %struct.cedrus_ctx*)* @cedrus_init_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_init_ctrls(%struct.cedrus_dev* %0, %struct.cedrus_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca %struct.cedrus_ctx*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cedrus_dev* %0, %struct.cedrus_dev** %4, align 8
  store %struct.cedrus_ctx* %1, %struct.cedrus_ctx** %5, align 8
  %10 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %10, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = load i32, i32* @CEDRUS_CONTROLS_COUNT, align 4
  %14 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 %13)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %21 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %20, i32 0, i32 0
  %22 = call i32 @v4l2_err(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load i32, i32* @CEDRUS_CONTROLS_COUNT, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.v4l2_ctrl** @kzalloc(i32 %32, i32 %33)
  %35 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %35, i32 0, i32 1
  store %struct.v4l2_ctrl** %34, %struct.v4l2_ctrl*** %36, align 8
  %37 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %37, i32 0, i32 1
  %39 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %38, align 8
  %40 = icmp ne %struct.v4l2_ctrl** %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %92

44:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %82, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CEDRUS_CONTROLS_COUNT, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cedrus_controls, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %50, i32* %55, i32* null)
  store %struct.v4l2_ctrl* %56, %struct.v4l2_ctrl** %7, align 8
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %49
  %62 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %63 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %62, i32 0, i32 0
  %64 = call i32 @v4l2_err(i32* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %66 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %65)
  %67 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %67, i32 0, i32 1
  %69 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %68, align 8
  %70 = call i32 @kfree(%struct.v4l2_ctrl** %69)
  %71 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  br label %92

74:                                               ; preds = %49
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %76 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %76, i32 0, i32 1
  %78 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %78, i64 %80
  store %struct.v4l2_ctrl* %75, %struct.v4l2_ctrl** %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %45

85:                                               ; preds = %45
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %87 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %86, %struct.v4l2_ctrl_handler** %89, align 8
  %90 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %91 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %61, %41, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.v4l2_ctrl** @kzalloc(i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.v4l2_ctrl**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
