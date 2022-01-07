; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra.c_tegra_pinconf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.tegra_pmx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tegra_pingroup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@cfg_params = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Config param %04x (%s) not supported on group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmx*, %struct.tegra_pingroup*, i32, i32, i64*, i64*, i64*, i64*)* @tegra_pinconf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pinconf_reg(%struct.tegra_pmx* %0, %struct.tegra_pingroup* %1, i32 %2, i32 %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_pmx*, align 8
  %11 = alloca %struct.tegra_pingroup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.tegra_pmx* %0, %struct.tegra_pmx** %10, align 8
  store %struct.tegra_pingroup* %1, %struct.tegra_pingroup** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %294 [
    i32 133, label %21
    i32 128, label %35
    i32 139, label %49
    i32 134, label %63
    i32 136, label %77
    i32 137, label %91
    i32 132, label %105
    i32 138, label %119
    i32 131, label %150
    i32 135, label %181
    i32 142, label %195
    i32 140, label %212
    i32 130, label %229
    i32 129, label %246
    i32 141, label %263
  ]

21:                                               ; preds = %8
  %22 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %23 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %14, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %27 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %15, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %31 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %16, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %17, align 8
  store i64 2, i64* %34, align 8
  br label %302

35:                                               ; preds = %8
  %36 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %37 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %14, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %41 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %15, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %45 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %16, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %17, align 8
  store i64 1, i64* %48, align 8
  br label %302

49:                                               ; preds = %8
  %50 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %51 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %14, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %55 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %15, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %59 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %16, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64*, i64** %17, align 8
  store i64 1, i64* %62, align 8
  br label %302

63:                                               ; preds = %8
  %64 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %65 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %14, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %69 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %15, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %73 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %16, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %17, align 8
  store i64 1, i64* %76, align 8
  br label %302

77:                                               ; preds = %8
  %78 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %79 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %14, align 8
  store i64 %80, i64* %81, align 8
  %82 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %83 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %15, align 8
  store i64 %84, i64* %85, align 8
  %86 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %87 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %16, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64*, i64** %17, align 8
  store i64 1, i64* %90, align 8
  br label %302

91:                                               ; preds = %8
  %92 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %93 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %14, align 8
  store i64 %94, i64* %95, align 8
  %96 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %97 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %15, align 8
  store i64 %98, i64* %99, align 8
  %100 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %101 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %100, i32 0, i32 11
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %16, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i64*, i64** %17, align 8
  store i64 1, i64* %104, align 8
  br label %302

105:                                              ; preds = %8
  %106 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %107 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %14, align 8
  store i64 %108, i64* %109, align 8
  %110 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %111 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %15, align 8
  store i64 %112, i64* %113, align 8
  %114 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %115 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %114, i32 0, i32 12
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %16, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64*, i64** %17, align 8
  store i64 1, i64* %118, align 8
  br label %302

119:                                              ; preds = %8
  %120 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %121 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %128 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %14, align 8
  store i64 %129, i64* %130, align 8
  %131 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %132 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %15, align 8
  store i64 %133, i64* %134, align 8
  br label %144

135:                                              ; preds = %119
  %136 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %137 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %136, i32 0, i32 13
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %14, align 8
  store i64 %138, i64* %139, align 8
  %140 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %141 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %140, i32 0, i32 14
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %15, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %135, %126
  %145 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %146 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %145, i32 0, i32 15
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %16, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i64*, i64** %17, align 8
  store i64 1, i64* %149, align 8
  br label %302

150:                                              ; preds = %8
  %151 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %152 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %159 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %14, align 8
  store i64 %160, i64* %161, align 8
  %162 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %163 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %15, align 8
  store i64 %164, i64* %165, align 8
  br label %175

166:                                              ; preds = %150
  %167 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %168 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %167, i32 0, i32 13
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %14, align 8
  store i64 %169, i64* %170, align 8
  %171 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %172 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %171, i32 0, i32 14
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %15, align 8
  store i64 %173, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %157
  %176 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %177 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %176, i32 0, i32 16
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %16, align 8
  store i64 %178, i64* %179, align 8
  %180 = load i64*, i64** %17, align 8
  store i64 1, i64* %180, align 8
  br label %302

181:                                              ; preds = %8
  %182 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %183 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %182, i32 0, i32 13
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** %14, align 8
  store i64 %184, i64* %185, align 8
  %186 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %187 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %186, i32 0, i32 14
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %15, align 8
  store i64 %188, i64* %189, align 8
  %190 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %191 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %190, i32 0, i32 17
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %16, align 8
  store i64 %192, i64* %193, align 8
  %194 = load i64*, i64** %17, align 8
  store i64 2, i64* %194, align 8
  br label %302

195:                                              ; preds = %8
  %196 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %197 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %196, i32 0, i32 13
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %14, align 8
  store i64 %198, i64* %199, align 8
  %200 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %201 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %200, i32 0, i32 14
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %15, align 8
  store i64 %202, i64* %203, align 8
  %204 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %205 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %204, i32 0, i32 18
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %16, align 8
  store i64 %206, i64* %207, align 8
  %208 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %209 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %208, i32 0, i32 19
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %17, align 8
  store i64 %210, i64* %211, align 8
  br label %302

212:                                              ; preds = %8
  %213 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %214 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %213, i32 0, i32 13
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %14, align 8
  store i64 %215, i64* %216, align 8
  %217 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %218 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %217, i32 0, i32 14
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %15, align 8
  store i64 %219, i64* %220, align 8
  %221 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %222 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %221, i32 0, i32 20
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** %16, align 8
  store i64 %223, i64* %224, align 8
  %225 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %226 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %225, i32 0, i32 21
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %17, align 8
  store i64 %227, i64* %228, align 8
  br label %302

229:                                              ; preds = %8
  %230 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %231 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %230, i32 0, i32 13
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %14, align 8
  store i64 %232, i64* %233, align 8
  %234 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %235 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %234, i32 0, i32 14
  %236 = load i64, i64* %235, align 8
  %237 = load i64*, i64** %15, align 8
  store i64 %236, i64* %237, align 8
  %238 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %239 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %238, i32 0, i32 22
  %240 = load i64, i64* %239, align 8
  %241 = load i64*, i64** %16, align 8
  store i64 %240, i64* %241, align 8
  %242 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %243 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %242, i32 0, i32 23
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** %17, align 8
  store i64 %244, i64* %245, align 8
  br label %302

246:                                              ; preds = %8
  %247 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %248 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %247, i32 0, i32 13
  %249 = load i64, i64* %248, align 8
  %250 = load i64*, i64** %14, align 8
  store i64 %249, i64* %250, align 8
  %251 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %252 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %251, i32 0, i32 14
  %253 = load i64, i64* %252, align 8
  %254 = load i64*, i64** %15, align 8
  store i64 %253, i64* %254, align 8
  %255 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %256 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %255, i32 0, i32 24
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** %16, align 8
  store i64 %257, i64* %258, align 8
  %259 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %260 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %259, i32 0, i32 25
  %261 = load i64, i64* %260, align 8
  %262 = load i64*, i64** %17, align 8
  store i64 %261, i64* %262, align 8
  br label %302

263:                                              ; preds = %8
  %264 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %265 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %263
  %271 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %272 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = load i64*, i64** %14, align 8
  store i64 %273, i64* %274, align 8
  %275 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %276 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = load i64*, i64** %15, align 8
  store i64 %277, i64* %278, align 8
  br label %288

279:                                              ; preds = %263
  %280 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %281 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %280, i32 0, i32 13
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %14, align 8
  store i64 %282, i64* %283, align 8
  %284 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %285 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %284, i32 0, i32 14
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %15, align 8
  store i64 %286, i64* %287, align 8
  br label %288

288:                                              ; preds = %279, %270
  %289 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %290 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %289, i32 0, i32 26
  %291 = load i64, i64* %290, align 8
  %292 = load i64*, i64** %16, align 8
  store i64 %291, i64* %292, align 8
  %293 = load i64*, i64** %17, align 8
  store i64 2, i64* %293, align 8
  br label %302

294:                                              ; preds = %8
  %295 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %296 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %297, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @ENOTSUPP, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %9, align 4
  br label %353

302:                                              ; preds = %288, %246, %229, %212, %195, %181, %175, %144, %105, %91, %77, %63, %49, %35, %21
  %303 = load i64*, i64** %15, align 8
  %304 = load i64, i64* %303, align 8
  %305 = icmp slt i64 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i64*, i64** %16, align 8
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %310, label %352

310:                                              ; preds = %306, %302
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %349

313:                                              ; preds = %310
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %314

314:                                              ; preds = %336, %313
  %315 = load i32, i32* %19, align 4
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfg_params, align 8
  %317 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %316)
  %318 = icmp slt i32 %315, %317
  br i1 %318, label %319, label %339

319:                                              ; preds = %314
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfg_params, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %319
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfg_params, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  store i8* %334, i8** %18, align 8
  br label %339

335:                                              ; preds = %319
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %19, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %19, align 4
  br label %314

339:                                              ; preds = %328, %314
  %340 = load %struct.tegra_pmx*, %struct.tegra_pmx** %10, align 8
  %341 = getelementptr inbounds %struct.tegra_pmx, %struct.tegra_pmx* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = load i8*, i8** %18, align 8
  %345 = load %struct.tegra_pingroup*, %struct.tegra_pingroup** %11, align 8
  %346 = getelementptr inbounds %struct.tegra_pingroup, %struct.tegra_pingroup* %345, i32 0, i32 27
  %347 = load i32, i32* %346, align 8
  %348 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %342, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %343, i8* %344, i32 %347)
  br label %349

349:                                              ; preds = %339, %310
  %350 = load i32, i32* @ENOTSUPP, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %9, align 4
  br label %353

352:                                              ; preds = %306
  store i32 0, i32* %9, align 4
  br label %353

353:                                              ; preds = %352, %349, %294
  %354 = load i32, i32* %9, align 4
  ret i32 %354
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
