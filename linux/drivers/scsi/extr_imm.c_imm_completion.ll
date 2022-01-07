; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i16, i64 }

@jiffies = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i8 0, align 1
@READ_10 = common dso_local global i8 0, align 1
@WRITE_6 = common dso_local global i8 0, align 1
@WRITE_10 = common dso_local global i8 0, align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IMM_BURST_SIZE = common dso_local global i64 0, align 8
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @imm_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_completion(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_13__* @imm_dev(i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %5, align 2
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @READ_6, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @READ_10, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @WRITE_6, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @WRITE_10, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br label %50

50:                                               ; preds = %44, %38, %32, %1
  %51 = phi i1 [ true, %38 ], [ true, %32 ], [ true, %1 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i16, i16* %5, align 2
  %54 = call i32 @w_ctr(i16 zeroext %53, i32 12)
  %55 = load i16, i16* %5, align 2
  %56 = call i32 @r_str(i16 zeroext %55)
  %57 = and i32 %56, 184
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %7, align 1
  br label %59

59:                                               ; preds = %227, %50
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 184
  br i1 %62, label %63, label %228

63:                                               ; preds = %59
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  %67 = call i64 @time_after(i64 %64, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %229

70:                                               ; preds = %63
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 136
  %74 = icmp ne i32 %73, 136
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %70
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load i32, i32* @DID_ERROR, align 4
  %84 = call i32 @imm_fail(%struct.TYPE_13__* %82, i32 %83)
  store i32 -1, i32* %2, align 4
  br label %229

85:                                               ; preds = %75
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IMM_BURST_SIZE, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @IMM_BURST_SIZE, align 8
  br label %103

102:                                              ; preds = %93, %90
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i64 [ %101, %100 ], [ 2, %102 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @imm_out(%struct.TYPE_13__* %106, i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %136

113:                                              ; preds = %85
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IMM_BURST_SIZE, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i64, i64* @IMM_BURST_SIZE, align 8
  br label %126

125:                                              ; preds = %116, %113
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i64 [ %124, %123 ], [ 1, %125 ]
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @imm_in(%struct.TYPE_13__* %129, i32 %133, i32 %134)
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %126, %103
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %137
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, %144
  store i64 %149, i64* %147, align 8
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %136
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = load i32, i32* @DID_BUS_BUSY, align 4
  %155 = call i32 @imm_fail(%struct.TYPE_13__* %153, i32 %154)
  store i32 -1, i32* %2, align 4
  br label %229

156:                                              ; preds = %136
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %215

162:                                              ; preds = %156
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %215, label %168

168:                                              ; preds = %162
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %171, align 8
  %174 = icmp ne i32 %172, 0
  br i1 %174, label %175, label %214

175:                                              ; preds = %168
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %177 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = call %struct.TYPE_14__* @sg_next(%struct.TYPE_14__* %179)
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %183, align 8
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %185 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  store i64 %189, i64* %192, align 8
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = call i32 @sg_virt(%struct.TYPE_14__* %196)
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 8
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = and i64 %204, 1
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %175
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %209 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %207, %175
  br label %214

214:                                              ; preds = %213, %168
  br label %215

215:                                              ; preds = %214, %162, %156
  %216 = load i16, i16* %5, align 2
  %217 = call i32 @w_ctr(i16 zeroext %216, i32 12)
  %218 = load i16, i16* %5, align 2
  %219 = call i32 @r_str(i16 zeroext %218)
  %220 = and i32 %219, 184
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %7, align 1
  %222 = load i8, i8* %7, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 %223, 128
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %229

227:                                              ; preds = %215
  br label %59

228:                                              ; preds = %59
  store i32 1, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %226, %152, %81, %69
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_13__* @imm_dev(i32) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @imm_fail(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @imm_out(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @imm_in(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @sg_next(%struct.TYPE_14__*) #1

declare dso_local i32 @sg_virt(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
