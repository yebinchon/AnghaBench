; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dlm_lkb = type { i32, %struct.dlm_user_args* }
%struct.dlm_args = type { i32 }

@DLM_USER_LVB_LEN = common dso_local global i32 0, align 4
@DLM_EUNLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DLM_LKF_FORCEUNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_unlock(%struct.dlm_ls* %0, %struct.dlm_user_args* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_user_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dlm_lkb*, align 8
  %12 = alloca %struct.dlm_args, align 4
  %13 = alloca %struct.dlm_user_args*, align 8
  %14 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %6, align 8
  store %struct.dlm_user_args* %1, %struct.dlm_user_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %16 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %15)
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @find_lkb(%struct.dlm_ls* %17, i32 %18, %struct.dlm_lkb** %11)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %117

23:                                               ; preds = %5
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %11, align 8
  %25 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %24, i32 0, i32 1
  %26 = load %struct.dlm_user_args*, %struct.dlm_user_args** %25, align 8
  store %struct.dlm_user_args* %26, %struct.dlm_user_args** %13, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %31 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %37 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @DLM_USER_LVB_LEN, align 4
  %42 = call i32 @memcpy(i64 %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %29, %23
  %44 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %45 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %50 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %53 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %56 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %59 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %62 = call i32 @set_unlock_args(i32 %60, %struct.dlm_user_args* %61, %struct.dlm_args* %12)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %114

66:                                               ; preds = %54
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %11, align 8
  %69 = call i32 @unlock_lock(%struct.dlm_ls* %67, %struct.dlm_lkb* %68, %struct.dlm_args* %12)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DLM_EUNLOCK, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @DLM_LKF_FORCEUNLOCK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %80, %75
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %114

90:                                               ; preds = %86
  %91 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %92 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.dlm_lkb*, %struct.dlm_lkb** %11, align 8
  %97 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %96, i32 0, i32 0
  %98 = call i32 @list_empty(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %90
  %101 = load %struct.dlm_lkb*, %struct.dlm_lkb** %11, align 8
  %102 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %101, i32 0, i32 0
  %103 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %104 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = call i32 @list_move(i32* %102, i32* %106)
  br label %108

108:                                              ; preds = %100, %90
  %109 = load %struct.dlm_user_args*, %struct.dlm_user_args** %13, align 8
  %110 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  br label %114

114:                                              ; preds = %108, %89, %65
  %115 = load %struct.dlm_lkb*, %struct.dlm_lkb** %11, align 8
  %116 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %115)
  br label %117

117:                                              ; preds = %114, %22
  %118 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %119 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %118)
  %120 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %121 = call i32 @kfree(%struct.dlm_user_args* %120)
  %122 = load i32, i32* %14, align 4
  ret i32 %122
}

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @set_unlock_args(i32, %struct.dlm_user_args*, %struct.dlm_args*) #1

declare dso_local i32 @unlock_lock(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @kfree(%struct.dlm_user_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
