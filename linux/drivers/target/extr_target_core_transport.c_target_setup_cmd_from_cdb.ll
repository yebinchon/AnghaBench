; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_setup_cmd_from_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_setup_cmd_from_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.TYPE_12__*, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32*, %struct.se_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.se_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.se_cmd*)* }

@SCSI_MAX_VARLEN_CDB_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Unable to allocate cmd->t_task_cdb %u > sizeof(cmd->__t_task_cdb): %lu ops\0A\00", align 1
@TCM_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"%s/%s: Unsupported SCSI Opcode 0x%02x, sending CHECK_CONDITION.\0A\00", align 1
@SCF_SUPPORTED_SAM_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_setup_cmd_from_cdb(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 6
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @scsi_command_size(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @SCSI_MAX_VARLEN_CDB_SIZE, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @scsi_command_size(i8* %17)
  %19 = load i64, i64* @SCSI_MAX_VARLEN_CDB_SIZE, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19)
  %21 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %21, i64* %3, align 8
  br label %114

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @scsi_command_size(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @scsi_command_size(i8* %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @scsi_command_size(i8* %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 8)
  %42 = load i64, i64* @TCM_OUT_OF_RESOURCES, align 8
  store i64 %42, i64* %3, align 8
  br label %114

43:                                               ; preds = %27
  br label %51

44:                                               ; preds = %22
  %45 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %43
  %52 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @scsi_command_size(i8* %56)
  %58 = call i32 @memcpy(i32* %54, i8* %55, i32 %57)
  %59 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %60 = call i32 @trace_target_sequencer_start(%struct.se_cmd* %59)
  %61 = load %struct.se_device*, %struct.se_device** %6, align 8
  %62 = getelementptr inbounds %struct.se_device, %struct.se_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64 (%struct.se_cmd*)*, i64 (%struct.se_cmd*)** %64, align 8
  %66 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %67 = call i64 %65(%struct.se_cmd* %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @TCM_UNSUPPORTED_SCSI_OPCODE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %51
  %72 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %71, %51
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %3, align 8
  br label %114

95:                                               ; preds = %90
  %96 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %97 = call i64 @transport_check_alloc_task_attr(%struct.se_cmd* %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* %7, align 8
  store i64 %101, i64* %3, align 8
  br label %114

102:                                              ; preds = %95
  %103 = load i32, i32* @SCF_SUPPORTED_SAM_OPCODE, align 4
  %104 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = call i32 @atomic_long_inc(i32* %112)
  store i64 0, i64* %3, align 8
  br label %114

114:                                              ; preds = %102, %100, %93, %38, %16
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i32 @scsi_command_size(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @trace_target_sequencer_start(%struct.se_cmd*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32) #1

declare dso_local i64 @transport_check_alloc_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
