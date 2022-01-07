; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetATTRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetATTRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SIS_661 = common dso_local global i64 0, align 8
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@IS_SIS550650740660 = common dso_local global i64 0, align 8
@VB_SIS30xB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetATTRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetATTRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %6, align 2
  br label %7

7:                                                ; preds = %160, %2
  %8 = load i16, i16* %6, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 19
  br i1 %10, label %11, label %163

11:                                               ; preds = %7
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %5, align 1
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 19
  br i1 %26, label %27, label %143

27:                                               ; preds = %11
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VB_SIS30xBLV, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SetCRT2ToLCDA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8 0, i8* %5, align 1
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SetCRT2ToTV, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SetInSlaveMode, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8 0, i8* %5, align 1
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SIS_661, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SetCRT2ToTV, align 4
  %82 = load i32, i32* @SetCRT2ToLCD, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SetInSlaveMode, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i8 0, i8* %5, align 1
  br label %94

94:                                               ; preds = %93, %86
  br label %95

95:                                               ; preds = %94, %77
  br label %142

96:                                               ; preds = %71
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SetCRT2ToLCD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %96
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SIS_315H, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load i64, i64* @IS_SIS550650740660, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VB_SIS30xB, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SetInSlaveMode, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i8 0, i8* %5, align 1
  br label %127

127:                                              ; preds = %126, %119
  br label %129

128:                                              ; preds = %112
  store i8 0, i8* %5, align 1
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %129, %109
  br label %140

131:                                              ; preds = %103
  %132 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %133 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SetInSlaveMode, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i8 0, i8* %5, align 1
  br label %139

139:                                              ; preds = %138, %131
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %96
  br label %142

142:                                              ; preds = %141, %95
  br label %143

143:                                              ; preds = %142, %11
  %144 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %145 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @SiS_GetRegByte(i32 %146)
  %148 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %149 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load i16, i16* %6, align 2
  %152 = zext i16 %151 to i32
  %153 = call i32 @SiS_SetRegByte(i32 %150, i32 %152)
  %154 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %155 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = load i8, i8* %5, align 1
  %158 = zext i8 %157 to i32
  %159 = call i32 @SiS_SetRegByte(i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %143
  %161 = load i16, i16* %6, align 2
  %162 = add i16 %161, 1
  store i16 %162, i16* %6, align 2
  br label %7

163:                                              ; preds = %7
  %164 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %165 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @SiS_GetRegByte(i32 %166)
  %168 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %169 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SiS_SetRegByte(i32 %170, i32 20)
  %172 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %173 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @SiS_SetRegByte(i32 %174, i32 0)
  %176 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %177 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @SiS_GetRegByte(i32 %178)
  %180 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %181 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @SiS_SetRegByte(i32 %182, i32 32)
  %184 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %185 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @SiS_GetRegByte(i32 %186)
  ret void
}

declare dso_local i32 @SiS_GetRegByte(i32) #1

declare dso_local i32 @SiS_SetRegByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
