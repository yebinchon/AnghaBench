; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_iocbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_iocbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.req_que = type { i64, i64, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_start_iocbs(%struct.scsi_qla_host* %0, %struct.req_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.req_que*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.req_que* %1, %struct.req_que** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %11 = load %struct.req_que*, %struct.req_que** %4, align 8
  %12 = getelementptr inbounds %struct.req_que, %struct.req_que* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_11__* @ISP_QUE_REG(%struct.qla_hw_data* %10, i32 %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %16 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = call i32 @qla82xx_start_iocbs(%struct.scsi_qla_host* %19)
  br label %140

21:                                               ; preds = %2
  %22 = load %struct.req_que*, %struct.req_que** %4, align 8
  %23 = getelementptr inbounds %struct.req_que, %struct.req_que* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.req_que*, %struct.req_que** %4, align 8
  %27 = getelementptr inbounds %struct.req_que, %struct.req_que* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.req_que*, %struct.req_que** %4, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.req_que*, %struct.req_que** %4, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.req_que*, %struct.req_que** %4, align 8
  %37 = getelementptr inbounds %struct.req_que, %struct.req_que* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.req_que*, %struct.req_que** %4, align 8
  %40 = getelementptr inbounds %struct.req_que, %struct.req_que* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %46

41:                                               ; preds = %21
  %42 = load %struct.req_que*, %struct.req_que** %4, align 8
  %43 = getelementptr inbounds %struct.req_que, %struct.req_que* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %53 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %57 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %51, %46
  %60 = load %struct.req_que*, %struct.req_que** %4, align 8
  %61 = getelementptr inbounds %struct.req_que, %struct.req_que* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.req_que*, %struct.req_que** %4, align 8
  %64 = getelementptr inbounds %struct.req_que, %struct.req_que* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @WRT_REG_DWORD(i32* %62, i64 %65)
  br label %139

67:                                               ; preds = %55
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %69 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.req_que*, %struct.req_que** %4, align 8
  %73 = getelementptr inbounds %struct.req_que, %struct.req_que* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.req_que*, %struct.req_que** %4, align 8
  %76 = getelementptr inbounds %struct.req_que, %struct.req_que* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @WRT_REG_DWORD(i32* %74, i64 %77)
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @RD_REG_DWORD_RELAXED(i32* %83)
  br label %138

85:                                               ; preds = %67
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %87 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.req_que*, %struct.req_que** %4, align 8
  %94 = getelementptr inbounds %struct.req_que, %struct.req_que* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @WRT_REG_DWORD(i32* %92, i64 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = call i32 @RD_REG_DWORD_RELAXED(i32* %99)
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @QLAFX00_SET_HST_INTR(%struct.qla_hw_data* %101, i32 %104)
  br label %137

106:                                              ; preds = %85
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %108 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.req_que*, %struct.req_que** %4, align 8
  %115 = getelementptr inbounds %struct.req_que, %struct.req_que* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @WRT_REG_DWORD(i32* %113, i64 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = call i32 @RD_REG_DWORD_RELAXED(i32* %120)
  br label %136

122:                                              ; preds = %106
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = call i32 @ISP_REQ_Q_IN(%struct.qla_hw_data* %123, i32* %125)
  %127 = load %struct.req_que*, %struct.req_que** %4, align 8
  %128 = getelementptr inbounds %struct.req_que, %struct.req_que* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @WRT_REG_WORD(i32 %126, i64 %129)
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = call i32 @ISP_REQ_Q_IN(%struct.qla_hw_data* %131, i32* %133)
  %135 = call i32 @RD_REG_WORD_RELAXED(i32 %134)
  br label %136

136:                                              ; preds = %122, %110
  br label %137

137:                                              ; preds = %136, %89
  br label %138

138:                                              ; preds = %137, %71
  br label %139

139:                                              ; preds = %138, %59
  br label %140

140:                                              ; preds = %139, %18
  ret void
}

declare dso_local %struct.TYPE_11__* @ISP_QUE_REG(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_start_iocbs(%struct.scsi_qla_host*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @WRT_REG_DWORD(i32*, i64) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i32 @RD_REG_DWORD_RELAXED(i32*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @QLAFX00_SET_HST_INTR(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @WRT_REG_WORD(i32, i64) #1

declare dso_local i32 @ISP_REQ_Q_IN(%struct.qla_hw_data*, i32*) #1

declare dso_local i32 @RD_REG_WORD_RELAXED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
