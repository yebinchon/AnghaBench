; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_user_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_lkb = type { %struct.dlm_user_args* }
%struct.dlm_args = type { i32 }

@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_USER_LVB_LEN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fake_astfn = common dso_local global i32 0, align 4
@fake_bastfn = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_convert(%struct.dlm_ls* %0, %struct.dlm_user_args* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.dlm_ls*, align 8
  %9 = alloca %struct.dlm_user_args*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.dlm_lkb*, align 8
  %16 = alloca %struct.dlm_args, align 4
  %17 = alloca %struct.dlm_user_args*, align 8
  %18 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %8, align 8
  store %struct.dlm_user_args* %1, %struct.dlm_user_args** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %20 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %19)
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @find_lkb(%struct.dlm_ls* %21, i32 %22, %struct.dlm_lkb** %15)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %140

27:                                               ; preds = %7
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %15, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 0
  %30 = load %struct.dlm_user_args*, %struct.dlm_user_args** %29, align 8
  store %struct.dlm_user_args* %30, %struct.dlm_user_args** %17, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %27
  %36 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %37 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @DLM_USER_LVB_LEN, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call i64 @kzalloc(i32 %42, i32 %43)
  %45 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %46 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %49 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %18, align 4
  br label %137

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %35, %27
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %62 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %68 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* @DLM_USER_LVB_LEN, align 4
  %73 = call i32 @memcpy(i64 %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %60, %57
  %75 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %76 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %79 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %81 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %84 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %86 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %89 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %91 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %94 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %96 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %99 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %101 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %104 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %107 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %106, i32 0, i32 0
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* %14, align 8
  %110 = load i32, i32* @fake_astfn, align 4
  %111 = load %struct.dlm_user_args*, %struct.dlm_user_args** %17, align 8
  %112 = load i32, i32* @fake_bastfn, align 4
  %113 = call i32 @set_lock_args(i32 %105, %struct.TYPE_2__* %107, i32 %108, i32 0, i64 %109, i32 %110, %struct.dlm_user_args* %111, i32 %112, %struct.dlm_args* %16)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %74
  br label %137

117:                                              ; preds = %74
  %118 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %119 = load %struct.dlm_lkb*, %struct.dlm_lkb** %15, align 8
  %120 = call i32 @convert_lock(%struct.dlm_ls* %118, %struct.dlm_lkb* %119, %struct.dlm_args* %16)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @EINPROGRESS, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @EAGAIN, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @EDEADLK, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125, %117
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %116, %53
  %138 = load %struct.dlm_lkb*, %struct.dlm_lkb** %15, align 8
  %139 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %138)
  br label %140

140:                                              ; preds = %137, %26
  %141 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %142 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %141)
  %143 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %144 = call i32 @kfree(%struct.dlm_user_args* %143)
  %145 = load i32, i32* %18, align 4
  ret i32 %145
}

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @set_lock_args(i32, %struct.TYPE_2__*, i32, i32, i64, i32, %struct.dlm_user_args*, i32, %struct.dlm_args*) #1

declare dso_local i32 @convert_lock(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @kfree(%struct.dlm_user_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
