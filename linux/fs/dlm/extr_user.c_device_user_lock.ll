; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_user_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_user_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_user_proc = type { i32 }
%struct.dlm_lock_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { %struct.TYPE_2__, i32, i32, i32, i64, i32, i64, %struct.dlm_user_proc* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@DLM_LKF_ORPHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_user_proc*, %struct.dlm_lock_params*)* @device_user_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_user_lock(%struct.dlm_user_proc* %0, %struct.dlm_lock_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_user_proc*, align 8
  %5 = alloca %struct.dlm_lock_params*, align 8
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_user_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_user_proc* %0, %struct.dlm_user_proc** %4, align 8
  store %struct.dlm_lock_params* %1, %struct.dlm_lock_params** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %14)
  store %struct.dlm_ls* %15, %struct.dlm_ls** %6, align 8
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %17 = icmp ne %struct.dlm_ls* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %27, i32 0, i32 12
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %159

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.dlm_user_args* @kzalloc(i32 48, i32 %35)
  store %struct.dlm_user_args* %36, %struct.dlm_user_args** %7, align 8
  %37 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %38 = icmp ne %struct.dlm_user_args* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %159

40:                                               ; preds = %34
  %41 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %42 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %43 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %42, i32 0, i32 7
  store %struct.dlm_user_proc* %41, %struct.dlm_user_proc** %43, align 8
  %44 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %44, i32 0, i32 12
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %48 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %50 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %53 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %54, i32 0, i32 10
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %58 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %63 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %68 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %73 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %40
  %81 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %82 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %83 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %84 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %87 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %90 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %93 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @dlm_user_convert(%struct.dlm_ls* %81, %struct.dlm_user_args* %82, i32 %85, i32 %88, i32 %91, i32 %94, i64 %97)
  store i32 %98, i32* %9, align 4
  br label %158

99:                                               ; preds = %40
  %100 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %101 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DLM_LKF_ORPHAN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  %107 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %108 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %109 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %110 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %113 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %116 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %119 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %122 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @dlm_user_adopt_orphan(%struct.dlm_ls* %107, %struct.dlm_user_args* %108, i32 %111, i32 %114, i32 %117, i32 %120, i64 %123, i32* %8)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %106
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %127, %106
  br label %157

130:                                              ; preds = %99
  %131 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %132 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %133 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %134 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %137 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %140 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %143 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %146 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @dlm_user_request(%struct.dlm_ls* %131, %struct.dlm_user_args* %132, i32 %135, i32 %138, i32 %141, i32 %144, i64 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %130
  %152 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %153 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %151, %130
  br label %157

157:                                              ; preds = %156, %129
  br label %158

158:                                              ; preds = %157, %80
  br label %159

159:                                              ; preds = %158, %39, %31
  %160 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %161 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %18
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local %struct.dlm_user_args* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_user_convert(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_user_adopt_orphan(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @dlm_user_request(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
