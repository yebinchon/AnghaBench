; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_ftp.c_sclp_ftp_et7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_ftp.c_sclp_ftp_et7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmcdrv_ftp_cmdspec = type { i32, i32, i32, i32, i32 }
%struct.completion = type { i32 }
%struct.sclp_diag_sccb = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32 }
%struct.sclp_req = type { i64, %struct.completion*, i32, %struct.sclp_diag_sccb*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCLP_DIAG_FTP_EVBUF_LEN = common dso_local global i8* null, align 8
@EVTYP_DIAG_TEST = common dso_local global i32 0, align 4
@SCLP_DIAG_FTP_ROUTE = common dso_local global i32 0, align 4
@SCLP_DIAG_FTP_XPCX = common dso_local global i32 0, align 4
@_ASCE_REAL_SPACE = common dso_local global i32 0, align 4
@SCLP_DIAG_FTP_LDFAIL = common dso_local global i32 0, align 4
@HMCDRV_FTP_FIDENT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i64 0, align 8
@sclp_ftp_txcb = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmcdrv_ftp_cmdspec*)* @sclp_ftp_et7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_ftp_et7(%struct.hmcdrv_ftp_cmdspec* %0) #0 {
  %2 = alloca %struct.hmcdrv_ftp_cmdspec*, align 8
  %3 = alloca %struct.completion, align 4
  %4 = alloca %struct.sclp_diag_sccb*, align 8
  %5 = alloca %struct.sclp_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hmcdrv_ftp_cmdspec* %0, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sclp_req* @kzalloc(i32 40, i32 %8)
  store %struct.sclp_req* %9, %struct.sclp_req** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @GFP_DMA, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @get_zeroed_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.sclp_diag_sccb*
  store %struct.sclp_diag_sccb* %15, %struct.sclp_diag_sccb** %4, align 8
  %16 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %17 = icmp ne %struct.sclp_req* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %20 = icmp ne %struct.sclp_diag_sccb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %178

24:                                               ; preds = %18
  %25 = load i8*, i8** @SCLP_DIAG_FTP_EVBUF_LEN, align 8
  %26 = getelementptr i8, i8* %25, i64 4
  %27 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %28 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @EVTYP_DIAG_TEST, align 4
  %31 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %32 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 8
  %35 = load i8*, i8** @SCLP_DIAG_FTP_EVBUF_LEN, align 8
  %36 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %37 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %35, i8** %39, align 8
  %40 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %41 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @SCLP_DIAG_FTP_ROUTE, align 4
  %45 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %46 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @SCLP_DIAG_FTP_XPCX, align 4
  %49 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %50 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  store i32 %48, i32* %53, align 8
  %54 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %55 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 9
  store i64 0, i64* %58, align 8
  %59 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %60 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 8
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @_ASCE_REAL_SPACE, align 4
  %65 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %66 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @SCLP_DIAG_FTP_LDFAIL, align 4
  %71 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %72 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i32 %70, i32* %75, align 8
  %76 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %77 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %82 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %85 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  store i32 %83, i32* %88, align 8
  %89 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %90 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %93 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i32 %91, i32* %96, align 4
  %97 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %98 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %101 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %99, i32* %104, align 8
  %105 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %106 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @virt_to_phys(i32 %107)
  %109 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %110 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  %114 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %115 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %121 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* @HMCDRV_FTP_FIDENT_MAX, align 8
  %124 = call i64 @strlcpy(i32 %119, i32 %122, i64 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @HMCDRV_FTP_FIDENT_MAX, align 8
  %127 = icmp uge i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %24
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %178

131:                                              ; preds = %24
  %132 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %133 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %134 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %136 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %137 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %136, i32 0, i32 3
  store %struct.sclp_diag_sccb* %135, %struct.sclp_diag_sccb** %137, align 8
  %138 = load i64, i64* @SCLP_REQ_FILLED, align 8
  %139 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %140 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* @sclp_ftp_txcb, align 4
  %142 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %143 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %145 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %144, i32 0, i32 1
  store %struct.completion* %3, %struct.completion** %145, align 8
  %146 = call i32 @init_completion(%struct.completion* %3)
  %147 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %148 = call i32 @sclp_add_request(%struct.sclp_req* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %131
  br label %178

152:                                              ; preds = %131
  %153 = call i32 @wait_for_completion(%struct.completion* %3)
  %154 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %155 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SCLP_REQ_DONE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %174, label %159

159:                                              ; preds = %152
  %160 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %161 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 128
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %159
  %168 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %169 = getelementptr inbounds %struct.sclp_diag_sccb, %struct.sclp_diag_sccb* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 255
  %173 = icmp ne i32 %172, 32
  br i1 %173, label %174, label %177

174:                                              ; preds = %167, %159, %152
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %167
  br label %178

178:                                              ; preds = %177, %151, %128, %21
  %179 = load %struct.sclp_diag_sccb*, %struct.sclp_diag_sccb** %4, align 8
  %180 = ptrtoint %struct.sclp_diag_sccb* %179 to i64
  %181 = call i32 @free_page(i64 %180)
  %182 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %183 = call i32 @kfree(%struct.sclp_req* %182)
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local %struct.sclp_req* @kzalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i64 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
