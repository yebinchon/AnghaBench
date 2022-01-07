; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_serdes_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_serdes_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.ql_mpi_coredump = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@XG_SERDES_XAUI_HSS_PCS_START = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XAUI_PWR_DOWN = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_STS = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XFI1_PWR_UP = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_XFI2_PWR_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.ql_mpi_coredump*)* @ql_get_serdes_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_serdes_regs(%struct.ql_adapter* %0, %struct.ql_mpi_coredump* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.ql_mpi_coredump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.ql_mpi_coredump* %1, %struct.ql_mpi_coredump** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %16 = call i32 @ql_read_other_func_serdes_reg(%struct.ql_adapter* %14, i32 %15, i32* %12)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = load i32, i32* @XG_SERDES_XAUI_HSS_PCS_START, align 4
  %31 = call i32 @ql_read_serdes_reg(%struct.ql_adapter* %29, i32 %30, i32* %12)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @XG_SERDES_ADDR_XAUI_PWR_DOWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %45 = load i32, i32* @XG_SERDES_ADDR_STS, align 4
  %46 = call i32 @ql_read_serdes_reg(%struct.ql_adapter* %44, i32 %45, i32* %12)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @XG_SERDES_ADDR_XFI1_PWR_UP, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @XG_SERDES_ADDR_XFI1_PWR_UP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %64

63:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @XG_SERDES_ADDR_XFI2_PWR_UP, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @XG_SERDES_ADDR_XFI2_PWR_UP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %79

78:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %88 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %11, align 8
  %90 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %91 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %13, align 8
  br label %100

93:                                               ; preds = %80
  %94 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %95 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %11, align 8
  %97 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %98 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %13, align 8
  br label %100

100:                                              ; preds = %93, %86
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp ule i32 %102, 52
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %105, i32 %106, i32* %107, i32* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, 4
  store i32 %114, i32* %10, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %11, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %13, align 8
  br label %101

119:                                              ; preds = %101
  %120 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %127 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %11, align 8
  %129 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %130 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %13, align 8
  br label %139

132:                                              ; preds = %119
  %133 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %134 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %11, align 8
  %136 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %137 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %13, align 8
  br label %139

139:                                              ; preds = %132, %125
  store i32 2048, i32* %10, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %10, align 4
  %142 = icmp ule i32 %141, 2176
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %144, i32 %145, i32* %146, i32* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 4
  store i32 %153, i32* %10, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %11, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %13, align 8
  br label %140

158:                                              ; preds = %140
  %159 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %166 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %11, align 8
  %168 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %169 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %13, align 8
  br label %178

171:                                              ; preds = %158
  %172 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %173 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %11, align 8
  %175 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %176 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %13, align 8
  br label %178

178:                                              ; preds = %171, %164
  store i32 4096, i32* %10, align 4
  br label %179

179:                                              ; preds = %190, %178
  %180 = load i32, i32* %10, align 4
  %181 = icmp ule i32 %180, 4148
  br i1 %181, label %182, label %197

182:                                              ; preds = %179
  %183 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %183, i32 %184, i32* %185, i32* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %182
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %191, 4
  store i32 %192, i32* %10, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %11, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %13, align 8
  br label %179

197:                                              ; preds = %179
  %198 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %199 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 1
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %205 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  store i32* %206, i32** %11, align 8
  %207 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %208 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %207, i32 0, i32 7
  %209 = load i32*, i32** %208, align 8
  store i32* %209, i32** %13, align 8
  br label %217

210:                                              ; preds = %197
  %211 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %212 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %211, i32 0, i32 7
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %11, align 8
  %214 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %215 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %13, align 8
  br label %217

217:                                              ; preds = %210, %203
  store i32 4176, i32* %10, align 4
  br label %218

218:                                              ; preds = %229, %217
  %219 = load i32, i32* %10, align 4
  %220 = icmp ule i32 %219, 4220
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32*, i32** %11, align 8
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %222, i32 %223, i32* %224, i32* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %221
  %230 = load i32, i32* %10, align 4
  %231 = add i32 %230, 4
  store i32 %231, i32* %10, align 4
  %232 = load i32*, i32** %11, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %11, align 8
  %234 = load i32*, i32** %13, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %13, align 8
  br label %218

236:                                              ; preds = %218
  %237 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %238 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %244 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %243, i32 0, i32 8
  %245 = load i32*, i32** %244, align 8
  store i32* %245, i32** %11, align 8
  %246 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %247 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %246, i32 0, i32 9
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** %13, align 8
  br label %256

249:                                              ; preds = %236
  %250 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %251 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %250, i32 0, i32 9
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %11, align 8
  %253 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %254 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %253, i32 0, i32 8
  %255 = load i32*, i32** %254, align 8
  store i32* %255, i32** %13, align 8
  br label %256

256:                                              ; preds = %249, %242
  store i32 6144, i32* %10, align 4
  br label %257

257:                                              ; preds = %268, %256
  %258 = load i32, i32* %10, align 4
  %259 = icmp ule i32 %258, 6200
  br i1 %259, label %260, label %275

260:                                              ; preds = %257
  %261 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load i32*, i32** %11, align 8
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %261, i32 %262, i32* %263, i32* %264, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %260
  %269 = load i32, i32* %10, align 4
  %270 = add i32 %269, 4
  store i32 %270, i32* %10, align 4
  %271 = load i32*, i32** %11, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %11, align 8
  %273 = load i32*, i32** %13, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %13, align 8
  br label %257

275:                                              ; preds = %257
  %276 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %277 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 1
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %283 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %282, i32 0, i32 10
  %284 = load i32*, i32** %283, align 8
  store i32* %284, i32** %11, align 8
  %285 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %286 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %285, i32 0, i32 11
  %287 = load i32*, i32** %286, align 8
  store i32* %287, i32** %13, align 8
  br label %295

288:                                              ; preds = %275
  %289 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %290 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %289, i32 0, i32 11
  %291 = load i32*, i32** %290, align 8
  store i32* %291, i32** %11, align 8
  %292 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %293 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %292, i32 0, i32 10
  %294 = load i32*, i32** %293, align 8
  store i32* %294, i32** %13, align 8
  br label %295

295:                                              ; preds = %288, %281
  store i32 7168, i32* %10, align 4
  br label %296

296:                                              ; preds = %307, %295
  %297 = load i32, i32* %10, align 4
  %298 = icmp ule i32 %297, 7199
  br i1 %298, label %299, label %314

299:                                              ; preds = %296
  %300 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %301 = load i32, i32* %10, align 4
  %302 = load i32*, i32** %11, align 8
  %303 = load i32*, i32** %13, align 8
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %300, i32 %301, i32* %302, i32* %303, i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %299
  %308 = load i32, i32* %10, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %10, align 4
  %310 = load i32*, i32** %11, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %11, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %13, align 8
  br label %296

314:                                              ; preds = %296
  %315 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %316 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %322 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %321, i32 0, i32 12
  %323 = load i32*, i32** %322, align 8
  store i32* %323, i32** %11, align 8
  %324 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %325 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %324, i32 0, i32 13
  %326 = load i32*, i32** %325, align 8
  store i32* %326, i32** %13, align 8
  br label %334

327:                                              ; preds = %314
  %328 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %329 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %328, i32 0, i32 13
  %330 = load i32*, i32** %329, align 8
  store i32* %330, i32** %11, align 8
  %331 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %332 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %331, i32 0, i32 12
  %333 = load i32*, i32** %332, align 8
  store i32* %333, i32** %13, align 8
  br label %334

334:                                              ; preds = %327, %320
  store i32 7232, i32* %10, align 4
  br label %335

335:                                              ; preds = %346, %334
  %336 = load i32, i32* %10, align 4
  %337 = icmp ule i32 %336, 7263
  br i1 %337, label %338, label %353

338:                                              ; preds = %335
  %339 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load i32*, i32** %11, align 8
  %342 = load i32*, i32** %13, align 8
  %343 = load i32, i32* %6, align 4
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %339, i32 %340, i32* %341, i32* %342, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %338
  %347 = load i32, i32* %10, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %10, align 4
  %349 = load i32*, i32** %11, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %11, align 8
  %351 = load i32*, i32** %13, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %13, align 8
  br label %335

353:                                              ; preds = %335
  %354 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %355 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 1
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %353
  %360 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %361 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %360, i32 0, i32 14
  %362 = load i32*, i32** %361, align 8
  store i32* %362, i32** %11, align 8
  %363 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %364 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %363, i32 0, i32 15
  %365 = load i32*, i32** %364, align 8
  store i32* %365, i32** %13, align 8
  br label %373

366:                                              ; preds = %353
  %367 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %368 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %367, i32 0, i32 15
  %369 = load i32*, i32** %368, align 8
  store i32* %369, i32** %11, align 8
  %370 = load %struct.ql_mpi_coredump*, %struct.ql_mpi_coredump** %4, align 8
  %371 = getelementptr inbounds %struct.ql_mpi_coredump, %struct.ql_mpi_coredump* %370, i32 0, i32 14
  %372 = load i32*, i32** %371, align 8
  store i32* %372, i32** %13, align 8
  br label %373

373:                                              ; preds = %366, %359
  store i32 7680, i32* %10, align 4
  br label %374

374:                                              ; preds = %385, %373
  %375 = load i32, i32* %10, align 4
  %376 = icmp ule i32 %375, 7711
  br i1 %376, label %377, label %392

377:                                              ; preds = %374
  %378 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %379 = load i32, i32* %10, align 4
  %380 = load i32*, i32** %11, align 8
  %381 = load i32*, i32** %13, align 8
  %382 = load i32, i32* %6, align 4
  %383 = load i32, i32* %7, align 4
  %384 = call i32 @ql_get_both_serdes(%struct.ql_adapter* %378, i32 %379, i32* %380, i32* %381, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %377
  %386 = load i32, i32* %10, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* %10, align 4
  %388 = load i32*, i32** %11, align 8
  %389 = getelementptr inbounds i32, i32* %388, i32 1
  store i32* %389, i32** %11, align 8
  %390 = load i32*, i32** %13, align 8
  %391 = getelementptr inbounds i32, i32* %390, i32 1
  store i32* %391, i32** %13, align 8
  br label %374

392:                                              ; preds = %374
  ret i32 0
}

declare dso_local i32 @ql_read_other_func_serdes_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_read_serdes_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_get_both_serdes(%struct.ql_adapter*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
