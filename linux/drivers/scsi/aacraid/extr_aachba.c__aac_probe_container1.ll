; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.aac_mount = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.aac_query_mount = type { i8*, i8*, i8* }

@ST_OK = common dso_local global i64 0, align 8
@CT_NONE = common dso_local global i64 0, align 8
@AAC_OPTION_VARIABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@VM_NameServeAllBlk = common dso_local global i64 0, align 8
@VM_NameServe64 = common dso_local global i64 0, align 8
@FT_FILESYS = common dso_local global i64 0, align 8
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @_aac_probe_container1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_aac_probe_container1(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.aac_mount*, align 8
  %7 = alloca %struct.aac_query_mount*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = call i64 @fib_data(%struct.fib* %9)
  %11 = inttoptr i64 %10 to %struct.aac_mount*
  store %struct.aac_mount* %11, %struct.aac_mount** %6, align 8
  %12 = load %struct.fib*, %struct.fib** %4, align 8
  %13 = getelementptr inbounds %struct.fib, %struct.fib* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i32 @aac_supports_2T(%struct.TYPE_8__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %19 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %24 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @le32_to_cpu(i8* %25)
  %27 = load i64, i64* @ST_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %31 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @le32_to_cpu(i8* %35)
  %37 = load i64, i64* @CT_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.fib*, %struct.fib** %4, align 8
  %42 = call i32 @_aac_probe_container2(i8* %40, %struct.fib* %41)
  br label %112

43:                                               ; preds = %29, %17
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i8*, i8** %3, align 8
  %46 = bitcast i8* %45 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %5, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = load %struct.fib*, %struct.fib** %4, align 8
  %49 = call i32 @aac_valid_context(%struct.scsi_cmnd* %47, %struct.fib* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %112

52:                                               ; preds = %44
  %53 = load %struct.fib*, %struct.fib** %4, align 8
  %54 = call i32 @aac_fib_init(%struct.fib* %53)
  %55 = load %struct.fib*, %struct.fib** %4, align 8
  %56 = call i64 @fib_data(%struct.fib* %55)
  %57 = inttoptr i64 %56 to %struct.aac_query_mount*
  store %struct.aac_query_mount* %57, %struct.aac_query_mount** %7, align 8
  %58 = load %struct.fib*, %struct.fib** %4, align 8
  %59 = getelementptr inbounds %struct.fib, %struct.fib* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AAC_OPTION_VARIABLE_BLOCK_SIZE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load i64, i64* @VM_NameServeAllBlk, align 8
  %69 = call i8* @cpu_to_le32(i64 %68)
  %70 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %71 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %77

72:                                               ; preds = %52
  %73 = load i64, i64* @VM_NameServe64, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %76 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %79 = call i64 @scmd_id(%struct.scsi_cmnd* %78)
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %82 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* @FT_FILESYS, align 8
  %84 = call i8* @cpu_to_le32(i64 %83)
  %85 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %86 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @ContainerCommand, align 4
  %92 = load %struct.fib*, %struct.fib** %4, align 8
  %93 = load i32, i32* @FsaNormal, align 4
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %95 = bitcast %struct.scsi_cmnd* %94 to i8*
  %96 = call i32 @aac_fib_send(i32 %91, %struct.fib* %92, i32 24, i32 %93, i32 0, i32 1, i32 (i8*, %struct.fib*)* @_aac_probe_container2, i8* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %77
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @EINPROGRESS, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i64, i64* @ST_OK, align 8
  %106 = call i8* @cpu_to_le32(i64 %105)
  %107 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %108 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.fib*, %struct.fib** %4, align 8
  %111 = call i32 @_aac_probe_container2(i8* %109, %struct.fib* %110)
  br label %112

112:                                              ; preds = %39, %51, %104, %99, %77
  ret void
}

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @aac_supports_2T(%struct.TYPE_8__*) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @_aac_probe_container2(i8*, %struct.fib*) #1

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32 (i8*, %struct.fib*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
