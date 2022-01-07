; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@RTSX_BIER = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@CARD_INT = common dso_local global i32 0, align 4
@SD_INT = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@SD_NR = common dso_local global i32 0, align 4
@QFN = common dso_local global i32 0, align 4
@XD_INT = common dso_local global i32 0, align 4
@XD_EXIST = common dso_local global i32 0, align 4
@XD_NR = common dso_local global i32 0, align 4
@MS_INT = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@MS_NR = common dso_local global i32 0, align 4
@DATA_DONE_INT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@OC_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_pre_handle_interrupt(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 14
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 13
  store i64 0, i64* %13, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %14)
  %16 = load i64, i64* @RTSX_STAT_SS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = call i32 @rtsx_exit_L1(%struct.rtsx_chip* %19)
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = load i32, i32* @RTSX_STAT_RUN, align 4
  %23 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %27 = load i32, i32* @RTSX_BIER, align 4
  %28 = call i8* @rtsx_readl(%struct.rtsx_chip* %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = load i32, i32* @RTSX_BIPR, align 4
  %32 = call i8* @rtsx_readl(%struct.rtsx_chip* %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %37 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %25
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %25
  %48 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %48, i32* %2, align 4
  br label %223

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, 8388607
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %53 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CARD_INT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %202

60:                                               ; preds = %49
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 12
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SD_INT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SD_EXIST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @SD_NR, align 4
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 4
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  br label %90

77:                                               ; preds = %67
  %78 = load i32, i32* @SD_NR, align 4
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %80 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %79, i32 0, i32 7
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %83 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %82, i32 0, i32 11
  store i64 0, i64* %83, align 8
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %85 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %84, i32 0, i32 10
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @SD_NR, align 4
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 4
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %77, %72
  br label %105

91:                                               ; preds = %60
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SD_EXIST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* @SD_NR, align 4
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %102 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %101, i32 0, i32 3
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %94, %91
  br label %105

105:                                              ; preds = %104, %90
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %107 = call i32 @CHECK_PID(%struct.rtsx_chip* %106, i32 21128)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %111 = load i32, i32* @QFN, align 4
  %112 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %158

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @XD_INT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @XD_EXIST, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @XD_NR, align 4
  %126 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %127 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %126, i32 0, i32 4
  %128 = call i32 @set_bit(i32 %125, i32* %127)
  br label %142

129:                                              ; preds = %119
  %130 = load i32, i32* @XD_NR, align 4
  %131 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %132 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %131, i32 0, i32 7
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  %134 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %135 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %134, i32 0, i32 9
  store i64 0, i64* %135, align 8
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %137 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %136, i32 0, i32 8
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @XD_NR, align 4
  %139 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %140 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %139, i32 0, i32 4
  %141 = call i32 @clear_bit(i32 %138, i32* %140)
  br label %142

142:                                              ; preds = %129, %124
  br label %157

143:                                              ; preds = %114
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @XD_EXIST, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* @XD_NR, align 4
  %153 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %154 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %153, i32 0, i32 3
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  br label %156

156:                                              ; preds = %151, %146, %143
  br label %157

157:                                              ; preds = %156, %142
  br label %158

158:                                              ; preds = %157, %109
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @MS_INT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @MS_EXIST, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @MS_NR, align 4
  %170 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %171 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %170, i32 0, i32 4
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  br label %186

173:                                              ; preds = %163
  %174 = load i32, i32* @MS_NR, align 4
  %175 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %176 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %175, i32 0, i32 7
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  %178 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %179 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %178, i32 0, i32 6
  store i64 0, i64* %179, align 8
  %180 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %181 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %180, i32 0, i32 5
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* @MS_NR, align 4
  %183 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %184 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %183, i32 0, i32 4
  %185 = call i32 @clear_bit(i32 %182, i32* %184)
  br label %186

186:                                              ; preds = %173, %168
  br label %201

187:                                              ; preds = %158
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @MS_EXIST, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32, i32* @MS_NR, align 4
  %197 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %198 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %197, i32 0, i32 3
  %199 = call i32 @set_bit(i32 %196, i32* %198)
  br label %200

200:                                              ; preds = %195, %190, %187
  br label %201

201:                                              ; preds = %200, %186
  br label %202

202:                                              ; preds = %201, %49
  %203 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %204 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %202
  %208 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %209 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @DATA_DONE_INT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %207
  %215 = load i32, i32* @DATA_DONE_INT, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %218 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %214, %207, %202
  %222 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %47
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_L1(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i8* @rtsx_readl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
