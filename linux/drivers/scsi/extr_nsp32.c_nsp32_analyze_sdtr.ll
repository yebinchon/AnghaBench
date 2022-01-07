; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_analyze_sdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_analyze_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i8 }
%struct.TYPE_14__ = type { i32, i8 }

@NSP32_DEBUG_MSGINOCCUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@SDTR_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"target responds SDTR\00", align 1
@SDTR_DONE = common dso_local global i32 0, align 4
@SYNC_OFFSET = common dso_local global i8 0, align 1
@ASYNC_OFFSET = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"target send SDTR\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"exit: set async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp32_analyze_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_analyze_sdtr(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %3, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %6, align 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %7, align 1
  %31 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %32 = call i32 @nsp32_dbg(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SDTR_INITIATOR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %1
  %46 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %47 = call i32 @nsp32_dbg(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @SDTR_INITIATOR, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @SDTR_DONE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @SYNC_OFFSET, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %168

65:                                               ; preds = %45
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @ASYNC_OFFSET, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %171

72:                                               ; preds = %65
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i32 %74, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %168

84:                                               ; preds = %72
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = load i8, i8* %6, align 1
  %88 = call i32 @nsp32_search_period_entry(%struct.TYPE_16__* %85, %struct.TYPE_14__* %86, i8 zeroext %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %168

92:                                               ; preds = %84
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i8, i8* %7, align 1
  %97 = call i32 @nsp32_set_sync_entry(%struct.TYPE_16__* %93, %struct.TYPE_14__* %94, i32 %95, i8 zeroext %96)
  br label %162

98:                                               ; preds = %1
  %99 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %100 = call i32 @nsp32_dbg(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @SDTR_INITIATOR, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @SYNC_OFFSET, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i8, i8* @SYNC_OFFSET, align 1
  store i8 %112, i8* %7, align 1
  br label %113

113:                                              ; preds = %111, %98
  %114 = load i8, i8* %6, align 1
  %115 = zext i8 %114 to i32
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp slt i32 %115, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %6, align 1
  br label %131

131:                                              ; preds = %124, %113
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = load i8, i8* %6, align 1
  %135 = call i32 @nsp32_search_period_entry(%struct.TYPE_16__* %132, %struct.TYPE_14__* %133, i8 zeroext %134)
  store i32 %135, i32* %8, align 4
  %136 = load i8, i8* %7, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @ASYNC_OFFSET, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141, %131
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = call i32 @nsp32_set_async(%struct.TYPE_16__* %145, %struct.TYPE_14__* %146)
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %149 = load i8, i8* @ASYNC_OFFSET, align 1
  %150 = call i32 @nsp32_build_sdtr(%struct.scsi_cmnd* %148, i8 zeroext 0, i8 zeroext %149)
  br label %161

151:                                              ; preds = %141
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i8, i8* %7, align 1
  %156 = call i32 @nsp32_set_sync_entry(%struct.TYPE_16__* %152, %struct.TYPE_14__* %153, i32 %154, i8 zeroext %155)
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %158 = load i8, i8* %6, align 1
  %159 = load i8, i8* %7, align 1
  %160 = call i32 @nsp32_build_sdtr(%struct.scsi_cmnd* %157, i8 zeroext %158, i8 zeroext %159)
  br label %161

161:                                              ; preds = %151, %144
  br label %162

162:                                              ; preds = %161, %92
  %163 = load i8, i8* %6, align 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  store i8 %163, i8* %165, align 4
  %166 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %167 = call i32 @nsp32_dbg(i32 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %179

168:                                              ; preds = %91, %83, %64
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %170 = call i32 @nsp32_build_reject(%struct.scsi_cmnd* %169)
  br label %171

171:                                              ; preds = %168, %71
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = call i32 @nsp32_set_async(%struct.TYPE_16__* %172, %struct.TYPE_14__* %173)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i8 0, i8* %176, align 4
  %177 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %178 = call i32 @nsp32_dbg(i32 %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %171, %162
  ret void
}

declare dso_local i32 @nsp32_dbg(i32, i8*) #1

declare dso_local i32 @nsp32_search_period_entry(%struct.TYPE_16__*, %struct.TYPE_14__*, i8 zeroext) #1

declare dso_local i32 @nsp32_set_sync_entry(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i8 zeroext) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @nsp32_build_sdtr(%struct.scsi_cmnd*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @nsp32_build_reject(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
