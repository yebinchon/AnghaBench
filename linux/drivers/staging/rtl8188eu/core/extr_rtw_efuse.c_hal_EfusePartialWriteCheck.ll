; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePartialWriteCheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePartialWriteCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pgpkt = type { i32, i32, i32, i32 }

@EFUSE_REAL_CONTENT_LEN_88E = common dso_local global i32 0, align 4
@EFUSE_OOB_PROTECT_BYTES_88E = common dso_local global i32 0, align 4
@HW_VAR_EFUSE_BYTES = common dso_local global i32 0, align 4
@EFUSE_REAL_CONTENT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32*, %struct.pgpkt*)* @hal_EfusePartialWriteCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_EfusePartialWriteCheck(%struct.adapter* %0, i32 %1, i32* %2, %struct.pgpkt* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pgpkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pgpkt, align 4
  %18 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.pgpkt* %3, %struct.pgpkt** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @EFUSE_REAL_CONTENT_LEN_88E, align 4
  %20 = load i32, i32* @EFUSE_OOB_PROTECT_BYTES_88E, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = load i32, i32* @HW_VAR_EFUSE_BYTES, align 4
  %24 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %22, i32 %23, i32* %15)
  %25 = load i32, i32* @EFUSE_REAL_CONTENT_LEN, align 4
  %26 = load i32, i32* %15, align 4
  %27 = srem i32 %26, %25
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %4, %166
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %167

33:                                               ; preds = %28
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @efuse_OneByteRead(%struct.adapter* %34, i32 %35, i32* %11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %163

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %163

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @EXT_HEADER(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @efuse_OneByteRead(%struct.adapter* %49, i32 %50, i32* %11)
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @ALL_WORDS_DISABLED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %167

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 224
  %59 = ashr i32 %58, 5
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 240
  %62 = ashr i32 %61, 1
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 15
  %67 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %56
  br label %78

69:                                               ; preds = %41
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 15
  %77 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %68
  %79 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @Efuse_CalculateWordCnts(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %87 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %156

90:                                               ; preds = %78
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @hal_EfuseCheckIfDatafollowed(%struct.adapter* %91, i32 %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %156, label %98

98:                                               ; preds = %90
  %99 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %100 = call i64 @wordEnMatched(%struct.pgpkt* %99, %struct.pgpkt* %17, i32* %13)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %98
  %103 = load %struct.adapter*, %struct.adapter** %5, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %108 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @Efuse_WordEnableDataWrite(%struct.adapter* %103, i32 %105, i32 %106, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 15
  br i1 %112, label %113, label %127

113:                                              ; preds = %102
  store i64 0, i64* %18, align 8
  %114 = load %struct.adapter*, %struct.adapter** %5, align 8
  %115 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %116 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %120 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @Efuse_PgPacketWrite(%struct.adapter* %114, i32 %117, i32 %118, i32 %121)
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %18, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  br label %167

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %102
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %145, %127
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 1, %133
  %135 = and i32 %132, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* %10, align 4
  %139 = shl i32 1, %138
  %140 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %141 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %131
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %128

148:                                              ; preds = %128
  %149 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %150 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @Efuse_CalculateWordCnts(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %155 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %98, %90, %78
  %157 = load i32, i32* %15, align 4
  %158 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 %157, %160
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %166

163:                                              ; preds = %38, %33
  %164 = load i32, i32* %15, align 4
  %165 = load i32*, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  store i32 1, i32* %9, align 4
  br label %167

166:                                              ; preds = %156
  br label %28

167:                                              ; preds = %163, %125, %55, %32
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i64 @efuse_OneByteRead(%struct.adapter*, i32, i32*) #1

declare dso_local i64 @EXT_HEADER(i32) #1

declare dso_local i64 @ALL_WORDS_DISABLED(i32) #1

declare dso_local i8* @Efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @hal_EfuseCheckIfDatafollowed(%struct.adapter*, i32, i32) #1

declare dso_local i64 @wordEnMatched(%struct.pgpkt*, %struct.pgpkt*, i32*) #1

declare dso_local i32 @Efuse_WordEnableDataWrite(%struct.adapter*, i32, i32, i32) #1

declare dso_local i64 @Efuse_PgPacketWrite(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
