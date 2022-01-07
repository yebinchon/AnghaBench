; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c___ca91cx42_master_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c___ca91cx42_master_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@CA91CX42_LSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_LSI_BS = common dso_local global i64* null, align 8
@CA91CX42_LSI_TO = common dso_local global i64* null, align 8
@CA91CX42_LSI_BD = common dso_local global i64* null, align 8
@CA91CX42_LSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_M = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i64 0, align 8
@VME_A24 = common dso_local global i64 0, align 8
@VME_A32 = common dso_local global i64 0, align 8
@VME_CRCSR = common dso_local global i64 0, align 8
@VME_USER1 = common dso_local global i64 0, align 8
@VME_USER2 = common dso_local global i64 0, align 8
@CA91CX42_LSI_CTL_VCT_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i64 0, align 8
@VME_SCT = common dso_local global i64 0, align 8
@CA91CX42_LSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i64 0, align 8
@VME_USER = common dso_local global i64 0, align 8
@CA91CX42_LSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i64 0, align 8
@VME_DATA = common dso_local global i64 0, align 8
@CA91CX42_LSI_CTL_VDW_M = common dso_local global i32 0, align 4
@VME_D8 = common dso_local global i64 0, align 8
@VME_D16 = common dso_local global i64 0, align 8
@VME_D32 = common dso_local global i64 0, align 8
@VME_D64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32*, i64*, i64*, i64*, i64*, i64*)* @__ca91cx42_master_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ca91cx42_master_get(%struct.vme_master_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.vme_master_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %21 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %22 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  store %struct.ca91cx42_driver* %25, %struct.ca91cx42_driver** %20, align 8
  %26 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %27 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %30 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = call i8* @ioread32(i64 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %41 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** @CA91CX42_LSI_BS, align 8
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = call i8* @ioread32(i64 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %17, align 8
  %51 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %52 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** @CA91CX42_LSI_TO, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = call i8* @ioread32(i64 %59)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %19, align 8
  %62 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %63 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** @CA91CX42_LSI_BD, align 8
  %66 = load i32, i32* %15, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %64, %69
  %71 = call i8* @ioread32(i64 %70)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %18, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %19, align 8
  %75 = add i64 %73, %74
  %76 = load i64*, i64** %10, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %17, align 8
  %79 = sub i64 %77, %78
  %80 = load i64*, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32*, i32** %9, align 8
  store i32 0, i32* %81, align 4
  %82 = load i64*, i64** %12, align 8
  store i64 0, i64* %82, align 8
  %83 = load i64*, i64** %13, align 8
  store i64 0, i64* %83, align 8
  %84 = load i64*, i64** %14, align 8
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @CA91CX42_LSI_CTL_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %7
  %90 = load i32*, i32** %9, align 8
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %7
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @CA91CX42_LSI_CTL_VAS_M, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %113 [
    i32 137, label %95
    i32 136, label %98
    i32 135, label %101
    i32 134, label %104
    i32 133, label %107
    i32 132, label %110
  ]

95:                                               ; preds = %91
  %96 = load i64, i64* @VME_A16, align 8
  %97 = load i64*, i64** %12, align 8
  store i64 %96, i64* %97, align 8
  br label %113

98:                                               ; preds = %91
  %99 = load i64, i64* @VME_A24, align 8
  %100 = load i64*, i64** %12, align 8
  store i64 %99, i64* %100, align 8
  br label %113

101:                                              ; preds = %91
  %102 = load i64, i64* @VME_A32, align 8
  %103 = load i64*, i64** %12, align 8
  store i64 %102, i64* %103, align 8
  br label %113

104:                                              ; preds = %91
  %105 = load i64, i64* @VME_CRCSR, align 8
  %106 = load i64*, i64** %12, align 8
  store i64 %105, i64* %106, align 8
  br label %113

107:                                              ; preds = %91
  %108 = load i64, i64* @VME_USER1, align 8
  %109 = load i64*, i64** %12, align 8
  store i64 %108, i64* %109, align 8
  br label %113

110:                                              ; preds = %91
  %111 = load i64, i64* @VME_USER2, align 8
  %112 = load i64*, i64** %12, align 8
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %91, %110, %107, %104, %101, %98, %95
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @CA91CX42_LSI_CTL_VCT_BLT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i64, i64* @VME_BLT, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %119
  store i64 %122, i64* %120, align 8
  br label %128

123:                                              ; preds = %113
  %124 = load i64, i64* @VME_SCT, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %124
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @CA91CX42_LSI_CTL_SUPER_SUPR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i64, i64* @VME_SUPER, align 8
  %135 = load i64*, i64** %13, align 8
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %134
  store i64 %137, i64* %135, align 8
  br label %143

138:                                              ; preds = %128
  %139 = load i64, i64* @VME_USER, align 8
  %140 = load i64*, i64** %13, align 8
  %141 = load i64, i64* %140, align 8
  %142 = or i64 %141, %139
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @CA91CX42_LSI_CTL_PGM_PGM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i64, i64* @VME_PROG, align 8
  %150 = load i64*, i64** %13, align 8
  store i64 %149, i64* %150, align 8
  br label %154

151:                                              ; preds = %143
  %152 = load i64, i64* @VME_DATA, align 8
  %153 = load i64*, i64** %13, align 8
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @CA91CX42_LSI_CTL_VDW_M, align 4
  %157 = and i32 %155, %156
  switch i32 %157, label %170 [
    i32 128, label %158
    i32 131, label %161
    i32 130, label %164
    i32 129, label %167
  ]

158:                                              ; preds = %154
  %159 = load i64, i64* @VME_D8, align 8
  %160 = load i64*, i64** %14, align 8
  store i64 %159, i64* %160, align 8
  br label %170

161:                                              ; preds = %154
  %162 = load i64, i64* @VME_D16, align 8
  %163 = load i64*, i64** %14, align 8
  store i64 %162, i64* %163, align 8
  br label %170

164:                                              ; preds = %154
  %165 = load i64, i64* @VME_D32, align 8
  %166 = load i64*, i64** %14, align 8
  store i64 %165, i64* %166, align 8
  br label %170

167:                                              ; preds = %154
  %168 = load i64, i64* @VME_D64, align 8
  %169 = load i64*, i64** %14, align 8
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %154, %167, %164, %161, %158
  ret i32 0
}

declare dso_local i8* @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
