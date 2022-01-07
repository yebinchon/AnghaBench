; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_host_trace_buffer_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_host_trace_buffer_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32*, i64*, i64, i64, i64, i64 }
%struct.mpt3_diag_register = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%9s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@MPI2_DIAG_BUF_TYPE_TRACE = common dso_local global i64 0, align 8
@MPT3_DIAG_BUFFER_IS_REGISTERED = common dso_local global i32 0, align 4
@MPT3_DIAG_BUFFER_IS_RELEASED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"posting host trace buffers\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"releasing host trace buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @host_trace_buffer_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_trace_buffer_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %12 = alloca [10 x i8], align 1
  %13 = alloca %struct.mpt3_diag_register, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.MPT3SAS_ADAPTER* %18, %struct.MPT3SAS_ADAPTER** %11, align 8
  %19 = bitcast [10 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 10, i1 false)
  store i32 0, i32* %14, align 4
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %4
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %26 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %36 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29, %24, %4
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %144

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %45 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %144

50:                                               ; preds = %42
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %98, label %54

54:                                               ; preds = %50
  %55 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MPT3_DIAG_BUFFER_IS_REGISTERED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %74 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MPT3_DIAG_BUFFER_IS_RELEASED, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %141

83:                                               ; preds = %72, %62, %54
  %84 = call i32 @memset(%struct.mpt3_diag_register* %13, i32 0, i32 16)
  %85 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %86 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %88 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %13, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %13, i32 0, i32 1
  store i32 1048576, i32* %89, align 8
  %90 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %13, i32 0, i32 2
  store i32 117922048, i32* %90, align 4
  %91 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %92 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 0, i32* %95, align 4
  %96 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %97 = call i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER* %96, %struct.mpt3_diag_register* %13)
  br label %140

98:                                               ; preds = %50
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %139, label %102

102:                                              ; preds = %98
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %104 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %141

111:                                              ; preds = %102
  %112 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MPT3_DIAG_BUFFER_IS_REGISTERED, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %141

122:                                              ; preds = %111
  %123 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %124 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MPT3_DIAG_BUFFER_IS_RELEASED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %141

133:                                              ; preds = %122
  %134 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %135 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  %137 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %138 = call i32 @mpt3sas_send_diag_release(%struct.MPT3SAS_ADAPTER* %136, i64 %137, i32* %14)
  br label %139

139:                                              ; preds = %133, %98
  br label %140

140:                                              ; preds = %139, %83
  br label %141

141:                                              ; preds = %140, %132, %121, %110, %82
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @strlen(i8* %142)
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %141, %47, %39
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.mpt3_diag_register*, i32, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER*, %struct.mpt3_diag_register*) #1

declare dso_local i32 @mpt3sas_send_diag_release(%struct.MPT3SAS_ADAPTER*, i64, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
