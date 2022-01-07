; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_lock_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_lock_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_args = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@DLM_IFL_MSTCPY = common dso_local global i32 0, align 4
@DLM_LKF_QUECVT = common dso_local global i32 0, align 4
@__quecvt_compat_matrix = common dso_local global i32** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@DLM_LKSTS_GRANTED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"validate_lock_args %d %x %x %x %d %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*)* @validate_lock_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_lock_args(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_args* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_args*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_args* %2, %struct.dlm_args** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %3
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DLM_IFL_MSTCPY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %121

24:                                               ; preds = %16
  %25 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i32**, i32*** @__quecvt_compat_matrix, align 8
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %32, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  br label %121

49:                                               ; preds = %31, %24
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DLM_LKSTS_GRANTED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %121

58:                                               ; preds = %49
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %121

64:                                               ; preds = %58
  %65 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %66 = call i64 @is_overlap(%struct.dlm_lkb* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %121

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %72 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %77 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %76, i32 0, i32 15
  store i64 0, i64* %77, align 8
  %78 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %79 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %82 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %84 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %87 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %89 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %92 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 8
  %93 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %94 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %97 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %99 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %102 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %101, i32 0, i32 11
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %102, align 8
  %103 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %104 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %109 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %115 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %117 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %120 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %70, %68, %63, %57, %48, %23
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %121
  %125 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %128 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %131 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %134 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %137 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %140 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %143 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %142, i32 0, i32 5
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @log_debug(%struct.dlm_ls* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %146)
  br label %148

148:                                              ; preds = %124, %121
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i64 @is_overlap(%struct.dlm_lkb*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
