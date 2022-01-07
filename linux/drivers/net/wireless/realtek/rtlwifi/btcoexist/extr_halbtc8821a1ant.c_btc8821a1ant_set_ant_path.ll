; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_set_ant_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_set_ant_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32*)*, %struct.btc_board_info }
%struct.btc_board_info = type { i64 }

@BIT23 = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a1ant_set_ant_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_set_ant_path(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btc_board_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 5
  store %struct.btc_board_info* %13, %struct.btc_board_info** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 3
  %20 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %22 = call i32 %20(%struct.btc_coexist* %21, i32 76)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BIT23, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @BIT24, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 2
  %32 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %31, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 %32(%struct.btc_coexist* %33, i32 76, i32 %34)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 0
  %38 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %37, align 8
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %40 = call i32 %38(%struct.btc_coexist* %39, i32 2421, i32 3, i32 3)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %42 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %41, i32 0, i32 1
  %43 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %42, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %45 = call i32 %43(%struct.btc_coexist* %44, i32 3252, i32 119)
  %46 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %47 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %17
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 4
  %56 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %55, align 8
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %59 = call i32 %56(%struct.btc_coexist* %57, i32 101, i32 2, i32* %58)
  br label %69

60:                                               ; preds = %17
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %64 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %63, i32 0, i32 4
  %65 = load i32 (%struct.btc_coexist*, i32, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32*)** %64, align 8
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %68 = call i32 %65(%struct.btc_coexist* %66, i32 101, i32 2, i32* %67)
  br label %69

69:                                               ; preds = %60, %51
  br label %105

70:                                               ; preds = %4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 3
  %76 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %78 = call i32 %76(%struct.btc_coexist* %77, i32 76)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @BIT23, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @BIT24, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 2
  %89 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 %89(%struct.btc_coexist* %90, i32 76, i32 %91)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %94 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %93, i32 0, i32 0
  %95 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %94, align 8
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %97 = call i32 %95(%struct.btc_coexist* %96, i32 1893, i32 24, i32 3)
  br label %104

98:                                               ; preds = %70
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %100 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %99, i32 0, i32 0
  %101 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %100, align 8
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %103 = call i32 %101(%struct.btc_coexist* %102, i32 1893, i32 24, i32 0)
  br label %104

104:                                              ; preds = %98, %73
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %155 [
    i32 128, label %107
    i32 130, label %131
    i32 129, label %156
  ]

107:                                              ; preds = %105
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %109 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %108, i32 0, i32 1
  %110 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %109, align 8
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %112 = call i32 %110(%struct.btc_coexist* %111, i32 3252, i32 119)
  %113 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %114 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %120 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %119, i32 0, i32 0
  %121 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %120, align 8
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %123 = call i32 %121(%struct.btc_coexist* %122, i32 3255, i32 48, i32 1)
  br label %130

124:                                              ; preds = %107
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %126 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %125, i32 0, i32 0
  %127 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %126, align 8
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %129 = call i32 %127(%struct.btc_coexist* %128, i32 3255, i32 48, i32 2)
  br label %130

130:                                              ; preds = %124, %118
  br label %180

131:                                              ; preds = %105
  %132 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %133 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %132, i32 0, i32 1
  %134 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %133, align 8
  %135 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %136 = call i32 %134(%struct.btc_coexist* %135, i32 3252, i32 119)
  %137 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %138 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %144 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %143, i32 0, i32 0
  %145 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %144, align 8
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %147 = call i32 %145(%struct.btc_coexist* %146, i32 3255, i32 48, i32 2)
  br label %154

148:                                              ; preds = %131
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %150 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %149, i32 0, i32 0
  %151 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %150, align 8
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %153 = call i32 %151(%struct.btc_coexist* %152, i32 3255, i32 48, i32 1)
  br label %154

154:                                              ; preds = %148, %142
  br label %180

155:                                              ; preds = %105
  br label %156

156:                                              ; preds = %105, %155
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %158 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %157, i32 0, i32 1
  %159 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %158, align 8
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %161 = call i32 %159(%struct.btc_coexist* %160, i32 3252, i32 102)
  %162 = load %struct.btc_board_info*, %struct.btc_board_info** %9, align 8
  %163 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %169 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %168, i32 0, i32 0
  %170 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %169, align 8
  %171 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %172 = call i32 %170(%struct.btc_coexist* %171, i32 3255, i32 48, i32 1)
  br label %179

173:                                              ; preds = %156
  %174 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %175 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %174, i32 0, i32 0
  %176 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %175, align 8
  %177 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %178 = call i32 %176(%struct.btc_coexist* %177, i32 3255, i32 48, i32 2)
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %154, %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
