; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePgPacketWrite2ByteHeader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePgPacketWrite2ByteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pgpkt = type { i32, i32, i32 }

@EFUSE_REAL_CONTENT_LEN_88E = common dso_local global i64 0, align 8
@EFUSE_OOB_PROTECT_BYTES_88E = common dso_local global i64 0, align 8
@EFUSE_REPEAT_THRESHOLD_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i64*, %struct.pgpkt*)* @hal_EfusePgPacketWrite2ByteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_EfusePgPacketWrite2ByteHeader(%struct.adapter* %0, i32 %1, i64* %2, %struct.pgpkt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.pgpkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pgpkt, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store %struct.pgpkt* %3, %struct.pgpkt** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* @EFUSE_REAL_CONTENT_LEN_88E, align 8
  %21 = load i64, i64* @EFUSE_OOB_PROTECT_BYTES_88E, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %152, %148, %112, %4
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %153

27:                                               ; preds = %23
  %28 = load %struct.pgpkt*, %struct.pgpkt** %9, align 8
  %29 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 5
  %33 = or i32 %32, 15
  store i32 %33, i32* %13, align 4
  %34 = load %struct.adapter*, %struct.adapter** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @efuse_OneByteWrite(%struct.adapter* %34, i64 %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @efuse_OneByteRead(%struct.adapter* %38, i64 %39, i32* %14)
  br label %41

41:                                               ; preds = %51, %27
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  %47 = sext i32 %45 to i64
  %48 = load i64, i64* @EFUSE_REPEAT_THRESHOLD_, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %157

51:                                               ; preds = %44
  %52 = load %struct.adapter*, %struct.adapter** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @efuse_OneByteWrite(%struct.adapter* %52, i64 %53, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @efuse_OneByteRead(%struct.adapter* %56, i64 %57, i32* %14)
  br label %41

59:                                               ; preds = %41
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %144

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %15, align 4
  %67 = load %struct.pgpkt*, %struct.pgpkt** %9, align 8
  %68 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 120
  %71 = shl i32 %70, 1
  %72 = load %struct.pgpkt*, %struct.pgpkt** %9, align 8
  %73 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  store i32 %75, i32* %13, align 4
  %76 = load %struct.adapter*, %struct.adapter** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @efuse_OneByteWrite(%struct.adapter* %76, i64 %77, i32 %78)
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @efuse_OneByteRead(%struct.adapter* %80, i64 %81, i32* %14)
  br label %83

83:                                               ; preds = %93, %63
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  %89 = sext i32 %87 to i64
  %90 = load i64, i64* @EFUSE_REPEAT_THRESHOLD_, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %157

93:                                               ; preds = %86
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @efuse_OneByteWrite(%struct.adapter* %94, i64 %95, i32 %96)
  %98 = load %struct.adapter*, %struct.adapter** %6, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @efuse_OneByteRead(%struct.adapter* %98, i64 %99, i32* %14)
  br label %83

101:                                              ; preds = %83
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 15
  %104 = icmp eq i32 %103, 15
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = sext i32 %106 to i64
  %109 = load i64, i64* @EFUSE_REPEAT_THRESHOLD_, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %157

112:                                              ; preds = %105
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %23

115:                                              ; preds = %101
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %120, 224
  %122 = ashr i32 %121, 5
  %123 = load i32, i32* %14, align 4
  %124 = and i32 %123, 240
  %125 = ashr i32 %124, 1
  %126 = or i32 %122, %125
  %127 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, 15
  %130 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @Efuse_CalculateWordCnts(i32 %132)
  %134 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %17, i32 0, i32 2
  store i32 %133, i32* %134, align 4
  %135 = load %struct.adapter*, %struct.adapter** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @hal_EfuseFixHeaderProcess(%struct.adapter* %135, i32 %136, %struct.pgpkt* %17, i64* %11)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %157

140:                                              ; preds = %119
  br label %142

141:                                              ; preds = %115
  store i32 1, i32* %10, align 4
  br label %153

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142
  br label %152

144:                                              ; preds = %59
  %145 = load i32, i32* %14, align 4
  %146 = and i32 %145, 31
  %147 = icmp eq i32 %146, 15
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  %150 = add nsw i64 %149, 2
  store i64 %150, i64* %11, align 8
  br label %23

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %143
  br label %23

153:                                              ; preds = %141, %23
  %154 = load i64, i64* %11, align 8
  %155 = load i64*, i64** %8, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %139, %111, %92, %50
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @efuse_OneByteWrite(%struct.adapter*, i64, i32) #1

declare dso_local i32 @efuse_OneByteRead(%struct.adapter*, i64, i32*) #1

declare dso_local i32 @Efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @hal_EfuseFixHeaderProcess(%struct.adapter*, i32, %struct.pgpkt*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
