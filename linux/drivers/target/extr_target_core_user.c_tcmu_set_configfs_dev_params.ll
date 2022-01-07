; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcmu_dev = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@TCMU_CONFIG_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TCMU: Referencing Path: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"match_u64() failed for dev_size=. Error %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"match_int() failed for nl_reply_supported=. Error %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @tcmu_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcmu_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.se_device*, %struct.se_device** %5, align 8
  %18 = call %struct.tcmu_dev* @TCMU_DEV(%struct.se_device* %17)
  store %struct.tcmu_dev* %18, %struct.tcmu_dev** %8, align 8
  %19 = load i32, i32* @MAX_OPT_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %117

31:                                               ; preds = %3
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %105, %40, %31
  %34 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %33

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @tokens, align 4
  %44 = call i32 @match_token(i8* %42, i32 %43, i32* %22)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  switch i32 %45, label %100 [
    i32 133, label %46
    i32 132, label %62
    i32 131, label %73
    i32 130, label %79
    i32 128, label %85
    i32 129, label %96
  ]

46:                                               ; preds = %41
  %47 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %48 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %22, i64 0
  %51 = load i32, i32* @TCMU_CONFIG_LEN, align 4
  %52 = call i32 @match_strlcpy(i32 %49, i32* %50, i32 %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %59 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %101

62:                                               ; preds = %41
  %63 = getelementptr inbounds i32, i32* %22, i64 0
  %64 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %65 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %64, i32 0, i32 1
  %66 = call i32 @match_u64(i32* %63, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %101

73:                                               ; preds = %41
  %74 = getelementptr inbounds i32, i32* %22, i64 0
  %75 = load %struct.se_device*, %struct.se_device** %5, align 8
  %76 = getelementptr inbounds %struct.se_device, %struct.se_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @tcmu_set_dev_attrib(i32* %74, i32* %77)
  store i32 %78, i32* %14, align 4
  br label %101

79:                                               ; preds = %41
  %80 = getelementptr inbounds i32, i32* %22, i64 0
  %81 = load %struct.se_device*, %struct.se_device** %5, align 8
  %82 = getelementptr inbounds %struct.se_device, %struct.se_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @tcmu_set_dev_attrib(i32* %80, i32* %83)
  store i32 %84, i32* %14, align 4
  br label %101

85:                                               ; preds = %41
  %86 = getelementptr inbounds i32, i32* %22, i64 0
  %87 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %88 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %87, i32 0, i32 0
  %89 = call i32 @match_int(i32* %86, i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %85
  br label %101

96:                                               ; preds = %41
  %97 = load %struct.tcmu_dev*, %struct.tcmu_dev** %8, align 8
  %98 = getelementptr inbounds i32, i32* %22, i64 0
  %99 = call i32 @tcmu_set_max_blocks_param(%struct.tcmu_dev* %97, i32* %98)
  store i32 %99, i32* %14, align 4
  br label %101

100:                                              ; preds = %41
  br label %101

101:                                              ; preds = %100, %96, %95, %79, %73, %72, %57, %54
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  br label %33

106:                                              ; preds = %104, %33
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %7, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %117

117:                                              ; preds = %115, %28
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.tcmu_dev* @TCMU_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_strlcpy(i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @match_u64(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @tcmu_set_dev_attrib(i32*, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @tcmu_set_max_blocks_param(%struct.tcmu_dev*, i32*) #1

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
