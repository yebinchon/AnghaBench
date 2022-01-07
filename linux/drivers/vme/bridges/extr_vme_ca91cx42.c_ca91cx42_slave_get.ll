; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_slave_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@CA91CX42_VSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_VSI_BS = common dso_local global i64* null, align 8
@CA91CX42_VSI_BD = common dso_local global i64* null, align 8
@CA91CX42_VSI_TO = common dso_local global i64* null, align 8
@CA91CX42_VSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_M = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_USER1 = common dso_local global i32 0, align 4
@VME_USER1 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_USER2 = common dso_local global i32 0, align 4
@VME_USER2 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_SUPER_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_PGM_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_slave_resource*, i32*, i64*, i64*, i64*, i64*, i64*)* @ca91cx42_slave_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_slave_get(%struct.vme_slave_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.vme_slave_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %22 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %24, align 8
  store %struct.ca91cx42_driver* %25, %struct.ca91cx42_driver** %20, align 8
  %26 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %27 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %7
  store i32 4096, i32* %16, align 4
  br label %36

35:                                               ; preds = %31
  store i32 65536, i32* %16, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %38 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = call i8* @ioread32(i64 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %49 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** @CA91CX42_VSI_BS, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %50, %55
  %57 = call i8* @ioread32(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %61 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** @CA91CX42_VSI_BD, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %62, %67
  %69 = call i8* @ioread32(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* %18, align 8
  %71 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %20, align 8
  %72 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @CA91CX42_VSI_TO, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = call i8* @ioread32(i64 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %19, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %19, align 8
  %85 = add i64 %83, %84
  %86 = load i64*, i64** %12, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %87, %89
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i32*, i32** %9, align 8
  store i32 0, i32* %95, align 4
  %96 = load i64*, i64** %13, align 8
  store i64 0, i64* %96, align 8
  %97 = load i64*, i64** %14, align 8
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @CA91CX42_VSI_CTL_EN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %36
  %103 = load i32*, i32** %9, align 8
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %36
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A16, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i64, i64* @VME_A16, align 8
  %112 = load i64*, i64** %13, align 8
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A24, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i64, i64* @VME_A24, align 8
  %121 = load i64*, i64** %13, align 8
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A32, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i64, i64* @VME_A32, align 8
  %130 = load i64*, i64** %13, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER1, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i64, i64* @VME_USER1, align 8
  %139 = load i64*, i64** %13, align 8
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER2, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i64, i64* @VME_USER2, align 8
  %148 = load i64*, i64** %13, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_SUPR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i64, i64* @VME_SUPER, align 8
  %156 = load i64*, i64** %14, align 8
  %157 = load i64, i64* %156, align 8
  %158 = or i64 %157, %155
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_NPRIV, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i64, i64* @VME_USER, align 8
  %166 = load i64*, i64** %14, align 8
  %167 = load i64, i64* %166, align 8
  %168 = or i64 %167, %165
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* @CA91CX42_VSI_CTL_PGM_PGM, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i64, i64* @VME_PROG, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %177, %175
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @CA91CX42_VSI_CTL_PGM_DATA, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i64, i64* @VME_DATA, align 8
  %186 = load i64*, i64** %14, align 8
  %187 = load i64, i64* %186, align 8
  %188 = or i64 %187, %185
  store i64 %188, i64* %186, align 8
  br label %189

189:                                              ; preds = %184, %179
  ret i32 0
}

declare dso_local i8* @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
