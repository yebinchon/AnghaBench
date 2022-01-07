; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_vui_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_vui_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32 }
%struct.nal_h264_vui_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*, %struct.nal_h264_vui_parameters*)* @nal_h264_rbsp_vui_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_rbsp_vui_parameters(%struct.rbsp* %0, %struct.nal_h264_vui_parameters* %1) #0 {
  %3 = alloca %struct.rbsp*, align 8
  %4 = alloca %struct.nal_h264_vui_parameters*, align 8
  store %struct.rbsp* %0, %struct.rbsp** %3, align 8
  store %struct.nal_h264_vui_parameters* %1, %struct.nal_h264_vui_parameters** %4, align 8
  %5 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %6 = icmp ne %struct.nal_h264_vui_parameters* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %11 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %219

12:                                               ; preds = %2
  %13 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %14 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %15 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %14, i32 0, i32 33
  %16 = call i32 @rbsp_bit(%struct.rbsp* %13, i64* %15)
  %17 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %18 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %17, i32 0, i32 33
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %23 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %24 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %23, i32 0, i32 0
  %25 = call i32 @rbsp_bits(%struct.rbsp* %22, i32 8, i32* %24)
  %26 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %27 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %32 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %33 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %32, i32 0, i32 1
  %34 = call i32 @rbsp_bits(%struct.rbsp* %31, i32 16, i32* %33)
  %35 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %36 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %36, i32 0, i32 2
  %38 = call i32 @rbsp_bits(%struct.rbsp* %35, i32 16, i32* %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %42 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %42, i32 0, i32 32
  %44 = call i32 @rbsp_bit(%struct.rbsp* %41, i64* %43)
  %45 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %46 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %45, i32 0, i32 32
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %51 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %52 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %51, i32 0, i32 31
  %53 = call i32 @rbsp_bit(%struct.rbsp* %50, i64* %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %56 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %56, i32 0, i32 30
  %58 = call i32 @rbsp_bit(%struct.rbsp* %55, i64* %57)
  %59 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %59, i32 0, i32 30
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %54
  %64 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %65 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %66 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %65, i32 0, i32 3
  %67 = call i32 @rbsp_bits(%struct.rbsp* %64, i32 3, i32* %66)
  %68 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %69 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %69, i32 0, i32 29
  %71 = call i32 @rbsp_bit(%struct.rbsp* %68, i64* %70)
  %72 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %73 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %74 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %73, i32 0, i32 28
  %75 = call i32 @rbsp_bit(%struct.rbsp* %72, i64* %74)
  %76 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %77 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %76, i32 0, i32 28
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %63
  %81 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %82 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %82, i32 0, i32 4
  %84 = call i32 @rbsp_bits(%struct.rbsp* %81, i32 8, i32* %83)
  %85 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %86 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %87 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %86, i32 0, i32 5
  %88 = call i32 @rbsp_bits(%struct.rbsp* %85, i32 8, i32* %87)
  %89 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %90 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %91 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %90, i32 0, i32 6
  %92 = call i32 @rbsp_bits(%struct.rbsp* %89, i32 8, i32* %91)
  br label %93

93:                                               ; preds = %80, %63
  br label %94

94:                                               ; preds = %93, %54
  %95 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %96 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %97 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %96, i32 0, i32 27
  %98 = call i32 @rbsp_bit(%struct.rbsp* %95, i64* %97)
  %99 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %100 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %99, i32 0, i32 27
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %105 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %106 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %105, i32 0, i32 26
  %107 = call i32 @rbsp_uev(%struct.rbsp* %104, i32* %106)
  %108 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %109 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %110 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %109, i32 0, i32 25
  %111 = call i32 @rbsp_uev(%struct.rbsp* %108, i32* %110)
  br label %112

112:                                              ; preds = %103, %94
  %113 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %114 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %115 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %114, i32 0, i32 24
  %116 = call i32 @rbsp_bit(%struct.rbsp* %113, i64* %115)
  %117 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %118 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %117, i32 0, i32 24
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %112
  %122 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %123 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %124 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %123, i32 0, i32 7
  %125 = call i32 @rbsp_bits(%struct.rbsp* %122, i32 32, i32* %124)
  %126 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %127 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %128 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %127, i32 0, i32 8
  %129 = call i32 @rbsp_bits(%struct.rbsp* %126, i32 32, i32* %128)
  %130 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %131 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %132 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %131, i32 0, i32 23
  %133 = call i32 @rbsp_bit(%struct.rbsp* %130, i64* %132)
  br label %134

134:                                              ; preds = %121, %112
  %135 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %136 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %137 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %136, i32 0, i32 20
  %138 = call i32 @rbsp_bit(%struct.rbsp* %135, i64* %137)
  %139 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %140 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %139, i32 0, i32 20
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %145 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %146 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %145, i32 0, i32 22
  %147 = call i32 @nal_h264_rbsp_hrd_parameters(%struct.rbsp* %144, i32* %146)
  br label %148

148:                                              ; preds = %143, %134
  %149 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %150 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %151 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %150, i32 0, i32 19
  %152 = call i32 @rbsp_bit(%struct.rbsp* %149, i64* %151)
  %153 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %154 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %153, i32 0, i32 19
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %159 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %160 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %159, i32 0, i32 21
  %161 = call i32 @nal_h264_rbsp_hrd_parameters(%struct.rbsp* %158, i32* %160)
  br label %162

162:                                              ; preds = %157, %148
  %163 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %164 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %163, i32 0, i32 20
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %169 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %168, i32 0, i32 19
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167, %162
  %173 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %174 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %175 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %174, i32 0, i32 18
  %176 = call i32 @rbsp_bit(%struct.rbsp* %173, i64* %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %179 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %180 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %179, i32 0, i32 17
  %181 = call i32 @rbsp_bit(%struct.rbsp* %178, i64* %180)
  %182 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %183 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %184 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %183, i32 0, i32 16
  %185 = call i32 @rbsp_bit(%struct.rbsp* %182, i64* %184)
  %186 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %187 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %186, i32 0, i32 16
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %177
  %191 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %192 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %193 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %192, i32 0, i32 15
  %194 = call i32 @rbsp_bit(%struct.rbsp* %191, i64* %193)
  %195 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %196 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %197 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %196, i32 0, i32 14
  %198 = call i32 @rbsp_uev(%struct.rbsp* %195, i32* %197)
  %199 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %200 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %201 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %200, i32 0, i32 13
  %202 = call i32 @rbsp_uev(%struct.rbsp* %199, i32* %201)
  %203 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %204 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %205 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %204, i32 0, i32 12
  %206 = call i32 @rbsp_uev(%struct.rbsp* %203, i32* %205)
  %207 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %208 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %209 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %208, i32 0, i32 11
  %210 = call i32 @rbsp_uev(%struct.rbsp* %207, i32* %209)
  %211 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %212 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %213 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %212, i32 0, i32 10
  %214 = call i32 @rbsp_uev(%struct.rbsp* %211, i32* %213)
  %215 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %216 = load %struct.nal_h264_vui_parameters*, %struct.nal_h264_vui_parameters** %4, align 8
  %217 = getelementptr inbounds %struct.nal_h264_vui_parameters, %struct.nal_h264_vui_parameters* %216, i32 0, i32 9
  %218 = call i32 @rbsp_uev(%struct.rbsp* %215, i32* %217)
  br label %219

219:                                              ; preds = %7, %190, %177
  ret void
}

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i64*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @rbsp_uev(%struct.rbsp*, i32*) #1

declare dso_local i32 @nal_h264_rbsp_hrd_parameters(%struct.rbsp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
