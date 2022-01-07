; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetVBType.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetVBType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i64, i32, i64, i64 }

@XGI_20 = common dso_local global i64 0, align 8
@VB_SIS302B = common dso_local global i32 0, align 4
@VB_SIS301C = common dso_local global i32 0, align 4
@VB_SIS301B = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@VB_SIS301 = common dso_local global i32 0, align 4
@VB_SIS302LV = common dso_local global i32 0, align 4
@VB_SIS301LV = common dso_local global i32 0, align 4
@VB_SIS302ELV = common dso_local global i32 0, align 4
@VB_UMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_GetVBType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetVBType(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 0, i16* %3, align 2
  store i16 0, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %206

21:                                               ; preds = %15
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XGI_20, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %206

28:                                               ; preds = %21
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SiS_GetReg(i32 %31, i32 0)
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %3, align 2
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %206

38:                                               ; preds = %28
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SiS_GetReg(i32 %41, i32 1)
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %4, align 2
  %44 = load i16, i16* %3, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @VB_SIS302B, align 4
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %94

51:                                               ; preds = %38
  %52 = load i16, i16* %3, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %93

55:                                               ; preds = %51
  %56 = load i16, i16* %4, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp sge i32 %57, 192
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @VB_SIS301C, align 4
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %92

63:                                               ; preds = %55
  %64 = load i16, i16* %4, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp sge i32 %65, 176
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i32, i32* @VB_SIS301B, align 4
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @SiS_GetReg(i32 %73, i32 35)
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %5, align 2
  %76 = load i16, i16* %5, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @VB_NoLCD, align 4
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %67
  br label %91

87:                                               ; preds = %63
  %88 = load i32, i32* @VB_SIS301, align 4
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @VB_SIS301B, align 4
  %99 = load i32, i32* @VB_SIS301C, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @VB_SIS302B, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %94
  %106 = load i16, i16* %4, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp sge i32 %107, 224
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @SiS_GetReg(i32 %112, i32 57)
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %3, align 2
  %115 = load i16, i16* %3, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @VB_SIS302LV, align 4
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %126

122:                                              ; preds = %109
  %123 = load i32, i32* @VB_SIS301C, align 4
  %124 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %125 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %136

127:                                              ; preds = %105
  %128 = load i16, i16* %4, align 2
  %129 = zext i16 %128 to i32
  %130 = icmp sge i32 %129, 208
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @VB_SIS301LV, align 4
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %135, %126
  br label %137

137:                                              ; preds = %136, %94
  %138 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %139 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @VB_SIS301C, align 4
  %142 = load i32, i32* @VB_SIS301LV, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @VB_SIS302LV, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @VB_SIS302ELV, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %140, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %206

150:                                              ; preds = %137
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @SiS_GetReg(i32 %153, i32 15)
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %6, align 2
  %156 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %157 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @SiS_GetReg(i32 %158, i32 37)
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %7, align 2
  %161 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %162 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @SiS_GetReg(i32 %163, i32 39)
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %8, align 2
  %166 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %167 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @SiS_SetRegAND(i32 %168, i32 15, i32 127)
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @SiS_SetRegOR(i32 %172, i32 37, i32 8)
  %174 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %175 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @SiS_SetRegAND(i32 %176, i32 39, i32 253)
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %179 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @SiS_GetReg(i32 %180, i32 38)
  %182 = and i32 %181, 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %150
  %185 = load i32, i32* @VB_UMC, align 4
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %150
  %191 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %192 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i16, i16* %8, align 2
  %195 = call i32 @SiS_SetReg(i32 %193, i32 39, i16 zeroext %194)
  %196 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %197 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i16, i16* %7, align 2
  %200 = call i32 @SiS_SetReg(i32 %198, i32 37, i16 zeroext %199)
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i16, i16* %6, align 2
  %205 = call i32 @SiS_SetReg(i32 %203, i32 15, i16 zeroext %204)
  br label %206

206:                                              ; preds = %20, %27, %37, %190, %137
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
