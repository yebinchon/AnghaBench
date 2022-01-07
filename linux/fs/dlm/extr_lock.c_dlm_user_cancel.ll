; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { i32, i64 }
%struct.dlm_lkb = type { %struct.dlm_user_args* }
%struct.dlm_args = type { i32 }

@DLM_ECANCEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_cancel(%struct.dlm_ls* %0, %struct.dlm_user_args* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_user_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_lkb*, align 8
  %10 = alloca %struct.dlm_args, align 4
  %11 = alloca %struct.dlm_user_args*, align 8
  %12 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_user_args* %1, %struct.dlm_user_args** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %14 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %13)
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @find_lkb(%struct.dlm_ls* %15, i32 %16, %struct.dlm_lkb** %9)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %66

21:                                               ; preds = %4
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %9, align 8
  %23 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %22, i32 0, i32 0
  %24 = load %struct.dlm_user_args*, %struct.dlm_user_args** %23, align 8
  store %struct.dlm_user_args* %24, %struct.dlm_user_args** %11, align 8
  %25 = load %struct.dlm_user_args*, %struct.dlm_user_args** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.dlm_user_args*, %struct.dlm_user_args** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dlm_user_args*, %struct.dlm_user_args** %11, align 8
  %34 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.dlm_user_args*, %struct.dlm_user_args** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dlm_user_args*, %struct.dlm_user_args** %11, align 8
  %40 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dlm_user_args*, %struct.dlm_user_args** %11, align 8
  %43 = call i32 @set_unlock_args(i32 %41, %struct.dlm_user_args* %42, %struct.dlm_args* %10)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %63

47:                                               ; preds = %35
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %49 = load %struct.dlm_lkb*, %struct.dlm_lkb** %9, align 8
  %50 = call i32 @cancel_lock(%struct.dlm_ls* %48, %struct.dlm_lkb* %49, %struct.dlm_args* %10)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @DLM_ECANCEL, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %9, align 8
  %65 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %64)
  br label %66

66:                                               ; preds = %63, %20
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %68 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %67)
  %69 = load %struct.dlm_user_args*, %struct.dlm_user_args** %6, align 8
  %70 = call i32 @kfree(%struct.dlm_user_args* %69)
  %71 = load i32, i32* %12, align 4
  ret i32 %71
}

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @set_unlock_args(i32, %struct.dlm_user_args*, %struct.dlm_args*) #1

declare dso_local i32 @cancel_lock(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @kfree(%struct.dlm_user_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
