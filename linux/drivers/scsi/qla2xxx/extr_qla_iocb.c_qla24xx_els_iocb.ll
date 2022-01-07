; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_23__*, i32, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.bsg_job* }
%struct.bsg_job = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.fc_bsg_request* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.els_entry_24xx = type { i32, i8*, i32, i8*, i32, i8*, i8*, i64, i32*, i32, i8*, i32, i32, i8*, i8*, i32, i64, i64, i32 }

@ELS_IOCB_TYPE = common dso_local global i32 0, align 4
@EST_SOFI3 = common dso_local global i32 0, align 4
@SRB_ELS_CMD_RPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.els_entry_24xx*)* @qla24xx_els_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_els_iocb(%struct.TYPE_16__* %0, %struct.els_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.els_entry_24xx*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.fc_bsg_request*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.els_entry_24xx* %1, %struct.els_entry_24xx** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  store %struct.bsg_job* %10, %struct.bsg_job** %5, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 2
  %13 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %12, align 8
  store %struct.fc_bsg_request* %13, %struct.fc_bsg_request** %6, align 8
  %14 = load i32, i32* @ELS_IOCB_TYPE, align 4
  %15 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %16 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 8
  %17 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %18 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %20 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %19, i32 0, i32 17
  store i64 0, i64* %20, align 8
  %21 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %22 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %21, i32 0, i32 16
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %27 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %35 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %42 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %49 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EST_SOFI3, align 4
  %51 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %52 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %54 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %59 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SRB_ELS_CMD_RPT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %2
  %66 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %6, align 8
  %67 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %77

71:                                               ; preds = %2
  %72 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %6, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i32 [ %70, %65 ], [ %76, %71 ]
  %79 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %80 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %89 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %100 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %111 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %109, i32* %113, align 4
  %114 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %115 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %117 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %122 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %124 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %129 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %131 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sg_dma_address(i32 %133)
  %135 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %136 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %135, i32 0, i32 4
  %137 = call i32 @put_unaligned_le64(i32 %134, i32* %136)
  %138 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %139 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @sg_dma_len(i32 %141)
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %145 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %147 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @sg_dma_address(i32 %149)
  %151 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %152 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %151, i32 0, i32 2
  %153 = call i32 @put_unaligned_le64(i32 %150, i32* %152)
  %154 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %155 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @sg_dma_len(i32 %157)
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.els_entry_24xx*, %struct.els_entry_24xx** %4, align 8
  %161 = getelementptr inbounds %struct.els_entry_24xx, %struct.els_entry_24xx* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
