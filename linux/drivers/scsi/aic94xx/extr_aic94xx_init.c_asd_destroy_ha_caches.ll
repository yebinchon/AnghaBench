; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_destroy_ha_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_destroy_ha_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.asd_phy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32*, i32*, i32*, i64, i64 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.asd_phy = type { i32* }

@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_destroy_ha_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_destroy_ha_caches(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_phy*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %11, i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %19 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %24, i32* %28)
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %55, %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ASD_MAX_PHYS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %45 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %44, i32 0, i32 3
  %46 = load %struct.asd_phy*, %struct.asd_phy** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %46, i64 %48
  store %struct.asd_phy* %49, %struct.asd_phy** %4, align 8
  %50 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %51 = load %struct.asd_phy*, %struct.asd_phy** %4, align 8
  %52 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %50, i32* %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %66 = call i32 @asd_free_escbs(%struct.asd_ha_struct* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %69 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %75 = call i32 @asd_free_edbs(%struct.asd_ha_struct* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %78 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %85 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %91 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %83, %76
  %95 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %96 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %102 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %107 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %112 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i32* null, i32** %113, align 8
  %114 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %115 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %100, %94
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %119 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %125 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %126 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %124, i32* %128)
  %130 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %131 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i32* null, i32** %132, align 8
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %134 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %123, %117
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %138 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %136
  %144 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %145 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %148 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %153 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dma_pool_free(i32* %146, i32* %151, i32 %156)
  %158 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %159 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %143, %136
  %163 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %164 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @dma_pool_destroy(i32* %165)
  %167 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %168 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  ret void
}

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @asd_free_escbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_free_edbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @dma_pool_free(i32*, i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
