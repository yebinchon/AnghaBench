; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_abort_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_abort_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_12__*, %struct.TYPE_19__*, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.req_que* }
%struct.req_que = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_11__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.abort_entry_24xx = type { i32, i8*, i32, i8*, i32*, i8*, i8*, i32 }

@ABORT_IOCB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.abort_entry_24xx*)* @qla24xx_abort_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_abort_iocb(%struct.TYPE_18__* %0, %struct.abort_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.abort_entry_24xx*, align 8
  %5 = alloca %struct.srb_iocb*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.req_que*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.abort_entry_24xx* %1, %struct.abort_entry_24xx** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.srb_iocb* %10, %struct.srb_iocb** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.req_que*, %struct.req_que** %17, align 8
  store %struct.req_que* %18, %struct.req_que** %7, align 8
  %19 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %20 = call i32 @memset(%struct.abort_entry_24xx* %19, i32 0, i32 64)
  %21 = load i32, i32* @ABORT_IOCB_TYPE, align 4
  %22 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %23 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %25 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.req_que*, %struct.req_que** %7, align 8
  %27 = getelementptr inbounds %struct.req_que, %struct.req_que* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MAKE_HANDLE(i32 %28, i32 %31)
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %35 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %82

40:                                               ; preds = %2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %48 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %57 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %68 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %79 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %40, %2
  %83 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %84 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %89 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MAKE_HANDLE(i32 %87, i32 %92)
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %96 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %101 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %103 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @cpu_to_le16(i32 %106)
  %108 = load %struct.abort_entry_24xx*, %struct.abort_entry_24xx** %4, align 8
  %109 = getelementptr inbounds %struct.abort_entry_24xx, %struct.abort_entry_24xx* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @memset(%struct.abort_entry_24xx*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
