; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_request_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_request_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vrfb = type { i32, i64* }

@.str = private unnamed_addr constant [13 x i8] c"request ctx\0A\00", align 1
@ctx_lock = common dso_local global i32 0, align 4
@num_ctxs = common dso_local global i32 0, align 4
@ctx_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"vrfb: no free contexts\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"found free ctx %d\0A\00", align 1
@ctxs = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP_VRFB_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vrfb\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"vrfb: failed to reserve VRFB area for ctx %d, rotation %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"VRFB %d/%d: %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_vrfb_request_ctx(%struct.vrfb* %0) #0 {
  %2 = alloca %struct.vrfb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vrfb* %0, %struct.vrfb** %2, align 8
  %7 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @mutex_lock(i32* @ctx_lock)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @num_ctxs, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* @ctx_map, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %9

24:                                               ; preds = %19, %9
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @num_ctxs, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %91

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @set_bit(i32 %35, i32* @ctx_map)
  %37 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %38 = call i32 @memset(%struct.vrfb* %37, i32 0, i32 16)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %41 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %87, %32
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %90

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctxs, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @SMS_ROT_VIRT_BASE(i32 %52)
  %54 = add nsw i64 %51, %53
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @OMAP_VRFB_SIZE, align 4
  %57 = call i32 @request_mem_region(i64 %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = mul nsw i32 %61, 90
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %65 = call i32 @omap_vrfb_release_ctx(%struct.vrfb* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %91

68:                                               ; preds = %45
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %71 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %69, i64* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %77, 90
  %79 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %80 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %78, i64 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %42

90:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %59, %28
  %92 = call i32 @mutex_unlock(i32* @ctx_lock)
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.vrfb*, i32, i32) #1

declare dso_local i64 @SMS_ROT_VIRT_BASE(i32) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @omap_vrfb_release_ctx(%struct.vrfb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
