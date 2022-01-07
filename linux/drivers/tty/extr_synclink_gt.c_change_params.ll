; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_change_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_change_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s change_params\0A\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ASYNC_PARITY_ODD = common dso_local global i32 0, align 4
@ASYNC_PARITY_EVEN = common dso_local global i32 0, align 4
@ASYNC_PARITY_NONE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@IRQ_RXOVER = common dso_local global i32 0, align 4
@MASK_PARITY = common dso_local global i32 0, align 4
@MASK_FRAMING = common dso_local global i32 0, align 4
@MASK_BREAK = common dso_local global i32 0, align 4
@MASK_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @change_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_params(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %240

11:                                               ; preds = %1
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @DBGINFO(i8* %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CBAUD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %11
  %30 = load i32, i32* @SerialSignal_RTS, align 4
  %31 = load i32, i32* @SerialSignal_DTR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %46

37:                                               ; preds = %11
  %38 = load i32, i32* @SerialSignal_RTS, align 4
  %39 = load i32, i32* @SerialSignal_DTR, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CSIZE, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %66 [
    i32 131, label %50
    i32 130, label %54
    i32 129, label %58
    i32 128, label %62
  ]

50:                                               ; preds = %46
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 5, i32* %53, align 8
  br label %70

54:                                               ; preds = %46
  %55 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 6, i32* %57, align 8
  br label %70

58:                                               ; preds = %46
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 7, i32* %61, align 8
  br label %70

62:                                               ; preds = %46
  %63 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 8, i32* %65, align 8
  br label %70

66:                                               ; preds = %46
  %67 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %68 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 7, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62, %58, %54, %50
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @CSTOPB, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 1
  %77 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %78 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @PARENB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %70
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @PARODD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @ASYNC_PARITY_ODD, align 4
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @ASYNC_PARITY_EVEN, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  br label %103

98:                                               ; preds = %70
  %99 = load i32, i32* @ASYNC_PARITY_NONE, align 4
  %100 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %105 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %109 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %107, %111
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  %114 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %115 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @tty_get_baud_rate(%struct.TYPE_14__* %117)
  %119 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %120 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %123 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %103
  %128 = load i32, i32* @HZ, align 4
  %129 = mul nsw i32 32, %128
  %130 = load i32, i32* %4, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %133 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %131, %135
  %137 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %138 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %127, %103
  %140 = load i32, i32* @HZ, align 4
  %141 = sdiv i32 %140, 50
  %142 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %143 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %147 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %146, i32 0, i32 4
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @CRTSCTS, align 4
  %150 = and i32 %148, %149
  %151 = call i32 @tty_port_set_cts_flow(%struct.TYPE_13__* %147, i32 %150)
  %152 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %153 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %152, i32 0, i32 4
  %154 = load i32, i32* %3, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* @CLOCAL, align 4
  %157 = and i32 %155, %156
  %158 = call i32 @tty_port_set_check_carrier(%struct.TYPE_13__* %153, i32 %157)
  %159 = load i32, i32* @IRQ_RXOVER, align 4
  %160 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %161 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %163 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = call i64 @I_INPCK(%struct.TYPE_14__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %139
  %169 = load i32, i32* @MASK_PARITY, align 4
  %170 = load i32, i32* @MASK_FRAMING, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %173 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %168, %139
  %177 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %178 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = call i64 @I_BRKINT(%struct.TYPE_14__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %176
  %184 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %185 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = call i64 @I_PARMRK(%struct.TYPE_14__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183, %176
  %191 = load i32, i32* @MASK_BREAK, align 4
  %192 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %193 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %198 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = call i64 @I_IGNPAR(%struct.TYPE_14__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %196
  %204 = load i32, i32* @MASK_PARITY, align 4
  %205 = load i32, i32* @MASK_FRAMING, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %208 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %203, %196
  %212 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %213 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = call i64 @I_IGNBRK(%struct.TYPE_14__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %211
  %219 = load i32, i32* @MASK_BREAK, align 4
  %220 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %221 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %225 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = call i64 @I_IGNPAR(%struct.TYPE_14__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %218
  %231 = load i32, i32* @MASK_OVERRUN, align 4
  %232 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %233 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %230, %218
  br label %237

237:                                              ; preds = %236, %211
  %238 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %239 = call i32 @program_hw(%struct.slgt_info* %238)
  br label %240

240:                                              ; preds = %237, %10
  ret void
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.TYPE_14__*) #1

declare dso_local i32 @tty_port_set_cts_flow(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @tty_port_set_check_carrier(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @I_INPCK(%struct.TYPE_14__*) #1

declare dso_local i64 @I_BRKINT(%struct.TYPE_14__*) #1

declare dso_local i64 @I_PARMRK(%struct.TYPE_14__*) #1

declare dso_local i64 @I_IGNPAR(%struct.TYPE_14__*) #1

declare dso_local i64 @I_IGNBRK(%struct.TYPE_14__*) #1

declare dso_local i32 @program_hw(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
