; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_do_unlock_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_do_unlock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.plock_op = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i32, i64, i32, i32, i64, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@DLM_PLOCK_OP_UNLOCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@DLM_PLOCK_FL_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, i32, %struct.file*, %struct.file_lock*)* @do_unlock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_unlock_close(%struct.dlm_ls* %0, i32 %1, %struct.file* %2, %struct.file_lock* %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.plock_op*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  store %struct.file_lock* %3, %struct.file_lock** %8, align 8
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.plock_op* @kzalloc(i32 56, i32 %10)
  store %struct.plock_op* %11, %struct.plock_op** %9, align 8
  %12 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %13 = icmp ne %struct.plock_op* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %79

15:                                               ; preds = %4
  %16 = load i32, i32* @DLM_PLOCK_OP_UNLOCK, align 4
  %17 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %18 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  store i32 %16, i32* %19, align 8
  %20 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %24 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  store i64 %22, i64* %25, align 8
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %27 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %30 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %34 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %37 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @OFFSET_MAX, align 4
  %40 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %41 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %15
  %48 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %60 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  br label %70

62:                                               ; preds = %47, %15
  %63 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %68 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  %71 = load i32, i32* @DLM_PLOCK_FL_CLOSE, align 4
  %72 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %73 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.plock_op*, %struct.plock_op** %9, align 8
  %78 = call i32 @send_op(%struct.plock_op* %77)
  br label %79

79:                                               ; preds = %70, %14
  ret void
}

declare dso_local %struct.plock_op* @kzalloc(i32, i32) #1

declare dso_local i32 @send_op(%struct.plock_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
