; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_read_config_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_read_config_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@NOZOMI_CONFIG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ConfigTable Bad! 0x%08X != 0x%08X\0A\00", align 1
@TOGGLE_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Second phase, configuring card\00", align 1
@PORT_MDM = common dso_local global i64 0, align 8
@PORT_DIAG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"toggle ports: MDM UL:%d MDM DL:%d, DIAG DL:%d\00", align 1
@MAX_PORT = common dso_local global i32 0, align 4
@CTRL_DL = common dso_local global i32 0, align 4
@NOZOMI_STATE_ALLOCATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Initialization OK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"First phase: pushing upload buffers, clearing download\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Version of card: %d\0A\00", align 1
@CH_A = common dso_local global i64 0, align 8
@CH_B = common dso_local global i64 0, align 8
@MDM_UL = common dso_local global i32 0, align 4
@DIAG_DL = common dso_local global i32 0, align 4
@MDM_DL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"First phase done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nozomi*)* @nozomi_read_config_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nozomi_read_config_table(%struct.nozomi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nozomi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nozomi* %0, %struct.nozomi** %3, align 8
  %6 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %7 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %6, i32 0, i32 3
  %8 = bitcast %struct.TYPE_7__* %7 to i64*
  %9 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %10 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 0
  %13 = call i32 @read_mem32(i64* %8, i64 %12, i32 4)
  %14 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %15 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NOZOMI_CONFIG_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %22 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %26 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NOZOMI_CONFIG_MAGIC, align 8
  %30 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  store i32 0, i32* %2, align 4
  br label %215

31:                                               ; preds = %1
  %32 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %33 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %39 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TOGGLE_VALID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %155

45:                                               ; preds = %37, %31
  %46 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %48 = call i32 @nozomi_setup_memory(%struct.nozomi* %47)
  %49 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %50 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %55 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* @PORT_MDM, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i32 %53, i32* %59, align 4
  %60 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %61 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %66 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* @PORT_MDM, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %64, i32* %70, align 8
  %71 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %72 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %77 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* @PORT_DIAG, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 %75, i32* %81, align 8
  %82 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %83 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64, i64* @PORT_MDM, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %90 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* @PORT_MDM, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %97 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i64, i64* @PORT_DIAG, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %95, i32 %102)
  %104 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %105 = call i32 @dump_table(%struct.nozomi* %104)
  %106 = load i64, i64* @PORT_MDM, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %129, %45
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MAX_PORT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %114 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = call i32 @memset(i32* %119, i32 0, i32 4)
  %121 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %122 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = call i32 @memset(i32* %127, i32 0, i32 4)
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %108

132:                                              ; preds = %108
  %133 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %134 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CTRL_DL, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %139 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %141 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %144 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @writew(i32 %142, i32 %145)
  %147 = load i32, i32* @NOZOMI_STATE_ALLOCATED, align 4
  %148 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %149 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 8
  %150 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %151 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %150, i32 0, i32 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = call i32 (i32*, i8*, ...) @dev_info(i32* %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %215

155:                                              ; preds = %37
  %156 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %157 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %214

161:                                              ; preds = %155
  %162 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %163 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TOGGLE_VALID, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %214

169:                                              ; preds = %161
  store i64 0, i64* %5, align 8
  %170 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %172 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %171, i32 0, i32 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %176 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i32*, i8*, ...) @dev_info(i32* %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %178)
  %180 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %181 = call i32 @nozomi_setup_memory(%struct.nozomi* %180)
  %182 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %183 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %182, i32 0, i32 2
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i64, i64* @PORT_MDM, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @CH_A, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @write_mem32(i32 %191, i64* %5, i32 4)
  %193 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %194 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %193, i32 0, i32 2
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = load i64, i64* @PORT_MDM, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @CH_B, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @write_mem32(i32 %202, i64* %5, i32 4)
  %204 = load i32, i32* @MDM_UL, align 4
  %205 = load i32, i32* @DIAG_DL, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @MDM_DL, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %210 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @writew(i32 %208, i32 %211)
  %213 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %214

214:                                              ; preds = %169, %161, %155
  store i32 1, i32* %2, align 4
  br label %215

215:                                              ; preds = %214, %132, %20
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @read_mem32(i64*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @DBG1(i8*, ...) #1

declare dso_local i32 @nozomi_setup_memory(%struct.nozomi*) #1

declare dso_local i32 @dump_table(%struct.nozomi*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @write_mem32(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
