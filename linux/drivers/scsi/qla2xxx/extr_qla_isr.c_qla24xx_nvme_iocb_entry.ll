; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_nvme_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_nvme_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.nvmefc_fcp_req* }
%struct.nvmefc_fcp_req = type { i64, i64, i64 }
%struct.sts_entry_24xx = type { i32, i32, i32, i32, i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@SF_FCP_RSP_DMA = common dso_local global i32 0, align 4
@SF_NVME_ERSP = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NVME-%s error. Unhandled state_flags of %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"NVME-%s ERR Handling - hdl=%x status(%x) tr_len:%x resid=%x  ox_id=%x\0A\00", align 1
@NVME_FLAG_RESETTING = common dso_local global i32 0, align 4
@QLA_ABORTED = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, i8*, %struct.TYPE_15__*)* @qla24xx_nvme_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_nvme_iocb_entry(i32* %0, %struct.req_que* %1, i8* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca %struct.sts_entry_24xx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvmefc_fcp_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %20, %struct.sts_entry_24xx** %11, align 8
  %21 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %23 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le16_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.srb_iocb* %29, %struct.srb_iocb** %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %35 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %39 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %44 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %46, align 8
  store %struct.nvmefc_fcp_req* %47, %struct.nvmefc_fcp_req** %13, align 8
  %48 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %49 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i32 @atomic_dec(i32* %61)
  br label %63

63:                                               ; preds = %55, %4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SF_FCP_RSP_DMA, align 4
  %66 = load i32, i32* @SF_NVME_ERSP, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %72 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %143

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @SF_FCP_RSP_DMA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %82 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le16_to_cpu(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %87 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 8
  br label %142

90:                                               ; preds = %75
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @SF_NVME_ERSP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %90
  %96 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %97 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %96, i32 0, i32 3
  store i32* %97, i32** %16, align 8
  %98 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %13, align 8
  %99 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %17, align 8
  %102 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %103 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le16_to_cpu(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %108 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %112 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 2
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %127, %95
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %16, align 8
  %123 = load i32, i32* %121, align 4
  %124 = call i32 @swab32(i32 %123)
  %125 = load i32*, i32** %17, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %17, align 8
  store i32 %124, i32* %125, align 4
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %18, align 4
  br label %117

130:                                              ; preds = %117
  br label %141

131:                                              ; preds = %90
  %132 = load i32, i32* @ql_log_warn, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 (i32, i32, i32, i8*, i32, i32, ...) @ql_log(i32 %132, i32 %135, i32 20538, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %130
  br label %142

142:                                              ; preds = %141, %80
  br label %143

143:                                              ; preds = %142, %70
  %144 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %13, align 8
  %145 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %148 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le32_to_cpu(i32 %149)
  %151 = sub nsw i64 %146, %150
  %152 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %13, align 8
  %153 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 133
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %143
  %160 = load i32, i32* @ql_log_warn, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %13, align 8
  %172 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %175 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @le32_to_cpu(i32 %176)
  %178 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %179 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i32, i32, i8*, i32, i32, ...) @ql_log(i32 %160, i32 %163, i32 20576, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %169, i32 %170, i64 %173, i64 %177, i32 %180)
  br label %182

182:                                              ; preds = %159, %143
  %183 = load i32, i32* %15, align 4
  switch i32 %183, label %200 [
    i32 133, label %184
    i32 128, label %185
    i32 129, label %185
    i32 130, label %185
    i32 134, label %191
    i32 131, label %191
    i32 132, label %199
  ]

184:                                              ; preds = %182
  br label %202

185:                                              ; preds = %182, %182, %182
  %186 = load i32, i32* @NVME_FLAG_RESETTING, align 4
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %182, %182, %185
  %192 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %13, align 8
  %193 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %195 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* @QLA_ABORTED, align 4
  store i32 %198, i32* %14, align 4
  br label %202

199:                                              ; preds = %182
  br label %202

200:                                              ; preds = %182
  %201 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %200, %199, %191, %184
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 %205(%struct.TYPE_15__* %206, i32 %207)
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @ql_log(i32, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
