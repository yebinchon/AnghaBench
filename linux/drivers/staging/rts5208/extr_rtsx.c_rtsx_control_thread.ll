; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_control_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_control_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_dev = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.rtsx_chip* }
%struct.TYPE_6__ = type { i32 }
%struct.rtsx_chip = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32 (%struct.TYPE_7__*)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.Scsi_Host = type { i32 }

@RTSX_STAT_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"-- rtsx-control exiting\0A\00", align 1
@RTSX_STAT_ABORT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"UNKNOWN data direction\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Bad target number (%d:%d)\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Bad LUN (%d:%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scsi command aborted\0A\00", align 1
@RTSX_STAT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtsx_control_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_control_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtsx_dev*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rtsx_dev*
  store %struct.rtsx_dev* %8, %struct.rtsx_dev** %4, align 8
  %9 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %9, i32 0, i32 5
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  store %struct.rtsx_chip* %11, %struct.rtsx_chip** %5, align 8
  %12 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %13 = call %struct.Scsi_Host* @rtsx_to_host(%struct.rtsx_dev* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %6, align 8
  br label %14

14:                                               ; preds = %205, %1
  %15 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %15, i32 0, i32 4
  %17 = call i64 @wait_for_completion_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %213

20:                                               ; preds = %14
  %21 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %22 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %25 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %26 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %30 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %35 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %213

37:                                               ; preds = %20
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = call i32 @scsi_lock(%struct.Scsi_Host* %38)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = load i32, i32* @RTSX_STAT_ABORT, align 4
  %42 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* @DID_ABORT, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %48 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %186

51:                                               ; preds = %37
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = call i32 @scsi_unlock(%struct.Scsi_Host* %52)
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %63 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @DID_ERROR, align 4
  %68 = shl i32 %67, 16
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %158

73:                                               ; preds = %51
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %73
  %83 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %84 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %93, i32 %101)
  %103 = load i32, i32* @DID_BAD_TARGET, align 4
  %104 = shl i32 %103, 16
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %106 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  br label %157

109:                                              ; preds = %73
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %111 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %118 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %109
  %122 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %123 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %127 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %134 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %132, i32 %140)
  %142 = load i32, i32* @DID_BAD_TARGET, align 4
  %143 = shl i32 %142, 16
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %145 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 8
  br label %156

148:                                              ; preds = %109
  %149 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %150 = call i32 @scsi_show_command(%struct.rtsx_chip* %149)
  %151 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %152 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %151, i32 0, i32 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %155 = call i32 @rtsx_invoke_transport(%struct.TYPE_7__* %153, %struct.rtsx_chip* %154)
  br label %156

156:                                              ; preds = %148, %121
  br label %157

157:                                              ; preds = %156, %82
  br label %158

158:                                              ; preds = %157, %61
  %159 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %160 = call i32 @scsi_lock(%struct.Scsi_Host* %159)
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %162 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = icmp ne %struct.TYPE_7__* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  br label %193

166:                                              ; preds = %158
  %167 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %168 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %167, i32 0, i32 1
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DID_ABORT, align 4
  %173 = shl i32 %172, 16
  %174 = icmp ne i32 %171, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %166
  %176 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %177 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %179, align 8
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %182 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = call i32 %180(%struct.TYPE_7__* %183)
  br label %192

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185, %44
  %187 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %188 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %187, i32 0, i32 3
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %192

192:                                              ; preds = %186, %175
  br label %193

193:                                              ; preds = %192, %165
  %194 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %195 = load i32, i32* @RTSX_STAT_ABORT, align 4
  %196 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %200 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %199, i32 0, i32 2
  %201 = call i32 @complete(i32* %200)
  %202 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %203 = load i32, i32* @RTSX_STAT_IDLE, align 4
  %204 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %202, i32 %203)
  br label %205

205:                                              ; preds = %198, %193
  %206 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %207 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %206, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %207, align 8
  %208 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %209 = call i32 @scsi_unlock(%struct.Scsi_Host* %208)
  %210 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %211 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %210, i32 0, i32 1
  %212 = call i32 @mutex_unlock(i32* %211)
  br label %14

213:                                              ; preds = %28, %19
  %214 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %215 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %214, i32 0, i32 0
  %216 = call i32 @complete_and_exit(i32* %215, i32 0)
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.Scsi_Host* @rtsx_to_host(%struct.rtsx_dev*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scsi_lock(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_unlock(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @scsi_show_command(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_invoke_transport(%struct.TYPE_7__*, %struct.rtsx_chip*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
