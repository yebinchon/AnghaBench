; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_pspi = type { i64, i64, i64, i32, i32, i64 }

@NPCM_PSPI_STAT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@NPCM_PSPI_STAT_RBF = common dso_local global i32 0, align 4
@NPCM_PSPI_DATA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@NPCM_PSPI_STAT_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @npcm_pspi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_pspi_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.npcm_pspi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.npcm_pspi*
  store %struct.npcm_pspi* %10, %struct.npcm_pspi** %6, align 8
  %11 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %12 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NPCM_PSPI_STAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i8* @ioread8(i64 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %19 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %24 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %125

29:                                               ; preds = %22, %2
  %30 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %31 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NPCM_PSPI_STAT_RBF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %41 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %42 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i8* @ioread8(i64 %44)
  store i8* %45, i8** %7, align 8
  %46 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %47 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %52 = call i32 @npcm_pspi_disable(%struct.npcm_pspi* %51)
  %53 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %54 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %53, i32 0, i32 3
  %55 = call i32 @complete(i32* %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %125

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NPCM_PSPI_STAT_BSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %65 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %70 = call i32 @npcm_pspi_send(%struct.npcm_pspi* %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %29
  %74 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %75 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @NPCM_PSPI_STAT_RBF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %85 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @IRQ_NONE, align 4
  store i32 %89, i32* %3, align 4
  br label %125

90:                                               ; preds = %83
  %91 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %92 = call i32 @npcm_pspi_recv(%struct.npcm_pspi* %91)
  %93 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %94 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %99 = call i32 @npcm_pspi_disable(%struct.npcm_pspi* %98)
  %100 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %101 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %100, i32 0, i32 3
  %102 = call i32 @complete(i32* %101)
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %3, align 4
  br label %125

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @NPCM_PSPI_STAT_BSY, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %112 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %117 = load %struct.npcm_pspi*, %struct.npcm_pspi** %6, align 8
  %118 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = call i32 @iowrite8(i32 0, i64 %120)
  br label %122

122:                                              ; preds = %115, %110, %105
  br label %123

123:                                              ; preds = %122, %73
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %97, %88, %50, %27
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i8* @ioread8(i64) #1

declare dso_local i32 @npcm_pspi_disable(%struct.npcm_pspi*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @npcm_pspi_send(%struct.npcm_pspi*) #1

declare dso_local i32 @npcm_pspi_recv(%struct.npcm_pspi*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
