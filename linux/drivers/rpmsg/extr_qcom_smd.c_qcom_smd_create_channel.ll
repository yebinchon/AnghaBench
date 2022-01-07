; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i64, %struct.qcom_smd_channel*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.qcom_smd_edge* }
%struct.qcom_smd_edge = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"channel info of size %zu not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"new channel '%s' info-size: %zu fifo-size: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qcom_smd_channel* (%struct.qcom_smd_edge*, i32, i32, i8*)* @qcom_smd_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qcom_smd_channel* @qcom_smd_create_channel(%struct.qcom_smd_edge* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.qcom_smd_channel*, align 8
  %6 = alloca %struct.qcom_smd_edge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qcom_smd_channel*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.qcom_smd_edge* %0, %struct.qcom_smd_edge** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qcom_smd_channel* @kzalloc(i32 72, i32 %16)
  store %struct.qcom_smd_channel* %17, %struct.qcom_smd_channel** %10, align 8
  %18 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %19 = icmp ne %struct.qcom_smd_channel* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.qcom_smd_channel* @ERR_PTR(i32 %22)
  store %struct.qcom_smd_channel* %23, %struct.qcom_smd_channel** %5, align 8
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %26 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %27 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %26, i32 0, i32 10
  store %struct.qcom_smd_edge* %25, %struct.qcom_smd_edge** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.qcom_smd_channel* @kstrdup(i8* %28, i32 %29)
  %31 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %32 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %31, i32 0, i32 1
  store %struct.qcom_smd_channel* %30, %struct.qcom_smd_channel** %32, align 8
  %33 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %34 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %33, i32 0, i32 1
  %35 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %34, align 8
  %36 = icmp ne %struct.qcom_smd_channel* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %15, align 4
  br label %126

40:                                               ; preds = %24
  %41 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %42 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %41, i32 0, i32 9
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %45 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %44, i32 0, i32 8
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %48 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %47, i32 0, i32 7
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %51 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %50, i32 0, i32 6
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %54 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @qcom_smem_get(i32 %55, i32 %56, i64* %12)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %15, align 4
  br label %121

64:                                               ; preds = %40
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 8
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %70 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  br label %86

71:                                               ; preds = %64
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8*, i8** %14, align 8
  %76 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %77 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %85

78:                                               ; preds = %71
  %79 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %80 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %79, i32 0, i32 0
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %121

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %88 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @qcom_smem_get(i32 %89, i32 %90, i64* %11)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %15, align 4
  br label %121

98:                                               ; preds = %86
  %99 = load i64, i64* %11, align 8
  %100 = udiv i64 %99, 2
  store i64 %100, i64* %11, align 8
  %101 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %102 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %101, i32 0, i32 0
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %103, i64 %104, i64 %105)
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %109 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr i8, i8* %110, i64 %111
  %113 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %114 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %117 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %119 = call i32 @qcom_smd_channel_reset(%struct.qcom_smd_channel* %118)
  %120 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  store %struct.qcom_smd_channel* %120, %struct.qcom_smd_channel** %5, align 8
  br label %131

121:                                              ; preds = %95, %78, %61
  %122 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %123 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %122, i32 0, i32 1
  %124 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %123, align 8
  %125 = call i32 @kfree(%struct.qcom_smd_channel* %124)
  br label %126

126:                                              ; preds = %121, %37
  %127 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %10, align 8
  %128 = call i32 @kfree(%struct.qcom_smd_channel* %127)
  %129 = load i32, i32* %15, align 4
  %130 = call %struct.qcom_smd_channel* @ERR_PTR(i32 %129)
  store %struct.qcom_smd_channel* %130, %struct.qcom_smd_channel** %5, align 8
  br label %131

131:                                              ; preds = %126, %98, %20
  %132 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %5, align 8
  ret %struct.qcom_smd_channel* %132
}

declare dso_local %struct.qcom_smd_channel* @kzalloc(i32, i32) #1

declare dso_local %struct.qcom_smd_channel* @ERR_PTR(i32) #1

declare dso_local %struct.qcom_smd_channel* @kstrdup(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @qcom_smem_get(i32, i32, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64, i64) #1

declare dso_local i32 @qcom_smd_channel_reset(%struct.qcom_smd_channel*) #1

declare dso_local i32 @kfree(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
