; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.n_tty_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.n_tty_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.ktermios = type { i32, i32 }

@ICANON = common dso_local global i32 0, align 4
@EXTPROC = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @n_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 5
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %7, align 8
  store %struct.n_tty_data* %8, %struct.n_tty_data** %5, align 8
  %9 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %10 = icmp ne %struct.ktermios* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %13 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %14, %18
  %20 = load i32, i32* @ICANON, align 4
  %21 = load i32, i32* @EXTPROC, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %11, %2
  %26 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %27 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %30 = call i32 @bitmap_zero(i32 %28, i32 %29)
  %31 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %32 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %35 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = call i64 @L_ICANON(%struct.tty_struct* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %41 = call i32 @read_cnt(%struct.n_tty_data* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39, %25
  %44 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %45 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %48 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %50 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %49, i32 0, i32 3
  store i32 0, i32* %50, align 4
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %53 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = trunc i32 %58 to i8
  %60 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %61 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @set_bit(i8 signext %59, i32 %62)
  %64 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %65 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %68 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %70 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %51, %43
  %72 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %73 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %76 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %78 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %77, i32 0, i32 11
  store i64 0, i64* %78, align 8
  %79 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %80 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %79, i32 0, i32 10
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %71, %11
  %82 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %83 = call i64 @L_ICANON(%struct.tty_struct* %82)
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %87 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %89 = call i64 @I_ISTRIP(%struct.tty_struct* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %127, label %91

91:                                               ; preds = %81
  %92 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %93 = call i64 @I_IUCLC(%struct.tty_struct* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %91
  %96 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %97 = call i64 @I_IGNCR(%struct.tty_struct* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %127, label %99

99:                                               ; preds = %95
  %100 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %101 = call i64 @I_ICRNL(%struct.tty_struct* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %99
  %104 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %105 = call i64 @I_INLCR(%struct.tty_struct* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %103
  %108 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %109 = call i64 @L_ICANON(%struct.tty_struct* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %107
  %112 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %113 = call i64 @I_IXON(%struct.tty_struct* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %117 = call i64 @L_ISIG(%struct.tty_struct* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %121 = call i64 @L_ECHO(%struct.tty_struct* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %125 = call i64 @I_PARMRK(%struct.tty_struct* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %270

127:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %91, %81
  %128 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %129 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bitmap_zero(i32 %130, i32 256)
  %132 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %133 = call i64 @I_IGNCR(%struct.tty_struct* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %127
  %136 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %137 = call i64 @I_ICRNL(%struct.tty_struct* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135, %127
  %140 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %141 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @set_bit(i8 signext 13, i32 %142)
  br label %144

144:                                              ; preds = %139, %135
  %145 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %146 = call i64 @I_INLCR(%struct.tty_struct* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %150 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @set_bit(i8 signext 10, i32 %151)
  br label %153

153:                                              ; preds = %148, %144
  %154 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %155 = call i64 @L_ICANON(%struct.tty_struct* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %220

157:                                              ; preds = %153
  %158 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %159 = call signext i8 @ERASE_CHAR(%struct.tty_struct* %158)
  %160 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %161 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @set_bit(i8 signext %159, i32 %162)
  %164 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %165 = call signext i8 @KILL_CHAR(%struct.tty_struct* %164)
  %166 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %167 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @set_bit(i8 signext %165, i32 %168)
  %170 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %171 = call signext i8 @EOF_CHAR(%struct.tty_struct* %170)
  %172 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %173 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @set_bit(i8 signext %171, i32 %174)
  %176 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %177 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @set_bit(i8 signext 10, i32 %178)
  %180 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %181 = call signext i8 @EOL_CHAR(%struct.tty_struct* %180)
  %182 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %183 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @set_bit(i8 signext %181, i32 %184)
  %186 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %187 = call i64 @L_IEXTEN(%struct.tty_struct* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %157
  %190 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %191 = call signext i8 @WERASE_CHAR(%struct.tty_struct* %190)
  %192 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %193 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @set_bit(i8 signext %191, i32 %194)
  %196 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %197 = call signext i8 @LNEXT_CHAR(%struct.tty_struct* %196)
  %198 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %199 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @set_bit(i8 signext %197, i32 %200)
  %202 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %203 = call signext i8 @EOL2_CHAR(%struct.tty_struct* %202)
  %204 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %205 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @set_bit(i8 signext %203, i32 %206)
  %208 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %209 = call i64 @L_ECHO(%struct.tty_struct* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %189
  %212 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %213 = call signext i8 @REPRINT_CHAR(%struct.tty_struct* %212)
  %214 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %215 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @set_bit(i8 signext %213, i32 %216)
  br label %218

218:                                              ; preds = %211, %189
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %153
  %221 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %222 = call i64 @I_IXON(%struct.tty_struct* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %226 = call signext i8 @START_CHAR(%struct.tty_struct* %225)
  %227 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %228 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @set_bit(i8 signext %226, i32 %229)
  %231 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %232 = call signext i8 @STOP_CHAR(%struct.tty_struct* %231)
  %233 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %234 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @set_bit(i8 signext %232, i32 %235)
  br label %237

237:                                              ; preds = %224, %220
  %238 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %239 = call i64 @L_ISIG(%struct.tty_struct* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %237
  %242 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %243 = call signext i8 @INTR_CHAR(%struct.tty_struct* %242)
  %244 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %245 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @set_bit(i8 signext %243, i32 %246)
  %248 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %249 = call signext i8 @QUIT_CHAR(%struct.tty_struct* %248)
  %250 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %251 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @set_bit(i8 signext %249, i32 %252)
  %254 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %255 = call signext i8 @SUSP_CHAR(%struct.tty_struct* %254)
  %256 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %257 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @set_bit(i8 signext %255, i32 %258)
  br label %260

260:                                              ; preds = %241, %237
  %261 = load i32, i32* @__DISABLED_CHAR, align 4
  %262 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %263 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @clear_bit(i32 %261, i32 %264)
  %266 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %267 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %266, i32 0, i32 7
  store i32 0, i32* %267, align 4
  %268 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %269 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %268, i32 0, i32 8
  store i32 0, i32* %269, align 8
  br label %308

270:                                              ; preds = %123
  %271 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %272 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %271, i32 0, i32 7
  store i32 1, i32* %272, align 4
  %273 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %274 = call i64 @I_IGNBRK(%struct.tty_struct* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %270
  %277 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %278 = call i32 @I_BRKINT(%struct.tty_struct* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %304, label %280

280:                                              ; preds = %276
  %281 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %282 = call i64 @I_PARMRK(%struct.tty_struct* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %304, label %284

284:                                              ; preds = %280, %270
  %285 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %286 = call i64 @I_IGNPAR(%struct.tty_struct* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %290 = call i32 @I_INPCK(%struct.tty_struct* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %288, %284
  %293 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %294 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %293, i32 0, i32 3
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %292
  %302 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %303 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %302, i32 0, i32 8
  store i32 1, i32* %303, align 8
  br label %307

304:                                              ; preds = %292, %288, %280, %276
  %305 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %306 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %305, i32 0, i32 8
  store i32 0, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307, %260
  %309 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %310 = call i64 @I_IXON(%struct.tty_struct* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %332, label %312

312:                                              ; preds = %308
  %313 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %314 = icmp ne %struct.ktermios* %313, null
  br i1 %314, label %315, label %332

315:                                              ; preds = %312
  %316 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %317 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @IXON, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %332

322:                                              ; preds = %315
  %323 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %324 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %322
  %328 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %329 = call i32 @start_tty(%struct.tty_struct* %328)
  %330 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %331 = call i32 @process_echoes(%struct.tty_struct* %330)
  br label %332

332:                                              ; preds = %327, %322, %315, %312, %308
  %333 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %334 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %333, i32 0, i32 1
  %335 = call i32 @wake_up_interruptible(i32* %334)
  %336 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %337 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %336, i32 0, i32 0
  %338 = call i32 @wake_up_interruptible(i32* %337)
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i64 @L_ICANON(%struct.tty_struct*) #1

declare dso_local i32 @read_cnt(%struct.n_tty_data*) #1

declare dso_local i32 @set_bit(i8 signext, i32) #1

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNCR(%struct.tty_struct*) #1

declare dso_local i64 @I_ICRNL(%struct.tty_struct*) #1

declare dso_local i64 @I_INLCR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @L_ISIG(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local signext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOF_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOL_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local signext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @LNEXT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOL2_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @REPRINT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @QUIT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @SUSP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i32 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i32 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
