; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_rcr_operating_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_rcr_operating_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"transport_kmap_data_sg failed in target_rcr_operating_parameters\0A\00", align 1
@TCM_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Receive Copy Results Op Parameters length too small: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@RCR_OP_MAX_TARGET_DESC_COUNT = common dso_local global i32 0, align 4
@RCR_OP_MAX_SG_DESC_COUNT = common dso_local global i32 0, align 4
@RCR_OP_MAX_DESC_LIST_LEN = common dso_local global i32 0, align 4
@RCR_OP_MAX_SEGMENT_LEN = common dso_local global i32 0, align 4
@RCR_OP_TOTAL_CONCURR_COPIES = common dso_local global i32 0, align 4
@RCR_OP_MAX_CONCURR_COPIES = common dso_local global i8 0, align 1
@RCR_OP_DATA_SEG_GRAN_LOG2 = common dso_local global i8 0, align 1
@RCR_OP_INLINE_DATA_GRAN_LOG2 = common dso_local global i8 0, align 1
@RCR_OP_HELD_DATA_GRAN_LOG2 = common dso_local global i8 0, align 1
@GOOD = common dso_local global i32 0, align 4
@TCM_NO_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_rcr_operating_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_rcr_operating_parameters(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @TCM_OUT_OF_RESOURCES, align 4
  store i32 %11, i32* %2, align 4
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 54
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %22)
  %24 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %24, i32* %2, align 4
  br label %84

25:                                               ; preds = %12
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8 1, i8* %27, align 1
  %28 = load i32, i32* @RCR_OP_MAX_TARGET_DESC_COUNT, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = call i32 @put_unaligned_be16(i32 %28, i8* %30)
  %32 = load i32, i32* @RCR_OP_MAX_SG_DESC_COUNT, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 10
  %35 = call i32 @put_unaligned_be16(i32 %32, i8* %34)
  %36 = load i32, i32* @RCR_OP_MAX_DESC_LIST_LEN, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 12
  %39 = call i32 @put_unaligned_be32(i32 %36, i8* %38)
  %40 = load i32, i32* @RCR_OP_MAX_SEGMENT_LEN, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  %43 = call i32 @put_unaligned_be32(i32 %40, i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 20
  %46 = call i32 @put_unaligned_be32(i32 0, i8* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 24
  %49 = call i32 @put_unaligned_be32(i32 0, i8* %48)
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 28
  %52 = call i32 @put_unaligned_be32(i32 0, i8* %51)
  %53 = load i32, i32* @RCR_OP_TOTAL_CONCURR_COPIES, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 34
  %56 = call i32 @put_unaligned_be16(i32 %53, i8* %55)
  %57 = load i8, i8* @RCR_OP_MAX_CONCURR_COPIES, align 1
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 36
  store i8 %57, i8* %59, align 1
  %60 = load i8, i8* @RCR_OP_DATA_SEG_GRAN_LOG2, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 37
  store i8 %60, i8* %62, align 1
  %63 = load i8, i8* @RCR_OP_INLINE_DATA_GRAN_LOG2, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 38
  store i8 %63, i8* %65, align 1
  %66 = load i8, i8* @RCR_OP_HELD_DATA_GRAN_LOG2, align 1
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 39
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 43
  store i8 2, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 44
  store i8 2, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 45
  store i8 -28, i8* %74, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = call i32 @put_unaligned_be32(i32 42, i8* %76)
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %78)
  %80 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %81 = load i32, i32* @GOOD, align 4
  %82 = call i32 @target_complete_cmd(%struct.se_cmd* %80, i32 %81)
  %83 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %25, %17, %9
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
