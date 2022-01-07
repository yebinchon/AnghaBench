; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_prep_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_prep_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i64, i32, %struct.TYPE_2__*, %struct.mite* }
%struct.TYPE_2__ = type { i32 }
%struct.mite = type { i64 }

@CHCR_SET_DMA_IE = common dso_local global i32 0, align 4
@CHCR_LINKSHORT = common dso_local global i32 0, align 4
@CHCR_SET_DONE_IE = common dso_local global i32 0, align 4
@CHCR_BURSTEN = common dso_local global i32 0, align 4
@CHCR_SET_LC_IE = common dso_local global i32 0, align 4
@CHCR_BYTE_SWAP_DEVICE = common dso_local global i32 0, align 4
@CHCR_BYTE_SWAP_MEMORY = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i64 0, align 8
@CHCR_DEV_TO_MEM = common dso_local global i32 0, align 4
@CR_ASEQUP = common dso_local global i32 0, align 4
@CR_PSIZE8 = common dso_local global i32 0, align 4
@CR_PSIZE16 = common dso_local global i32 0, align 4
@CR_PSIZE32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"bug! invalid mem bit width for dma transfer\0A\00", align 1
@CR_PORTIO = common dso_local global i32 0, align 4
@CR_AMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"bug! invalid dev bit width for dma transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_prep_dma(%struct.mite_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mite_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mite*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %13 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %12, i32 0, i32 3
  %14 = load %struct.mite*, %struct.mite** %13, align 8
  store %struct.mite* %14, %struct.mite** %7, align 8
  %15 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %16 = call i32 @mite_dma_reset(%struct.mite_channel* %15)
  %17 = load i32, i32* @CHCR_SET_DMA_IE, align 4
  %18 = load i32, i32* @CHCR_LINKSHORT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CHCR_SET_DONE_IE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CHCR_BURSTEN, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @CHCR_SET_LC_IE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @CHCR_BYTE_SWAP_DEVICE, align 4
  %34 = load i32, i32* @CHCR_BYTE_SWAP_MEMORY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %29, %3
  %39 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %40 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @COMEDI_INPUT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @CHCR_DEV_TO_MEM, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mite*, %struct.mite** %7, align 8
  %51 = getelementptr inbounds %struct.mite, %struct.mite* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %54 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @MITE_CHCR(i32 %55)
  %57 = add nsw i64 %52, %56
  %58 = call i32 @writel(i32 %49, i64 %57)
  %59 = call i32 @mite_retry_limit(i32 64)
  %60 = load i32, i32* @CR_ASEQUP, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %75 [
    i32 8, label %63
    i32 16, label %67
    i32 32, label %71
  ]

63:                                               ; preds = %48
  %64 = load i32, i32* @CR_PSIZE8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %77

67:                                               ; preds = %48
  %68 = load i32, i32* @CR_PSIZE16, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %77

71:                                               ; preds = %48
  %72 = load i32, i32* @CR_PSIZE32, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %77

75:                                               ; preds = %48
  %76 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71, %67, %63
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mite*, %struct.mite** %7, align 8
  %80 = getelementptr inbounds %struct.mite, %struct.mite* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %83 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @MITE_MCR(i32 %84)
  %86 = add nsw i64 %81, %85
  %87 = call i32 @writel(i32 %78, i64 %86)
  %88 = call i32 @mite_retry_limit(i32 64)
  %89 = load i32, i32* @CR_ASEQUP, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @CR_PORTIO, align 4
  %92 = load i32, i32* @CR_AMDEVICE, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %95 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mite_drq_reqs(i32 %96)
  %98 = or i32 %93, %97
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  switch i32 %101, label %114 [
    i32 8, label %102
    i32 16, label %106
    i32 32, label %110
  ]

102:                                              ; preds = %77
  %103 = load i32, i32* @CR_PSIZE8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %116

106:                                              ; preds = %77
  %107 = load i32, i32* @CR_PSIZE16, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %116

110:                                              ; preds = %77
  %111 = load i32, i32* @CR_PSIZE32, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %116

114:                                              ; preds = %77
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110, %106, %102
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.mite*, %struct.mite** %7, align 8
  %119 = getelementptr inbounds %struct.mite, %struct.mite* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %122 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @MITE_DCR(i32 %123)
  %125 = add nsw i64 %120, %124
  %126 = call i32 @writel(i32 %117, i64 %125)
  %127 = load %struct.mite*, %struct.mite** %7, align 8
  %128 = getelementptr inbounds %struct.mite, %struct.mite* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %131 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @MITE_DAR(i32 %132)
  %134 = add nsw i64 %129, %133
  %135 = call i32 @writel(i32 0, i64 %134)
  %136 = call i32 @mite_retry_limit(i32 64)
  %137 = load i32, i32* @CR_ASEQUP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CR_PSIZE32, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.mite*, %struct.mite** %7, align 8
  %143 = getelementptr inbounds %struct.mite, %struct.mite* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %146 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @MITE_LKCR(i32 %147)
  %149 = add nsw i64 %144, %148
  %150 = call i32 @writel(i32 %141, i64 %149)
  %151 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %152 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mite*, %struct.mite** %7, align 8
  %157 = getelementptr inbounds %struct.mite, %struct.mite* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %160 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @MITE_LKAR(i32 %161)
  %163 = add nsw i64 %158, %162
  %164 = call i32 @writel(i32 %155, i64 %163)
  ret void
}

declare dso_local i32 @mite_dma_reset(%struct.mite_channel*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHCR(i32) #1

declare dso_local i32 @mite_retry_limit(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @MITE_MCR(i32) #1

declare dso_local i32 @mite_drq_reqs(i32) #1

declare dso_local i64 @MITE_DCR(i32) #1

declare dso_local i64 @MITE_DAR(i32) #1

declare dso_local i64 @MITE_LKCR(i32) #1

declare dso_local i64 @MITE_LKAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
