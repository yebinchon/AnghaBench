; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_log_cmd_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_log_cmd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.uas_cmd_info = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s %d uas-tag %d inflight:%s%s%s%s%s%s%s%s%s%s%s%s \00", align 1
@SUBMIT_STATUS_URB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" s-st\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ALLOC_DATA_IN_URB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" a-in\00", align 1
@SUBMIT_DATA_IN_URB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" s-in\00", align 1
@ALLOC_DATA_OUT_URB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" a-out\00", align 1
@SUBMIT_DATA_OUT_URB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" s-out\00", align 1
@ALLOC_CMD_URB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" a-cmd\00", align 1
@SUBMIT_CMD_URB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" s-cmd\00", align 1
@COMMAND_INFLIGHT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" CMD\00", align 1
@DATA_IN_URB_INFLIGHT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" IN\00", align 1
@DATA_OUT_URB_INFLIGHT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" OUT\00", align 1
@COMMAND_ABORTED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c" abort\00", align 1
@IS_IN_WORK_LIST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c" work\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i8*, i32)* @uas_log_cmd_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uas_log_cmd_state(%struct.scsi_cmnd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uas_cmd_info*, align 8
  %8 = alloca %struct.uas_cmd_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %12, %struct.uas_cmd_info** %7, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast i8* %15 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %16, %struct.uas_cmd_info** %8, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %8, align 8
  %22 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %25 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SUBMIT_STATUS_URB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %33 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ALLOC_DATA_IN_URB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %41 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SUBMIT_DATA_IN_URB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %49 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ALLOC_DATA_OUT_URB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %56 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %57 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SUBMIT_DATA_OUT_URB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %65 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ALLOC_CMD_URB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %73 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SUBMIT_CMD_URB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %81 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @COMMAND_INFLIGHT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %88 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %89 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DATA_IN_URB_INFLIGHT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %97 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DATA_OUT_URB_INFLIGHT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %104 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %105 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @COMMAND_ABORTED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %112 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %7, align 8
  %113 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IS_IN_WORK_LIST, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %120 = call i32 @scmd_printk(i32 %17, %struct.scsi_cmnd* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %23, i8* %31, i8* %39, i8* %47, i8* %55, i8* %63, i8* %71, i8* %79, i8* %87, i8* %95, i8* %103, i8* %111, i8* %119)
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = call i32 @scsi_print_command(%struct.scsi_cmnd* %121)
  ret void
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
