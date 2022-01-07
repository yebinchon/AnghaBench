; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_put_rq_bdq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_put_rq_bdq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_cqe_unsolicited = type { i32 }
%struct.scsi_bd = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i64* }
%struct.TYPE_6__ = type { i8*, i8* }

@QEDI_BDQ_NUM = common dso_local global i32 0, align 4
@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"wrong idx %d returned by FW, dropping the unsolicited pkt\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx] idx [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %struct.iscsi_cqe_unsolicited*, i32)* @qedi_put_rq_bdq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_put_rq_bdq_buf(%struct.qedi_ctx* %0, %struct.iscsi_cqe_unsolicited* %1, i32 %2) #0 {
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.iscsi_cqe_unsolicited*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_bd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.iscsi_cqe_unsolicited* %1, %struct.iscsi_cqe_unsolicited** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.iscsi_cqe_unsolicited*, %struct.iscsi_cqe_unsolicited** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_cqe_unsolicited, %struct.iscsi_cqe_unsolicited* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @QEDI_BDQ_NUM, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %18, i32 0, i32 4
  %20 = load i32, i32* @QEDI_LOG_CONN, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %19, i32 %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %129

23:                                               ; preds = %3
  %24 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_bd*
  store %struct.scsi_bd* %27, %struct.scsi_bd** %9, align 8
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %30, %33
  %35 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %35, i64 %36
  store %struct.scsi_bd* %37, %struct.scsi_bd** %9, align 8
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @QEDI_U64_HI(i32 %45)
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %49 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %51, i32 0, i32 5
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @QEDI_U64_LO(i32 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %62 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %64, i32 0, i32 4
  %66 = load i32, i32* @QEDI_LOG_CONN, align 4
  %67 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %68 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %69 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %73 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %65, i32 %66, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_bd* %67, i8* %71, i8* %75, i32 %76)
  %78 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %79 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %85 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %91 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 2
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.scsi_bd*, %struct.scsi_bd** %9, align 8
  %99 = getelementptr inbounds %struct.scsi_bd, %struct.scsi_bd* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @writew(i32 %109, i32 %112)
  %114 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @readw(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @writew(i32 %120, i32 %123)
  %125 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %126 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @readw(i32 %127)
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %23, %17
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QEDI_U64_HI(i32) #1

declare dso_local i32 @QEDI_U64_LO(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
