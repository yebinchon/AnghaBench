; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_posix_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_plock.c_dlm_posix_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64, i64, %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.dlm_ls = type { i32 }
%struct.plock_op = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i64, i32, i32, i64, i32 }
%struct.plock_xop = type { i32*, %struct.file*, %struct.file_lock*, i32, %struct.plock_op }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_PLOCK_OP_LOCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@recv_wq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dlm_posix_lock: wait killed %llx\00", align 1
@ops_lock = common dso_local global i32 0, align 4
@FILE_LOCK_DEFERRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dlm_posix_lock: op on list %llx\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"dlm_posix_lock: vfs lock error %llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_posix_lock(i32* %0, i64 %1, %struct.file* %2, i32 %3, %struct.file_lock* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_lock*, align 8
  %12 = alloca %struct.dlm_ls*, align 8
  %13 = alloca %struct.plock_op*, align 8
  %14 = alloca %struct.plock_xop*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.file_lock* %4, %struct.file_lock** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %16)
  store %struct.dlm_ls* %17, %struct.dlm_ls** %12, align 8
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %19 = icmp ne %struct.dlm_ls* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %205

23:                                               ; preds = %5
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.plock_xop* @kzalloc(i32 104, i32 %24)
  store %struct.plock_xop* %25, %struct.plock_xop** %14, align 8
  %26 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %27 = icmp ne %struct.plock_xop* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %15, align 4
  br label %201

31:                                               ; preds = %23
  %32 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %33 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %32, i32 0, i32 4
  store %struct.plock_op* %33, %struct.plock_op** %13, align 8
  %34 = load i32, i32* @DLM_PLOCK_OP_LOCK, align 4
  %35 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %36 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 8
  %38 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %42 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i64 %40, i64* %43, align 8
  %44 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @F_WRLCK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %51 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @IS_SETLKW(i32 %53)
  %55 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %56 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  store i32 %54, i32* %57, align 4
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %62 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %66 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  store i64 %64, i64* %67, align 8
  %68 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %72 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %78 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %81 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  br i1 %83, label %84, label %119

84:                                               ; preds = %31
  %85 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %119

91:                                               ; preds = %84
  %92 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %93 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %97 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %100 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %105 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %104, i32 0, i32 0
  store i32* %103, i32** %105, align 8
  %106 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %107 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %106, i32 0, i32 3
  %108 = call i32 @locks_init_lock(i32* %107)
  %109 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %110 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %109, i32 0, i32 3
  %111 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %112 = call i32 @locks_copy_lock(i32* %110, %struct.file_lock* %111)
  %113 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %114 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %115 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %114, i32 0, i32 2
  store %struct.file_lock* %113, %struct.file_lock** %115, align 8
  %116 = load %struct.file*, %struct.file** %9, align 8
  %117 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %118 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %117, i32 0, i32 1
  store %struct.file* %116, %struct.file** %118, align 8
  br label %129

119:                                              ; preds = %84, %31
  %120 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %121 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %125 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %128 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %119, %91
  %130 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %131 = call i32 @send_op(%struct.plock_op* %130)
  %132 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %133 = getelementptr inbounds %struct.plock_xop, %struct.plock_xop* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %165

136:                                              ; preds = %129
  %137 = load i32, i32* @recv_wq, align 4
  %138 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %139 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @wait_event_interruptible(i32 %137, i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @ERESTARTSYS, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %136
  %149 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @log_debug(%struct.dlm_ls* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %150)
  %152 = call i32 @spin_lock(i32* @ops_lock)
  %153 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %154 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %153, i32 0, i32 2
  %155 = call i32 @list_del(i32* %154)
  %156 = call i32 @spin_unlock(i32* @ops_lock)
  %157 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %158 = call i32 @kfree(%struct.plock_xop* %157)
  %159 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.file*, %struct.file** %9, align 8
  %162 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %163 = call i32 @do_unlock_close(%struct.dlm_ls* %159, i64 %160, %struct.file* %161, %struct.file_lock* %162)
  br label %201

164:                                              ; preds = %136
  br label %167

165:                                              ; preds = %129
  %166 = load i32, i32* @FILE_LOCK_DEFERRED, align 4
  store i32 %166, i32* %15, align 4
  br label %201

167:                                              ; preds = %164
  %168 = call i32 @spin_lock(i32* @ops_lock)
  %169 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %170 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %169, i32 0, i32 2
  %171 = call i32 @list_empty(i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %167
  %174 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @log_error(%struct.dlm_ls* %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %175)
  %177 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %178 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %177, i32 0, i32 2
  %179 = call i32 @list_del(i32* %178)
  br label %180

180:                                              ; preds = %173, %167
  %181 = call i32 @spin_unlock(i32* @ops_lock)
  %182 = load %struct.plock_op*, %struct.plock_op** %13, align 8
  %183 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %180
  %189 = load %struct.file*, %struct.file** %9, align 8
  %190 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %191 = call i64 @locks_lock_file_wait(%struct.file* %189, %struct.file_lock* %190)
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %195 = load i64, i64* %8, align 8
  %196 = call i32 @log_error(%struct.dlm_ls* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %193, %188
  br label %198

198:                                              ; preds = %197, %180
  %199 = load %struct.plock_xop*, %struct.plock_xop** %14, align 8
  %200 = call i32 @kfree(%struct.plock_xop* %199)
  br label %201

201:                                              ; preds = %198, %165, %148, %28
  %202 = load %struct.dlm_ls*, %struct.dlm_ls** %12, align 8
  %203 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %202)
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %201, %20
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local %struct.plock_xop* @kzalloc(i32, i32) #1

declare dso_local i32 @IS_SETLKW(i32) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i32 @locks_copy_lock(i32*, %struct.file_lock*) #1

declare dso_local i32 @send_op(%struct.plock_op*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.plock_xop*) #1

declare dso_local i32 @do_unlock_close(%struct.dlm_ls*, i64, %struct.file*, %struct.file_lock*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i64 @locks_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
