; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.ufs_bsg_reply*, %struct.ufs_bsg_request* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ufs_bsg_reply = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.uic_command }
%struct.uic_command = type { i32 }
%struct.ufs_bsg_request = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.uic_command, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ufs_hba = type { i32 }

@UPIU_QUERY_OPCODE_NOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"exe raw upiu: error code %d\0A\00", align 1
@UIC_CMD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"send uic cmd: error code %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported msgcode 0x%x\0A\00", align 1
@UPIU_QUERY_OPCODE_READ_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @ufs_bsg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.ufs_bsg_request*, align 8
  %4 = alloca %struct.ufs_bsg_reply*, align 8
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uic_command, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 5
  %16 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %15, align 8
  store %struct.ufs_bsg_request* %16, %struct.ufs_bsg_request** %3, align 8
  %17 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 4
  %19 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %18, align 8
  store %struct.ufs_bsg_reply* %19, %struct.ufs_bsg_reply** %4, align 8
  %20 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %21 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_to_shost(i32 %24)
  %26 = call %struct.ufs_hba* @shost_priv(i32 %25)
  store %struct.ufs_hba* %26, %struct.ufs_hba** %5, align 8
  %27 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %28 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = bitcast %struct.uic_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 4, i1 false)
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %34 = load i32, i32* @UPIU_QUERY_OPCODE_NOP, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ufs_bsg_verify_query_size(%struct.ufs_hba* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %148

42:                                               ; preds = %1
  %43 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %44 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %46 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_get_sync(i32 %47)
  %49 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %3, align 8
  %50 = getelementptr inbounds %struct.ufs_bsg_request, %struct.ufs_bsg_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %108 [
    i32 130, label %53
    i32 131, label %67
    i32 129, label %67
    i32 128, label %86
  ]

53:                                               ; preds = %42
  %54 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %3, align 8
  %55 = getelementptr inbounds %struct.ufs_bsg_request, %struct.ufs_bsg_request* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %60 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ufs_bsg_alloc_desc_buffer(%struct.ufs_hba* %59, %struct.bsg_job* %60, i32** %10, i32* %11, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %148

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %42, %42, %66
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %69 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %3, align 8
  %70 = getelementptr inbounds %struct.ufs_bsg_request, %struct.ufs_bsg_request* %69, i32 0, i32 1
  %71 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %72 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %71, i32 0, i32 2
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @ufshcd_exec_raw_upiu_cmd(%struct.ufs_hba* %68, %struct.TYPE_9__* %70, %struct.TYPE_10__* %72, i32 %73, i32* %74, i32* %11, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %81 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %67
  br label %116

86:                                               ; preds = %42
  %87 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %3, align 8
  %88 = getelementptr inbounds %struct.ufs_bsg_request, %struct.ufs_bsg_request* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* @UIC_CMD_SIZE, align 4
  %91 = call i32 @memcpy(%struct.uic_command* %8, %struct.uic_command* %89, i32 %90)
  %92 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %93 = call i32 @ufshcd_send_uic_cmd(%struct.ufs_hba* %92, %struct.uic_command* %8)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %98 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %86
  %103 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %104 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* @UIC_CMD_SIZE, align 4
  %107 = call i32 @memcpy(%struct.uic_command* %105, %struct.uic_command* %8, i32 %106)
  br label %116

108:                                              ; preds = %42
  %109 = load i32, i32* @ENOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  %111 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %112 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %108, %102, %85
  %117 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %118 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pm_runtime_put_sync(i32 %119)
  %121 = load i32*, i32** %10, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %148

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @UPIU_QUERY_OPCODE_READ_DESC, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %133 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %137 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @sg_copy_from_buffer(i32 %135, i32 %139, i32* %140, i32 %141)
  %143 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %144 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %131, %128, %124
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @kfree(i32* %146)
  br label %148

148:                                              ; preds = %145, %123, %65, %41
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %151 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %153 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %152, i32 0, i32 1
  store i32 24, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %148
  %157 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.ufs_bsg_reply*, %struct.ufs_bsg_reply** %4, align 8
  %160 = getelementptr inbounds %struct.ufs_bsg_reply, %struct.ufs_bsg_reply* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @bsg_job_done(%struct.bsg_job* %157, i32 %158, i64 %161)
  br label %163

163:                                              ; preds = %156, %148
  %164 = load i32, i32* %13, align 4
  ret i32 %164
}

declare dso_local %struct.ufs_hba* @shost_priv(i32) #1

declare dso_local i32 @dev_to_shost(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ufs_bsg_verify_query_size(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ufs_bsg_alloc_desc_buffer(%struct.ufs_hba*, %struct.bsg_job*, i32**, i32*, i32) #1

declare dso_local i32 @ufshcd_exec_raw_upiu_cmd(%struct.ufs_hba*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.uic_command*, %struct.uic_command*, i32) #1

declare dso_local i32 @ufshcd_send_uic_cmd(%struct.ufs_hba*, %struct.uic_command*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i64 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
