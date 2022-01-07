; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, %struct.beiscsi_endpoint*, i32 }
%struct.beiscsi_endpoint = type { i32, %struct.beiscsi_conn*, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { %struct.beiscsi_conn**, %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BS_%d : beiscsi_ep->hba=%p not equal to phba=%p\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"BS_%d : conn_table not empty at %u: cid %u conn %p:%p\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"BS_%d : cid %d phba->conn_table[%u]=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.beiscsi_conn*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.beiscsi_hba*, align 8
  %14 = alloca %struct.hwi_controller*, align 8
  %15 = alloca %struct.hwi_wrb_context*, align 8
  %16 = alloca %struct.beiscsi_endpoint*, align 8
  %17 = alloca %struct.iscsi_endpoint*, align 8
  %18 = alloca i64, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %20, align 8
  store %struct.iscsi_conn* %21, %struct.iscsi_conn** %10, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 0
  %24 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %23, align 8
  store %struct.beiscsi_conn* %24, %struct.beiscsi_conn** %11, align 8
  %25 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %26 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %25)
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %12, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %28 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %27)
  store %struct.beiscsi_hba* %28, %struct.beiscsi_hba** %13, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = load %struct.hwi_controller*, %struct.hwi_controller** %30, align 8
  store %struct.hwi_controller* %31, %struct.hwi_controller** %14, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %32)
  store %struct.iscsi_endpoint* %33, %struct.iscsi_endpoint** %17, align 8
  %34 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %17, align 8
  %35 = icmp ne %struct.iscsi_endpoint* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %157

39:                                               ; preds = %4
  %40 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %17, align 8
  %41 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %40, i32 0, i32 0
  %42 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %41, align 8
  store %struct.beiscsi_endpoint* %42, %struct.beiscsi_endpoint** %16, align 8
  %43 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %44 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @iscsi_conn_bind(%struct.iscsi_cls_session* %43, %struct.iscsi_cls_conn* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %157

51:                                               ; preds = %39
  %52 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %53 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %52, i32 0, i32 2
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %53, align 8
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %56 = icmp ne %struct.beiscsi_hba* %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %61 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %62 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %61, i32 0, i32 2
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %62, align 8
  %64 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %65 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_hba*, ...) @beiscsi_log(%struct.beiscsi_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.beiscsi_hba* %63, %struct.beiscsi_hba* %64)
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %157

68:                                               ; preds = %51
  %69 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %70 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @BE_GET_CRI_FROM_CID(i32 %71)
  store i64 %72, i64* %18, align 8
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 0
  %75 = load %struct.beiscsi_conn**, %struct.beiscsi_conn*** %74, align 8
  %76 = load i64, i64* %18, align 8
  %77 = getelementptr inbounds %struct.beiscsi_conn*, %struct.beiscsi_conn** %75, i64 %76
  %78 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %77, align 8
  %79 = icmp ne %struct.beiscsi_conn* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %68
  %81 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %83 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %82, i32 0, i32 0
  %84 = load %struct.beiscsi_conn**, %struct.beiscsi_conn*** %83, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.beiscsi_conn*, %struct.beiscsi_conn** %84, i64 %85
  %87 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %86, align 8
  %88 = icmp ne %struct.beiscsi_conn* %81, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %80
  %90 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %91 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %92 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %91, i32 0, i32 0
  %93 = load %struct.beiscsi_conn**, %struct.beiscsi_conn*** %92, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds %struct.beiscsi_conn*, %struct.beiscsi_conn** %93, i64 %94
  %96 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %95, align 8
  %97 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %96, i32 0, i32 1
  %98 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %97, align 8
  %99 = icmp ne %struct.beiscsi_endpoint* %90, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %89, %80
  %101 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %102 = load i32, i32* @KERN_ERR, align 4
  %103 = load i64, i64* %18, align 8
  %104 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %105 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %109 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %108, i32 0, i32 0
  %110 = load %struct.beiscsi_conn**, %struct.beiscsi_conn*** %109, align 8
  %111 = load i64, i64* %18, align 8
  %112 = getelementptr inbounds %struct.beiscsi_conn*, %struct.beiscsi_conn** %110, i64 %111
  %113 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %112, align 8
  %114 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %101, i32 %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %106, %struct.beiscsi_conn* %107, %struct.beiscsi_conn* %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %157

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117, %68
  %119 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %120 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %123 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %125 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %126 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %125, i32 0, i32 1
  store %struct.beiscsi_endpoint* %124, %struct.beiscsi_endpoint** %126, align 8
  %127 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %128 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %129 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %128, i32 0, i32 1
  store %struct.beiscsi_conn* %127, %struct.beiscsi_conn** %129, align 8
  %130 = load %struct.hwi_controller*, %struct.hwi_controller** %14, align 8
  %131 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %130, i32 0, i32 0
  %132 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %131, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %132, i64 %133
  store %struct.hwi_wrb_context* %134, %struct.hwi_wrb_context** %15, align 8
  %135 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %15, align 8
  %136 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %139 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %141 = load i32, i32* @KERN_INFO, align 4
  %142 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %143 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %16, align 8
  %144 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to %struct.beiscsi_hba*
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %150 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_hba*, ...) @beiscsi_log(%struct.beiscsi_hba* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.beiscsi_hba* %147, i64 %148, %struct.beiscsi_conn* %149)
  %151 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  %152 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %13, align 8
  %153 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %152, i32 0, i32 0
  %154 = load %struct.beiscsi_conn**, %struct.beiscsi_conn*** %153, align 8
  %155 = load i64, i64* %18, align 8
  %156 = getelementptr inbounds %struct.beiscsi_conn*, %struct.beiscsi_conn** %154, i64 %155
  store %struct.beiscsi_conn* %151, %struct.beiscsi_conn** %156, align 8
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %118, %100, %57, %48, %36
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i64 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, %struct.beiscsi_hba*, ...) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i64, i32, %struct.beiscsi_conn*, %struct.beiscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
