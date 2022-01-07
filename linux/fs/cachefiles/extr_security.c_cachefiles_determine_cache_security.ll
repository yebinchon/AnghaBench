; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_security.c_cachefiles_determine_cache_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_security.c_cachefiles_determine_cache_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { %struct.cred* }
%struct.cred = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = %d [cfa]\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_determine_cache_security(%struct.cachefiles_cache* %0, %struct.dentry* %1, %struct.cred** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.cred**, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.cred** %2, %struct.cred*** %7, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %11, %struct.cred** %8, align 8
  %12 = load %struct.cred*, %struct.cred** %8, align 8
  %13 = icmp ne %struct.cred* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %19 = load %struct.cred**, %struct.cred*** %7, align 8
  %20 = load %struct.cred*, %struct.cred** %19, align 8
  %21 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %18, %struct.cred* %20)
  %22 = load %struct.cred*, %struct.cred** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @d_backing_inode(%struct.dentry* %23)
  %25 = call i32 @set_create_files_as(%struct.cred* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.cred*, %struct.cred** %8, align 8
  %30 = call i32 @abort_creds(%struct.cred* %29)
  %31 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %32 = load %struct.cred**, %struct.cred*** %7, align 8
  %33 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %31, %struct.cred** %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %17
  %38 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %39 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %38, i32 0, i32 0
  %40 = load %struct.cred*, %struct.cred** %39, align 8
  %41 = call i32 @put_cred(%struct.cred* %40)
  %42 = load %struct.cred*, %struct.cred** %8, align 8
  %43 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %44 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %43, i32 0, i32 0
  store %struct.cred* %42, %struct.cred** %44, align 8
  %45 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %46 = load %struct.cred**, %struct.cred*** %7, align 8
  %47 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %45, %struct.cred** %46)
  %48 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = call i32 @cachefiles_check_cache_dir(%struct.cachefiles_cache* %48, %struct.dentry* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %28, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @set_create_files_as(%struct.cred*, i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @cachefiles_check_cache_dir(%struct.cachefiles_cache*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
