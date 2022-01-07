; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_qdio = type { %struct.zfcp_adapter*, %struct.TYPE_2__** }
%struct.zfcp_adapter = type { i32 }
%struct.TYPE_2__ = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i64, i64 }

@ZFCP_QDIO_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qdires1\00", align 1
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qdires2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @zfcp_qdio_int_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_int_resp(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zfcp_qdio*, align 8
  %14 = alloca %struct.zfcp_adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.qdio_buffer_element*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = inttoptr i64 %22 to %struct.zfcp_qdio*
  store %struct.zfcp_qdio* %23, %struct.zfcp_qdio** %13, align 8
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 0
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %25, align 8
  store %struct.zfcp_adapter* %26, %struct.zfcp_adapter** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %6
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %32 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %30
  %35 = load i32, i32* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %17, align 8
  %39 = alloca i8*, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  %40 = load i32, i32* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i8** %39, i32 0, i32 %43)
  %45 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %46 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %52, align 8
  store %struct.qdio_buffer_element* %53, %struct.qdio_buffer_element** %19, align 8
  %54 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %19, align 8
  %55 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %20, align 8
  %57 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %19, align 8
  %58 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @min(i64 %60, i32 %62)
  store i32 %63, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %85, %34
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %16, align 4
  %74 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %75 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = bitcast %struct.TYPE_2__* %80 to i8*
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %39, i64 %83
  store i8* %81, i8** %84, align 8
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %64

88:                                               ; preds = %64
  %89 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @zfcp_dbf_hba_def_err(%struct.zfcp_adapter* %89, i64 %90, i32 %91, i8** %39)
  %93 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %88, %30
  %95 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %127

98:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %112, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %108 = srem i32 %106, %107
  store i32 %108, i32* %16, align 4
  %109 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @zfcp_fsf_reqid_check(%struct.zfcp_qdio* %109, i32 %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %117 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @do_QDIO(%struct.ccw_device* %116, i32 %117, i32 0, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %124 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %123, i32 0, i32 0
  %125 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %124, align 8
  %126 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %125, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %94, %122, %115
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @zfcp_dbf_hba_def_err(%struct.zfcp_adapter*, i64, i32, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio*, i8*, i32) #1

declare dso_local i32 @zfcp_fsf_reqid_check(%struct.zfcp_qdio*, i32) #1

declare dso_local i64 @do_QDIO(%struct.ccw_device*, i32, i32, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
