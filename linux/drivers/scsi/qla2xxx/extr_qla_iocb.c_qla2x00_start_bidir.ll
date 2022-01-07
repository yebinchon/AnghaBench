; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_bidir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_bidir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.scsi_qla_host = type { i64, %struct.TYPE_7__, i32, %struct.req_que*, %struct.qla_hw_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.req_que = type { i64, i64*, i64, i64, i64, %struct.TYPE_8__**, i32, i64, i32 }
%struct.qla_hw_data = type { i32, i32, %struct.rsp_que** }
%struct.rsp_que = type { i64 }
%struct.cmd_bidir = type { i64, i32*, i32, i32 }

@EXT_STATUS_OK = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@MK_SYNC_ALL = common dso_local global i32 0, align 4
@EXT_STATUS_MAILBOX = common dso_local global i32 0, align 4
@EXT_STATUS_BUSY = common dso_local global i32 0, align 4
@REQUEST_ENTRY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_start_bidir(%struct.TYPE_8__* %0, %struct.scsi_qla_host* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.cmd_bidir*, align 8
  %15 = alloca %struct.rsp_que*, align 8
  %16 = alloca %struct.req_que*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.scsi_qla_host* %1, %struct.scsi_qla_host** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %8, align 8
  store %struct.cmd_bidir* null, %struct.cmd_bidir** %14, align 8
  %21 = load i32, i32* @EXT_STATUS_OK, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 2
  %25 = load %struct.rsp_que**, %struct.rsp_que*** %24, align 8
  %26 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %25, i64 0
  %27 = load %struct.rsp_que*, %struct.rsp_que** %26, align 8
  store %struct.rsp_que* %27, %struct.rsp_que** %15, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 3
  %30 = load %struct.req_que*, %struct.req_que** %29, align 8
  store %struct.req_que* %30, %struct.req_que** %16, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %3
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MK_SYNC_ALL, align 4
  %41 = call i32 @qla2x00_marker(%struct.scsi_qla_host* %36, i32 %39, i32 0, i32 0, i32 %40)
  %42 = load i32, i32* @QLA_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @EXT_STATUS_MAILBOX, align 4
  store i32 %45, i32* %4, align 4
  br label %210

46:                                               ; preds = %35
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %3
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.req_que*, %struct.req_que** %16, align 8
  %55 = call i64 @qla2xxx_get_next_handle(%struct.req_que* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @EXT_STATUS_BUSY, align 4
  store i32 %59, i32* %17, align 4
  br label %204

60:                                               ; preds = %49
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host* %61, i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load %struct.req_que*, %struct.req_que** %16, align 8
  %65 = getelementptr inbounds %struct.req_que, %struct.req_que* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, 2
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %60
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %72 = call i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.req_que*, %struct.req_que** %16, align 8
  %76 = getelementptr inbounds %struct.req_que, %struct.req_que* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %77, align 8
  br label %84

79:                                               ; preds = %70
  %80 = load %struct.req_que*, %struct.req_que** %16, align 8
  %81 = getelementptr inbounds %struct.req_que, %struct.req_que* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @RD_REG_DWORD_RELAXED(i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i64 [ %78, %74 ], [ %83, %79 ]
  store i64 %85, i64* %12, align 8
  %86 = load %struct.req_que*, %struct.req_que** %16, align 8
  %87 = getelementptr inbounds %struct.req_que, %struct.req_que* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.req_que*, %struct.req_que** %16, align 8
  %94 = getelementptr inbounds %struct.req_que, %struct.req_que* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %struct.req_que*, %struct.req_que** %16, align 8
  %98 = getelementptr inbounds %struct.req_que, %struct.req_que* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %111

99:                                               ; preds = %84
  %100 = load %struct.req_que*, %struct.req_que** %16, align 8
  %101 = getelementptr inbounds %struct.req_que, %struct.req_que* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.req_que*, %struct.req_que** %16, align 8
  %104 = getelementptr inbounds %struct.req_que, %struct.req_que* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub nsw i64 %105, %106
  %108 = sub nsw i64 %102, %107
  %109 = load %struct.req_que*, %struct.req_que** %16, align 8
  %110 = getelementptr inbounds %struct.req_que, %struct.req_que* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %99, %91
  br label %112

112:                                              ; preds = %111, %60
  %113 = load %struct.req_que*, %struct.req_que** %16, align 8
  %114 = getelementptr inbounds %struct.req_que, %struct.req_que* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add nsw i64 %116, 2
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @EXT_STATUS_BUSY, align 4
  store i32 %120, i32* %17, align 4
  br label %204

121:                                              ; preds = %112
  %122 = load %struct.req_que*, %struct.req_que** %16, align 8
  %123 = getelementptr inbounds %struct.req_que, %struct.req_que* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.cmd_bidir*
  store %struct.cmd_bidir* %125, %struct.cmd_bidir** %14, align 8
  %126 = load %struct.req_que*, %struct.req_que** %16, align 8
  %127 = getelementptr inbounds %struct.req_que, %struct.req_que* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @MAKE_HANDLE(i32 %128, i64 %129)
  %131 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %132 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %134 = bitcast %struct.cmd_bidir* %133 to i64*
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  store i64* %135, i64** %13, align 8
  %136 = load i64*, i64** %13, align 8
  %137 = load i64, i64* @REQUEST_ENTRY_SIZE, align 8
  %138 = sub nsw i64 %137, 8
  %139 = call i32 @memset(i64* %136, i32 0, i64 %138)
  %140 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %141 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cpu_to_le16(i32 %142)
  %144 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %145 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %147 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %152 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %150, i32* %154, align 4
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %156 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %161 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %159, i32* %163, align 4
  %164 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %165 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %170 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %175 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @qla25xx_build_bidir_iocb(%struct.TYPE_8__* %173, %struct.scsi_qla_host* %174, %struct.cmd_bidir* %175, i64 %176)
  %178 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  %179 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.cmd_bidir*, %struct.cmd_bidir** %14, align 8
  %182 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.req_que*, %struct.req_que** %16, align 8
  %185 = getelementptr inbounds %struct.req_que, %struct.req_que* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = load %struct.req_que*, %struct.req_que** %16, align 8
  %188 = getelementptr inbounds %struct.req_que, %struct.req_que* %187, i32 0, i32 5
  %189 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %189, i64 %190
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** %191, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load %struct.req_que*, %struct.req_que** %16, align 8
  %197 = getelementptr inbounds %struct.req_que, %struct.req_que* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = call i32 (...) @wmb()
  %201 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %202 = load %struct.req_que*, %struct.req_que** %16, align 8
  %203 = call i32 @qla2x00_start_iocbs(%struct.scsi_qla_host* %201, %struct.req_que* %202)
  br label %204

204:                                              ; preds = %121, %119, %58
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %206 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %205, i32 0, i32 0
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %204, %44
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @qla2x00_marker(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qla2xxx_get_next_handle(%struct.req_que*) #1

declare dso_local i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host*, i64) #1

declare dso_local i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @RD_REG_DWORD_RELAXED(i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qla25xx_build_bidir_iocb(%struct.TYPE_8__*, %struct.scsi_qla_host*, %struct.cmd_bidir*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.scsi_qla_host*, %struct.req_que*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
