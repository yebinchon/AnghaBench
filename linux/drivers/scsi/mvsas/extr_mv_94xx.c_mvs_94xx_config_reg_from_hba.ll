; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_config_reg_from_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_config_reg_from_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_94xx_config_reg_from_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_config_reg_from_hba(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca { i64, i32 }, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %12
  %14 = bitcast %struct.TYPE_7__* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, 4294967295
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %21 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 6, i32* %27, align 4
  %28 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %29 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 26, i32* %35, align 4
  %36 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %37 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 3, i32* %43, align 4
  br label %44

44:                                               ; preds = %19, %2
  %45 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %46 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = bitcast %struct.TYPE_8__* %51 to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 255
  br i1 %56, label %57, label %99

57:                                               ; preds = %44
  %58 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %59 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %81 [
    i32 132, label %63
    i32 131, label %63
    i32 130, label %80
    i32 129, label %80
    i32 128, label %80
  ]

63:                                               ; preds = %57, %57
  %64 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %65 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 7, i32* %71, align 4
  %72 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %73 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 7, i32* %79, align 4
  br label %98

80:                                               ; preds = %57, %57, %57
  br label %81

81:                                               ; preds = %57, %80
  %82 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %83 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 7, i32* %89, align 4
  %90 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %91 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 12, i32* %97, align 4
  br label %98

98:                                               ; preds = %81, %63
  br label %99

99:                                               ; preds = %98, %44
  %100 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %101 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %109, 255
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %113 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 2, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %99
  %120 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %123 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = bitcast { i64, i32 }* %6 to i8*
  %130 = bitcast %struct.TYPE_7__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 12, i1 false)
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 4
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @set_phy_tuning(%struct.mvs_info* %120, i32 %121, i64 %132, i32 %134)
  %136 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %139 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = bitcast %struct.TYPE_8__* %144 to i64*
  %146 = load i64, i64* %145, align 4
  %147 = call i32 @set_phy_ffe_tuning(%struct.mvs_info* %136, i32 %137, i64 %146)
  %148 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %151 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_phy_rate(%struct.mvs_info* %148, i32 %149, i32 %157)
  ret void
}

declare dso_local i32 @set_phy_tuning(%struct.mvs_info*, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_phy_ffe_tuning(%struct.mvs_info*, i32, i64) #1

declare dso_local i32 @set_phy_rate(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
