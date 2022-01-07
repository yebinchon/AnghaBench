; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_dump_lkb_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_dump_lkb_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"last_bast %x %llu flags %x mode %d sb %d %x\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"last_cast %x %llu flags %x mode %d sb %d %x\00", align 1
@DLM_CALLBACKS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cb %x %llu flags %x mode %d sb %d %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lkb*)* @dlm_dump_lkb_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_dump_lkb_callbacks(%struct.dlm_lkb* %0) #0 {
  %2 = alloca %struct.dlm_lkb*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %2, align 8
  %4 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %24 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %10, i32 %14, i32 %18, i32 %22, i32 %26)
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %40 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %44 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %48 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %34, i32 %38, i32 %42, i32 %46, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %101, %1
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @DLM_CALLBACKS_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %104

56:                                               ; preds = %52
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %61 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %69 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %77 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %85 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %93 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %67, i32 %75, i32 %83, i32 %91, i32 %99)
  br label %101

101:                                              ; preds = %56
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %52

104:                                              ; preds = %52
  ret void
}

declare dso_local i32 @log_print(i8*, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
