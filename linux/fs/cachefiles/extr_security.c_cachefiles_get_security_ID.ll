; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_security.c_cachefiles_get_security_ID.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_security.c_cachefiles_get_security_ID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { %struct.cred*, i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@current = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Security denies permission to nominate security context: error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_get_security_ID(%struct.cachefiles_cache* %0) #0 {
  %2 = alloca %struct.cachefiles_cache*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %2, align 8
  %5 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %6 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.cred* @prepare_kernel_cred(i32 %9)
  store %struct.cred* %10, %struct.cred** %3, align 8
  %11 = load %struct.cred*, %struct.cred** %3, align 8
  %12 = icmp ne %struct.cred* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %18 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.cred*, %struct.cred** %3, align 8
  %23 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %24 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @set_security_override_from_ctx(%struct.cred* %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.cred*, %struct.cred** %3, align 8
  %31 = call i32 @put_cred(%struct.cred* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.cred*, %struct.cred** %3, align 8
  %37 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %38 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %37, i32 0, i32 0
  store %struct.cred* %36, %struct.cred** %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %29, %13
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local %struct.cred* @prepare_kernel_cred(i32) #1

declare dso_local i32 @set_security_override_from_ctx(%struct.cred*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
