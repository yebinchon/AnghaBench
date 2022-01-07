; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_mp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_init_mp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qedf_mp_req = type { i32, i32, %struct.scsi_sge*, %struct.scsi_sge*, i32, i32, i32, i8*, i8* }
%struct.scsi_sge = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@QEDF_LOG_MP_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Entered.\0A\00", align 1
@QEDF_ELS = common dso_local global i64 0, align 8
@QEDF_PAGE_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to alloc MP req buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to alloc TM resp buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to alloc MP req bd\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to alloc MP resp bd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_init_mp_req(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.qedf_mp_req*, align 8
  %5 = alloca %struct.scsi_sge*, align 8
  %6 = alloca %struct.scsi_sge*, align 8
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  %10 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %11 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %13, align 8
  store %struct.qedf_ctx* %14, %struct.qedf_ctx** %7, align 8
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* @QEDF_LOG_MP_REQ, align 4
  %18 = call i32 @QEDF_INFO(i32* %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %19, i32 0, i32 2
  %21 = bitcast i32* %20 to %struct.qedf_mp_req*
  store %struct.qedf_mp_req* %21, %struct.qedf_mp_req** %4, align 8
  %22 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %23 = call i32 @memset(%struct.qedf_mp_req* %22, i32 0, i32 56)
  %24 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %25 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QEDF_ELS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %31 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %33 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %39 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %42 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** @QEDF_PAGE_SIZE, align 8
  %49 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %50 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %49, i32 0, i32 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @dma_alloc_coherent(i32* %47, i8* %48, i32* %50, i32 %51)
  %53 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %54 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %56 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %43
  %60 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %60, i32 0, i32 0
  %62 = call i32 @QEDF_ERR(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %64 = call i32 @qedf_free_mp_resc(%struct.qedf_ioreq* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %180

67:                                               ; preds = %43
  %68 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8*, i8** @QEDF_PAGE_SIZE, align 8
  %73 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %74 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %73, i32 0, i32 1
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @dma_alloc_coherent(i32* %71, i8* %72, i32* %74, i32 %75)
  %77 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %78 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %80 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %79, i32 0, i32 7
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %67
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %84, i32 0, i32 0
  %86 = call i32 @QEDF_ERR(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %88 = call i32 @qedf_free_mp_resc(%struct.qedf_ioreq* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %180

91:                                               ; preds = %67
  store i8* inttoptr (i64 24 to i8*), i8** %9, align 8
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %98 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %97, i32 0, i32 6
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @dma_alloc_coherent(i32* %95, i8* %96, i32* %98, i32 %99)
  %101 = bitcast i8* %100 to %struct.scsi_sge*
  %102 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %103 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %102, i32 0, i32 3
  store %struct.scsi_sge* %101, %struct.scsi_sge** %103, align 8
  %104 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %105 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %104, i32 0, i32 3
  %106 = load %struct.scsi_sge*, %struct.scsi_sge** %105, align 8
  %107 = icmp ne %struct.scsi_sge* %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %91
  %109 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %109, i32 0, i32 0
  %111 = call i32 @QEDF_ERR(i32* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %113 = call i32 @qedf_free_mp_resc(%struct.qedf_ioreq* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %180

116:                                              ; preds = %91
  %117 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %123 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %122, i32 0, i32 5
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @dma_alloc_coherent(i32* %120, i8* %121, i32* %123, i32 %124)
  %126 = bitcast i8* %125 to %struct.scsi_sge*
  %127 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %128 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %127, i32 0, i32 2
  store %struct.scsi_sge* %126, %struct.scsi_sge** %128, align 8
  %129 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %130 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %129, i32 0, i32 2
  %131 = load %struct.scsi_sge*, %struct.scsi_sge** %130, align 8
  %132 = icmp ne %struct.scsi_sge* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %116
  %134 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %134, i32 0, i32 0
  %136 = call i32 @QEDF_ERR(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %138 = call i32 @qedf_free_mp_resc(%struct.qedf_ioreq* %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %180

141:                                              ; preds = %116
  %142 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %143 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %8, align 4
  %145 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %146 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %145, i32 0, i32 3
  %147 = load %struct.scsi_sge*, %struct.scsi_sge** %146, align 8
  store %struct.scsi_sge* %147, %struct.scsi_sge** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i8* @U64_LO(i32 %148)
  %150 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %151 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i8* %149, i8** %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i8* @U64_HI(i32 %153)
  %155 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %156 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @QEDF_PAGE_SIZE, align 8
  %159 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %160 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %162 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %161, i32 0, i32 2
  %163 = load %struct.scsi_sge*, %struct.scsi_sge** %162, align 8
  store %struct.scsi_sge* %163, %struct.scsi_sge** %6, align 8
  %164 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %4, align 8
  %165 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i8* @U64_LO(i32 %167)
  %169 = load %struct.scsi_sge*, %struct.scsi_sge** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i8* @U64_HI(i32 %172)
  %174 = load %struct.scsi_sge*, %struct.scsi_sge** %6, align 8
  %175 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i8* %173, i8** %176, align 8
  %177 = load i8*, i8** @QEDF_PAGE_SIZE, align 8
  %178 = load %struct.scsi_sge*, %struct.scsi_sge** %6, align 8
  %179 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %141, %133, %108, %83, %59
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @memset(%struct.qedf_mp_req*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i8*, i32*, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @qedf_free_mp_resc(%struct.qedf_ioreq*) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i8* @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
