; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.fib = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.aac_query_mount = type { i8*, i8*, i8* }
%struct.fsa_dev_info = type { i32 }
%struct.aac_dev = type { %struct.fsa_dev_info* }

@ENOMEM = common dso_local global i32 0, align 4
@AAC_OPTION_VARIABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@VM_NameServeAllBlk = common dso_local global i32 0, align 4
@VM_NameServe = common dso_local global i32 0, align 4
@FT_FILESYS = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@_aac_probe_container1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32 (%struct.scsi_cmnd*)*)* @_aac_probe_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_aac_probe_container(%struct.scsi_cmnd* %0, i32 (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32 (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.fib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_query_mount*, align 8
  %9 = alloca %struct.fsa_dev_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 (%struct.scsi_cmnd*)* %1, i32 (%struct.scsi_cmnd*)** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.aac_dev*
  %20 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %19)
  store %struct.fib* %20, %struct.fib** %6, align 8
  %21 = icmp ne %struct.fib* %20, null
  br i1 %21, label %22, label %90

22:                                               ; preds = %2
  %23 = load %struct.fib*, %struct.fib** %6, align 8
  %24 = call i32 @aac_fib_init(%struct.fib* %23)
  %25 = load %struct.fib*, %struct.fib** %6, align 8
  %26 = call i64 @fib_data(%struct.fib* %25)
  %27 = inttoptr i64 %26 to %struct.aac_query_mount*
  store %struct.aac_query_mount* %27, %struct.aac_query_mount** %8, align 8
  %28 = load %struct.fib*, %struct.fib** %6, align 8
  %29 = getelementptr inbounds %struct.fib, %struct.fib* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AAC_OPTION_VARIABLE_BLOCK_SIZE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load i32, i32* @VM_NameServeAllBlk, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %41 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %47

42:                                               ; preds = %22
  %43 = load i32, i32* @VM_NameServe, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %46 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = call i32 @scmd_id(%struct.scsi_cmnd* %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %52 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @FT_FILESYS, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %56 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %5, align 8
  %58 = bitcast i32 (%struct.scsi_cmnd*)* %57 to i8*
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @ContainerCommand, align 4
  %67 = load %struct.fib*, %struct.fib** %6, align 8
  %68 = load i32, i32* @FsaNormal, align 4
  %69 = load i32, i32* @_aac_probe_container1, align 4
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = bitcast %struct.scsi_cmnd* %70 to i8*
  %72 = call i32 @aac_fib_send(i32 %66, %struct.fib* %67, i32 24, i32 %68, i32 0, i32 1, i32 %69, i8* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @EINPROGRESS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %127

78:                                               ; preds = %47
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i8* null, i8** %84, align 8
  %85 = load %struct.fib*, %struct.fib** %6, align 8
  %86 = call i32 @aac_fib_complete(%struct.fib* %85)
  %87 = load %struct.fib*, %struct.fib** %6, align 8
  %88 = call i32 @aac_fib_free(%struct.fib* %87)
  br label %89

89:                                               ; preds = %81, %78
  br label %90

90:                                               ; preds = %89, %2
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.aac_dev*
  %102 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %101, i32 0, i32 0
  %103 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %102, align 8
  store %struct.fsa_dev_info* %103, %struct.fsa_dev_info** %9, align 8
  %104 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %105 = icmp ne %struct.fsa_dev_info* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %93
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = call i32 @scmd_id(%struct.scsi_cmnd* %107)
  %109 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %109, i64 %110
  store %struct.fsa_dev_info* %111, %struct.fsa_dev_info** %9, align 8
  %112 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %113 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %119 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %5, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = call i32 %120(%struct.scsi_cmnd* %121)
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %93
  br label %125

125:                                              ; preds = %124, %90
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %117, %77
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
