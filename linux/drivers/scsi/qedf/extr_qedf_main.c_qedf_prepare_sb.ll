; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_prepare_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_prepare_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_2__**, i32, %struct.qedf_fastpath* }
%struct.TYPE_2__ = type { i32 }
%struct.qedf_fastpath = type { i32, i32, %struct.qedf_ctx*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fastpath array allocation failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDF_SB_ID_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SB info struct allocation failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SB allocation and initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_prepare_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_prepare_sb(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedf_fastpath*, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  %7 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kcalloc(i32 %9, i32 24, i32 %10)
  %12 = bitcast i8* %11 to %struct.qedf_fastpath*
  %13 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %13, i32 0, i32 3
  store %struct.qedf_fastpath* %12, %struct.qedf_fastpath** %14, align 8
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 3
  %17 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %16, align 8
  %18 = icmp ne %struct.qedf_fastpath* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 2
  %22 = call i32 @QEDF_ERR(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %88, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  %33 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %33, i32 0, i32 3
  %35 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %35, i64 %37
  store %struct.qedf_fastpath* %38, %struct.qedf_fastpath** %5, align 8
  %39 = load i32, i32* @QEDF_SB_ID_NULL, align 4
  %40 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %41 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i32 1, i32 1, i32 %42)
  %44 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %47 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %32
  %51 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %51, i32 0, i32 2
  %53 = call i32 @QEDF_ERR(i32* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %92

54:                                               ; preds = %32
  %55 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %56 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %57 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @qedf_alloc_and_init_sb(%struct.qedf_ctx* %55, i8* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %64, i32 0, i32 2
  %66 = call i32 @QEDF_ERR(i32* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %92

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %70 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %72 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %73 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %72, i32 0, i32 2
  store %struct.qedf_ctx* %71, %struct.qedf_ctx** %73, align 8
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %5, align 8
  %87 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %26

91:                                               ; preds = %26
  br label %92

92:                                               ; preds = %91, %63, %50
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %19
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @qedf_alloc_and_init_sb(%struct.qedf_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
