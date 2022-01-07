; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_posix_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_posix_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i8, i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dlm_ls = type { i32 }
%struct.plock_op = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FL_EXISTS = common dso_local global i8 0, align 1
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dlm_posix_unlock: vfs unlock error %d %llx\00", align 1
@DLM_PLOCK_OP_UNLOCK = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@DLM_PLOCK_FL_CLOSE = common dso_local global i32 0, align 4
@recv_wq = common dso_local global i32 0, align 4
@ops_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dlm_posix_unlock: op on list %llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_posix_unlock(i32* %0, i64 %1, %struct.file* %2, %struct.file_lock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca %struct.dlm_ls*, align 8
  %11 = alloca %struct.plock_op*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.file_lock* %3, %struct.file_lock** %9, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  store i8 %16, i8* %13, align 1
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %17)
  store %struct.dlm_ls* %18, %struct.dlm_ls** %10, align 8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %20 = icmp ne %struct.dlm_ls* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %179

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.plock_op* @kzalloc(i32 72, i32 %25)
  store %struct.plock_op* %26, %struct.plock_op** %11, align 8
  %27 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %28 = icmp ne %struct.plock_op* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %172

32:                                               ; preds = %24
  %33 = load i8, i8* @FL_EXISTS, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %34
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 8
  %41 = load %struct.file*, %struct.file** %8, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %43 = call i32 @locks_lock_file_wait(%struct.file* %41, %struct.file_lock* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %169

49:                                               ; preds = %32
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_error(%struct.dlm_ls* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* @DLM_PLOCK_OP_UNLOCK, align 4
  %60 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %61 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 8
  store i32 %59, i32* %62, align 8
  %63 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %67 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i64 %65, i64* %68, align 8
  %69 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %70 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %73 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %77 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i64 %75, i64* %78, align 8
  %79 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %80 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %83 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %89 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 8
  %91 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %92 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = icmp ne %struct.TYPE_3__* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %58
  %96 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %97 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %104 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %108 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i8* %106, i8** %109, align 8
  br label %118

110:                                              ; preds = %95, %58
  %111 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %112 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %116 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %110, %102
  %119 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %120 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %119, i32 0, i32 0
  %121 = load i8, i8* %120, align 8
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* @FL_CLOSE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32, i32* @DLM_PLOCK_FL_CLOSE, align 4
  %128 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %129 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %134 = call i32 @send_op(%struct.plock_op* %133)
  store i32 0, i32* %12, align 4
  br label %172

135:                                              ; preds = %118
  %136 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %137 = call i32 @send_op(%struct.plock_op* %136)
  %138 = load i32, i32* @recv_wq, align 4
  %139 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %140 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @wait_event(i32 %138, i32 %143)
  %145 = call i32 @spin_lock(i32* @ops_lock)
  %146 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %147 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %146, i32 0, i32 2
  %148 = call i32 @list_empty(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %135
  %151 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_error(%struct.dlm_ls* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  %154 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %155 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %154, i32 0, i32 2
  %156 = call i32 @list_del(i32* %155)
  br label %157

157:                                              ; preds = %150, %135
  %158 = call i32 @spin_unlock(i32* @ops_lock)
  %159 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %160 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @ENOENT, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %167, %157
  br label %169

169:                                              ; preds = %168, %48
  %170 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %171 = call i32 @kfree(%struct.plock_op* %170)
  br label %172

172:                                              ; preds = %169, %126, %29
  %173 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %174 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %173)
  %175 = load i8, i8* %13, align 1
  %176 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %177 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %176, i32 0, i32 0
  store i8 %175, i8* %177, align 8
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %172, %21
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local %struct.plock_op* @kzalloc(i32, i32) #1

declare dso_local i32 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64, ...) #1

declare dso_local i32 @send_op(%struct.plock_op*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.plock_op*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
