; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_add_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.dlm_ls* }
%struct.dlm_ls = type { i32, i32, i32, i32 }

@dlm_cb_seq_spin = common dso_local global i32 0, align 4
@dlm_cb_seq = common dso_local global i64 0, align 8
@DLM_IFL_USER = common dso_local global i32 0, align 4
@LSFL_CB_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_add_cb(%struct.dlm_lkb* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_ls*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %18, align 8
  store %struct.dlm_ls* %19, %struct.dlm_ls** %11, align 8
  %20 = call i32 @spin_lock(i32* @dlm_cb_seq_spin)
  %21 = load i64, i64* @dlm_cb_seq, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @dlm_cb_seq, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* @dlm_cb_seq, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* @dlm_cb_seq, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @dlm_cb_seq, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %25, %5
  %29 = call i32 @spin_unlock(i32* @dlm_cb_seq_spin)
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DLM_IFL_USER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @dlm_user_add_ast(%struct.dlm_lkb* %37, i32 %38, i32 %39, i32 %40, i32 %41, i64 %42)
  br label %101

44:                                               ; preds = %28
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @dlm_add_lkb_callback(%struct.dlm_lkb* %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %97

64:                                               ; preds = %44
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %64
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %69 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %68, i32 0, i32 4
  %70 = call i32 @kref_get(i32* %69)
  %71 = load i32, i32* @LSFL_CB_DELAY, align 4
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %11, align 8
  %73 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %72, i32 0, i32 3
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load %struct.dlm_ls*, %struct.dlm_ls** %11, align 8
  %78 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %81 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %80, i32 0, i32 3
  %82 = load %struct.dlm_ls*, %struct.dlm_ls** %11, align 8
  %83 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %82, i32 0, i32 2
  %84 = call i32 @list_add(i32* %81, i32* %83)
  %85 = load %struct.dlm_ls*, %struct.dlm_ls** %11, align 8
  %86 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  br label %95

88:                                               ; preds = %67
  %89 = load %struct.dlm_ls*, %struct.dlm_ls** %11, align 8
  %90 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %93 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %92, i32 0, i32 2
  %94 = call i32 @queue_work(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %88, %76
  br label %96

96:                                               ; preds = %95, %64
  br label %97

97:                                               ; preds = %96, %63
  %98 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %99 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %36
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_user_add_ast(%struct.dlm_lkb*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlm_add_lkb_callback(%struct.dlm_lkb*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
