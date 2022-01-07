; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_fsf_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_fsf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.fsf_qtcb_header, %struct.fsf_qtcb_prefix }
%struct.fsf_qtcb_header = type { i64, i8, i32, i32, i32, i32, i32 }
%struct.fsf_qtcb_prefix = type { i8, i32, i32 }
%struct.TYPE_5__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba }
%struct.zfcp_dbf_hba = type { i64, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_HBA_RES = common dso_local global i32 0, align 4
@FSF_PROT_STATUS_QUAL_SIZE = common dso_local global i32 0, align 4
@FSF_STATUS_QUALIFIER_SIZE = common dso_local global i32 0, align 4
@FSF_QTCB_FCP_CMND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fsf_res\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_fsf_res(i8* %0, i32 %1, %struct.zfcp_fsf_req* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.zfcp_dbf*, align 8
  %8 = alloca %struct.fsf_qtcb_prefix*, align 8
  %9 = alloca %struct.fsf_qtcb_header*, align 8
  %10 = alloca %struct.zfcp_dbf_hba*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.zfcp_fsf_req* %2, %struct.zfcp_fsf_req** %6, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %15, align 8
  store %struct.zfcp_dbf* %16, %struct.zfcp_dbf** %7, align 8
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.fsf_qtcb_prefix* %20, %struct.fsf_qtcb_prefix** %8, align 8
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.fsf_qtcb_header* %24, %struct.fsf_qtcb_header** %9, align 8
  %25 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %26 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %25, i32 0, i32 2
  store %struct.zfcp_dbf_hba* %26, %struct.zfcp_dbf_hba** %10, align 8
  %27 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %28 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %32 = call i32 @memset(%struct.zfcp_dbf_hba* %31, i32 0, i32 64)
  %33 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %34 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  %39 = load i32, i32* @ZFCP_DBF_HBA_RES, align 4
  %40 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %41 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %43 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %46 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %48 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %51 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %53 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %56 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.fsf_qtcb_prefix*, %struct.fsf_qtcb_prefix** %8, align 8
  %58 = getelementptr inbounds %struct.fsf_qtcb_prefix, %struct.fsf_qtcb_prefix* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %61 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %63 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %66 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  store i32 %64, i32* %68, align 4
  %69 = load %struct.fsf_qtcb_prefix*, %struct.fsf_qtcb_prefix** %8, align 8
  %70 = getelementptr inbounds %struct.fsf_qtcb_prefix, %struct.fsf_qtcb_prefix* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %73 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 4
  %76 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %77 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %80 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %84 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %87 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %91 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %94 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %98 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fsf_qtcb_prefix*, %struct.fsf_qtcb_prefix** %8, align 8
  %103 = getelementptr inbounds %struct.fsf_qtcb_prefix, %struct.fsf_qtcb_prefix* %102, i32 0, i32 0
  %104 = load i32, i32* @FSF_PROT_STATUS_QUAL_SIZE, align 4
  %105 = call i32 @memcpy(i32 %101, i8* %103, i32 %104)
  %106 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %107 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %112 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %111, i32 0, i32 1
  %113 = load i32, i32* @FSF_STATUS_QUALIFIER_SIZE, align 4
  %114 = call i32 @memcpy(i32 %110, i8* %112, i32 %113)
  %115 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %116 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FSF_QTCB_FCP_CMND, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %3
  %121 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %122 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %125 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %127 = load %struct.fsf_qtcb_prefix*, %struct.fsf_qtcb_prefix** %8, align 8
  %128 = bitcast %struct.fsf_qtcb_prefix* %127 to i8*
  %129 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %9, align 8
  %130 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %135 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %138 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @zfcp_dbf_pl_write(%struct.zfcp_dbf* %126, i8* %133, i32 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %120, %3
  %142 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %143 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %10, align 8
  %147 = call i32 @debug_event(i32 %144, i32 %145, %struct.zfcp_dbf_hba* %146, i32 64)
  %148 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %149 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %148, i32 0, i32 0
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_pl_write(%struct.zfcp_dbf*, i8*, i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
