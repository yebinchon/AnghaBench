; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.iblock_dev = type { i64, i64, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to set udev_path= while ib_dev->ibd_bd exists\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@SE_UDEV_PATH_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"IBLOCK: Referencing UDEV path: %s\0A\00", align 1
@IBDF_HAS_UDEV_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"kstrtoul() failed for readonly=\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"IBLOCK: readonly: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @iblock_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iblock_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.se_device*, %struct.se_device** %5, align 8
  %20 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %19)
  store %struct.iblock_dev* %20, %struct.iblock_dev** %8, align 8
  %21 = load i32, i32* @MAX_OPT_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %118

33:                                               ; preds = %3
  %34 = load i8*, i8** %12, align 8
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %105, %42, %33
  %36 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %106

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %35

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @tokens, align 4
  %46 = call i32 @match_token(i8* %44, i32 %45, i32* %24)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  switch i32 %47, label %104 [
    i32 128, label %48
    i32 129, label %78
    i32 130, label %103
  ]

48:                                               ; preds = %43
  %49 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %50 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EEXIST, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %15, align 4
  br label %107

57:                                               ; preds = %48
  %58 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %59 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %24, i64 0
  %62 = load i32, i32* @SE_UDEV_PATH_LEN, align 4
  %63 = call i32 @match_strlcpy(i64 %60, i32* %61, i32 %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %105

68:                                               ; preds = %57
  %69 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %70 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @IBDF_HAS_UDEV_PATH, align 4
  %74 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %75 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %105

78:                                               ; preds = %43
  %79 = getelementptr inbounds i32, i32* %24, i64 0
  %80 = call i8* @match_strdup(i32* %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %105

86:                                               ; preds = %78
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @kstrtoul(i8* %87, i32 0, i64* %17)
  store i32 %88, i32* %15, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %107

95:                                               ; preds = %86
  %96 = load i64, i64* %17, align 8
  %97 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %98 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.iblock_dev*, %struct.iblock_dev** %8, align 8
  %100 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  br label %105

103:                                              ; preds = %43
  br label %105

104:                                              ; preds = %43
  br label %105

105:                                              ; preds = %104, %103, %95, %83, %68, %65
  br label %35

106:                                              ; preds = %35
  br label %107

107:                                              ; preds = %106, %93, %53
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %118

118:                                              ; preds = %116, %30
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @match_strlcpy(i64, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i8* @match_strdup(i32*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
