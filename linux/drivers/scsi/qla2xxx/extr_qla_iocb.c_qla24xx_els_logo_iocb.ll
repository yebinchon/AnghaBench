; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_logo_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_logo_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_22__*, i32, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_24__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.els_entry_24xx = type { i32, i32, i32, i64, i32, i8*, i32, i8*, i8*, i32, i8*, i32*, i32*, i32, i32, i32, i32, i64, i64, i32 }

@ELS_IOCB_TYPE = common dso_local global i32 0, align 4
@EST_SOFI3 = common dso_local global i32 0, align 4
@ELS_DCMD_PLOGI = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"PLOGI ELS IOCB:\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.els_entry_24xx*)* @qla24xx_els_logo_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_els_logo_iocb(%struct.TYPE_17__* %0, %struct.els_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.els_entry_24xx*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.srb_iocb*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.els_entry_24xx* %1, %struct.els_entry_24xx** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store %struct.srb_iocb* %12, %struct.srb_iocb** %6, align 8
  %13 = load i32, i32* @ELS_IOCB_TYPE, align 4
  %14 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %15 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %14, i32 0, i32 19
  store i32 %13, i32* %15, align 8
  %16 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %17 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %19 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %18, i32 0, i32 18
  store i64 0, i64* %19, align 8
  %20 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %21 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %20, i32 0, i32 17
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %26 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %34 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 8
  %35 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %36 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %41 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @EST_SOFI3, align 4
  %43 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %44 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 8
  %45 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %46 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %48 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %53 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %62 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %61, i32 0, i32 12
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %73 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %72, i32 0, i32 12
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %84 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %93 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %92, i32 0, i32 11
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %102 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %101, i32 0, i32 11
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %111 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %115 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ELS_DCMD_PLOGI, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %2
  %122 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %123 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %122, i32 0, i32 4
  store i32 0, i32* %123, align 8
  %124 = call i8* @cpu_to_le32(i32 4)
  %125 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %126 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %128 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %127, i32 0, i32 10
  store i8* %124, i8** %128, align 8
  %129 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %130 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %135 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %134, i32 0, i32 9
  %136 = call i32 @put_unaligned_le64(i32 %133, i32* %135)
  %137 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %138 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  %139 = call i8* @cpu_to_le32(i32 4)
  %140 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %141 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %143 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %142, i32 0, i32 7
  store i8* %139, i8** %143, align 8
  %144 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %145 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %150 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %149, i32 0, i32 6
  %151 = call i32 @put_unaligned_le64(i32 %148, i32* %150)
  %152 = load i64, i64* @ql_dbg_io, align 8
  %153 = load i64, i64* @ql_dbg_buffer, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = call i32 @ql_dbg(i64 %154, %struct.TYPE_18__* %155, i32 12403, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @ql_log_info, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %160 = bitcast %struct.els_entry_24xx* %159 to i32*
  %161 = call i32 @ql_dump_buffer(i32 %157, %struct.TYPE_18__* %158, i32 265, i32* %160, i32 112)
  br label %185

162:                                              ; preds = %2
  %163 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %164 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %163, i32 0, i32 4
  store i32 8192, i32* %164, align 8
  %165 = call i8* @cpu_to_le32(i32 4)
  %166 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %167 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %166, i32 0, i32 10
  store i8* %165, i8** %167, align 8
  %168 = load %struct.srb_iocb*, %struct.srb_iocb** %6, align 8
  %169 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %174 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %173, i32 0, i32 9
  %175 = call i32 @put_unaligned_le64(i32 %172, i32* %174)
  %176 = call i8* @cpu_to_le32(i32 4)
  %177 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %178 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %177, i32 0, i32 8
  store i8* %176, i8** %178, align 8
  %179 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %180 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %179, i32 0, i32 7
  store i8* null, i8** %180, align 8
  %181 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %182 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %181, i32 0, i32 6
  store i32 0, i32* %182, align 8
  %183 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %184 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %183, i32 0, i32 5
  store i8* null, i8** %184, align 8
  br label %185

185:                                              ; preds = %162, %121
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ql_dump_buffer(i32, %struct.TYPE_18__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
