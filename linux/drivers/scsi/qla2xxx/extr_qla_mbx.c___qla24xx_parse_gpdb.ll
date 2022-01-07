; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c___qla24xx_parse_gpdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mbx.c___qla24xx_parse_gpdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.port_database_24xx = type { i32, i32, i32*, i32, i32*, i32*, i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@PDS_PRLI_COMPLETE = common dso_local global i32 0, align 4
@ql_dbg_mbx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to verify login-state (%x/%x) for loop_id %x.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FC_NO_LOOP_ID = common dso_local global i32 0, align 4
@QLA_NOT_LOGGED_IN = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@FCT_NVME_INITIATOR = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@FCT_NVME_TARGET = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@FCT_NVME_DISCOVERY = common dso_local global i32 0, align 4
@FCT_INITIATOR = common dso_local global i32 0, align 4
@FCT_TARGET = common dso_local global i32 0, align 4
@PDF_CLASS_2 = common dso_local global i32 0, align 4
@FC_COS_CLASS2 = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@FCF_CONF_COMP_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qla24xx_parse_gpdb(%struct.scsi_qla_host* %0, %struct.TYPE_7__* %1, %struct.port_database_24xx* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.port_database_24xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.port_database_24xx* %2, %struct.port_database_24xx** %6, align 8
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %18 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %22 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %10, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %27 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 15
  store i32 %29, i32* %9, align 4
  %30 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %31 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PDS_PRLI_COMPLETE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* @ql_dbg_mbx, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ql_dbg(i32 %39, %struct.scsi_qla_host* %40, i32 4506, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %47, i32* %7, align 4
  br label %222

48:                                               ; preds = %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FC_NO_LOOP_ID, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = bitcast i64* %8 to i32*
  %59 = call i64 @memcmp(i32 %57, i32* %58, i32 8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %66 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @memcmp(i32 %64, i32* %67, i32 8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61, %48
  %71 = load i32, i32* @QLA_NOT_LOGGED_IN, align 4
  store i32 %71, i32* %7, align 4
  br label %222

72:                                               ; preds = %61, %54
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %77 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @WWN_SIZE, align 4
  %80 = call i32 @memcpy(i32 %75, i32* %78, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %85 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @WWN_SIZE, align 4
  %88 = call i32 @memcpy(i32 %83, i32* %86, i32 %87)
  %89 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %90 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 8
  %98 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %99 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 %102, i32* %106, align 4
  %107 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %108 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %72
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i32 0, i32* %126, align 4
  %127 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %128 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BIT_5, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %124
  %136 = load i32, i32* @FCT_NVME_INITIATOR, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %124
  %142 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %143 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @BIT_4, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load i32, i32* @FCT_NVME_TARGET, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %141
  %157 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %158 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BIT_3, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load i32, i32* @FCT_NVME_DISCOVERY, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %156
  br label %190

172:                                              ; preds = %72
  %173 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %174 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @BIT_4, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load i32, i32* @FCT_INITIATOR, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %189

185:                                              ; preds = %172
  %186 = load i32, i32* @FCT_TARGET, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %181
  br label %190

190:                                              ; preds = %189, %171
  %191 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %192 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PDF_CLASS_2, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32, i32* @FC_COS_CLASS2, align 4
  br label %201

199:                                              ; preds = %190
  %200 = load i32, i32* @FC_COS_CLASS3, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.port_database_24xx*, %struct.port_database_24xx** %6, align 8
  %206 = getelementptr inbounds %struct.port_database_24xx, %struct.port_database_24xx* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @BIT_7, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %201
  %214 = load i32, i32* @FCF_CONF_COMP_SUPPORTED, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  br label %221

221:                                              ; preds = %213, %201
  br label %222

222:                                              ; preds = %221, %70, %38
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
