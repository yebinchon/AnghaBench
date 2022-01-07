; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_parse_device_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_parse_device_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@uuid_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@Opt_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @btrfs_parse_device_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_parse_device_options(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.btrfs_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @MAX_OPT_ARGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = call i32 @lockdep_assert_held(i32* @uuid_mutex)
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %80

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %80

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %74, %44, %35
  %38 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %37

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @tokens, align 4
  %48 = call i32 @match_token(i8* %46, i32 %47, i32* %21)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @Opt_device, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %45
  %53 = getelementptr inbounds i32, i32* %21, i64 0
  %54 = call i8* @match_strdup(i32* %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  br label %76

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call %struct.btrfs_device* @btrfs_scan_one_device(i8* %61, i32 %62, i8* %63)
  store %struct.btrfs_device* %64, %struct.btrfs_device** %14, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load %struct.btrfs_device*, %struct.btrfs_device** %14, align 8
  %68 = call i64 @IS_ERR(%struct.btrfs_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.btrfs_device*, %struct.btrfs_device** %14, align 8
  %72 = call i32 @PTR_ERR(%struct.btrfs_device* %71)
  store i32 %72, i32* %15, align 4
  br label %76

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %45
  br label %37

75:                                               ; preds = %37
  br label %76

76:                                               ; preds = %75, %70, %57
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %80

80:                                               ; preds = %76, %32, %25
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local %struct.btrfs_device* @btrfs_scan_one_device(i8*, i32, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i64 @IS_ERR(%struct.btrfs_device*) #2

declare dso_local i32 @PTR_ERR(%struct.btrfs_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
