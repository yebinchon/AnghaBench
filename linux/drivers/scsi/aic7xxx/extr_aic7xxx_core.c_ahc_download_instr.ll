; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_download_instr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_download_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32 }
%struct.ahc_softc = type { i32 }
%union.ins_formats = type { %struct.ins_format1 }
%struct.ins_format1 = type { i32, i32, i64, i32, i32, i32 }
%struct.ins_format3 = type { i32, i32, i32, i32 }

@seqprog = common dso_local global i32* null, align 8
@patches = common dso_local global %struct.patch* null, align 8
@AHC_CMD_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: BMOV not supported\0A\00", align 1
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SEQRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unknown opcode encountered in seq program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32, i64*)* @ahc_download_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_download_instr(%struct.ahc_softc* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %union.ins_formats, align 8
  %8 = alloca %struct.ins_format1*, align 8
  %9 = alloca %struct.ins_format3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.patch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %20 = load i32*, i32** @seqprog, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ahc_le32toh(i32 %25)
  %27 = bitcast %union.ins_formats* %7 to i32*
  store i32 %26, i32* %27, align 8
  %28 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  store %struct.ins_format1* %28, %struct.ins_format1** %8, align 8
  store %struct.ins_format3* null, %struct.ins_format3** %9, align 8
  %29 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  %30 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %210 [
    i32 135, label %33
    i32 137, label %33
    i32 134, label %33
    i32 138, label %33
    i32 133, label %33
    i32 132, label %33
    i32 136, label %33
    i32 131, label %33
    i32 130, label %71
    i32 140, label %71
    i32 128, label %71
    i32 141, label %71
    i32 142, label %71
    i32 139, label %71
    i32 129, label %112
  ]

33:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %34 = bitcast %union.ins_formats* %7 to %struct.ins_format3*
  store %struct.ins_format3* %34, %struct.ins_format3** %9, align 8
  store i32 0, i32* %12, align 4
  %35 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %36 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.patch*, %struct.patch** @patches, align 8
  store %struct.patch* %38, %struct.patch** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %63, %33
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @ahc_check_patch(%struct.ahc_softc* %44, %struct.patch** %11, i32 %45, i32* %14)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %15, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %60, %50
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %70 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %3, %3, %3, %3, %3, %3, %64
  %72 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %73 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i64*, i64** %6, align 8
  %78 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %79 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %84 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %87 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AHC_CMD_CHAN, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 139
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %99 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %104 = call i32 @ahc_name(%struct.ahc_softc* %103)
  %105 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %108 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %107, i32 0, i32 0
  store i32 140, i32* %108, align 8
  %109 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %110 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %109, i32 0, i32 2
  store i64 255, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %94, %85
  br label %112

112:                                              ; preds = %3, %111
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AHC_ULTRA2, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %112
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %135, %119
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 31
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* %17, align 4
  %125 = shl i32 1, %124
  store i32 %125, i32* %19, align 4
  %126 = bitcast %union.ins_formats* %7 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %131, %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %120

138:                                              ; preds = %120
  %139 = load i32, i32* %18, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = bitcast %union.ins_formats* %7 to %struct.ins_format1*
  %144 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %138
  br label %200

146:                                              ; preds = %112
  %147 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %148 = icmp ne %struct.ins_format3* %147, null
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %151 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %154 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = or i32 %152, %156
  %158 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %159 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %157, %161
  %163 = load %struct.ins_format3*, %struct.ins_format3** %9, align 8
  %164 = getelementptr inbounds %struct.ins_format3, %struct.ins_format3* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 25
  %167 = or i32 %162, %166
  %168 = bitcast %union.ins_formats* %7 to i32*
  store i32 %167, i32* %168, align 8
  br label %199

169:                                              ; preds = %146
  %170 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %171 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %174 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, 8
  %177 = sext i32 %176 to i64
  %178 = or i64 %172, %177
  %179 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %180 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 16
  %183 = sext i32 %182 to i64
  %184 = or i64 %178, %183
  %185 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %186 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 24
  %189 = sext i32 %188 to i64
  %190 = or i64 %184, %189
  %191 = load %struct.ins_format1*, %struct.ins_format1** %8, align 8
  %192 = getelementptr inbounds %struct.ins_format1, %struct.ins_format1* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = shl i32 %193, 25
  %195 = sext i32 %194 to i64
  %196 = or i64 %190, %195
  %197 = trunc i64 %196 to i32
  %198 = bitcast %union.ins_formats* %7 to i32*
  store i32 %197, i32* %198, align 8
  br label %199

199:                                              ; preds = %169, %149
  br label %200

200:                                              ; preds = %199, %145
  %201 = bitcast %union.ins_formats* %7 to i32*
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @ahc_htole32(i32 %202)
  %204 = bitcast %union.ins_formats* %7 to i32*
  store i32 %203, i32* %204, align 8
  %205 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %206 = load i32, i32* @SEQRAM, align 4
  %207 = bitcast %union.ins_formats* %7 to i32*
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ahc_outsb(%struct.ahc_softc* %205, i32 %206, i32 %208, i32 4)
  br label %212

210:                                              ; preds = %3
  %211 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %200
  ret void
}

declare dso_local i32 @ahc_le32toh(i32) #1

declare dso_local i32 @ahc_check_patch(%struct.ahc_softc*, %struct.patch**, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_htole32(i32) #1

declare dso_local i32 @ahc_outsb(%struct.ahc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
