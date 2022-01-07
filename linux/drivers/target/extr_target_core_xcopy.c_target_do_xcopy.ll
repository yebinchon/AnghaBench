; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_do_xcopy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_do_xcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xcopy_op = type { i32, %struct.se_cmd* }

@.str = private unnamed_addr constant [45 x i8] c"EXTENDED_COPY operation explicitly disabled\0A\00", align 1
@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EXTENDED_COPY(LID4) not supported\0A\00", align 1
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@TCM_NO_SENSE = common dso_local global i32 0, align 4
@XCOPY_HDR_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"XCOPY parameter truncation: length %u < hdr_len %u\0A\00", align 1
@TCM_PARAMETER_LIST_LENGTH_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@target_xcopy_do_work = common dso_local global i32 0, align 4
@xcopy_wq = common dso_local global i32 0, align 4
@TCM_OUT_OF_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_do_xcopy(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.xcopy_op*, align 8
  %6 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 2
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %4, align 8
  %10 = load %struct.se_device*, %struct.se_device** %4, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %17, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %18
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = load i32, i32* @SAM_STAT_GOOD, align 4
  %38 = call i32 @target_complete_cmd(%struct.se_cmd* %36, i32 %37)
  %39 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %30
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XCOPY_HDR_LEN, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XCOPY_HDR_LEN, align 8
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32, i32* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %40
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.xcopy_op* @kzalloc(i32 16, i32 %54)
  store %struct.xcopy_op* %55, %struct.xcopy_op** %5, align 8
  %56 = load %struct.xcopy_op*, %struct.xcopy_op** %5, align 8
  %57 = icmp ne %struct.xcopy_op* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %82

59:                                               ; preds = %53
  %60 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %61 = load %struct.xcopy_op*, %struct.xcopy_op** %5, align 8
  %62 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %61, i32 0, i32 1
  store %struct.se_cmd* %60, %struct.se_cmd** %62, align 8
  %63 = load %struct.xcopy_op*, %struct.xcopy_op** %5, align 8
  %64 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %63, i32 0, i32 0
  %65 = load i32, i32* @target_xcopy_do_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load i32, i32* @xcopy_wq, align 4
  %68 = load %struct.xcopy_op*, %struct.xcopy_op** %5, align 8
  %69 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %68, i32 0, i32 0
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON_ONCE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %79

77:                                               ; preds = %59
  %78 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %76
  %80 = load %struct.xcopy_op*, %struct.xcopy_op** %5, align 8
  %81 = call i32 @kfree(%struct.xcopy_op* %80)
  br label %82

82:                                               ; preds = %79, %58
  %83 = load i32, i32* @TCM_OUT_OF_RESOURCES, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %77, %46, %35, %27, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local %struct.xcopy_op* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.xcopy_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
