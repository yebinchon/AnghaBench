; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_setup_dma_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_setup_dma_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.hpdi_private* }
%struct.hpdi_private = type { i32, i32*, i32, i32, %struct.TYPE_2__*, i64*, i64* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@PLX_DMADPR_DESCPCI = common dso_local global i32 0, align 4
@PLX_DMADPR_TCINTR = common dso_local global i32 0, align 4
@PLX_DMADPR_XFERL2P = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@NUM_DMA_BUFFERS = common dso_local global i32 0, align 4
@FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @gsc_hpdi_setup_dma_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpdi_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.hpdi_private*, %struct.hpdi_private** %13, align 8
  store %struct.hpdi_private* %14, %struct.hpdi_private** %6, align 8
  %15 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %16 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %19 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PLX_DMADPR_XFERL2P, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = urem i64 %30, 4
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = sub i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %159

41:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %136, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @NUM_DMA_DESCRIPTORS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @NUM_DMA_BUFFERS, align 4
  %49 = icmp ult i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  br i1 %51, label %52, label %139

52:                                               ; preds = %50
  %53 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %54 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %64 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i8* %62, i8** %69, align 8
  %70 = load i32, i32* @FIFO_REG, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %73 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %71, i8** %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %82 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i8* %80, i8** %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 32
  %94 = add i64 %89, %93
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = or i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %101 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %99, i8** %106, align 8
  %107 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %108 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %107, i32 0, i32 5
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = udiv i64 %115, 4
  %117 = add i64 %113, %116
  %118 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %119 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %118, i32 0, i32 6
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %127, %128
  %130 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %52
  store i32 0, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %132, %52
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %42

139:                                              ; preds = %50
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %142 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %143, %144
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %148 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %147, i32 0, i32 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sub i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* %146, i8** %154, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %157 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %139, %38
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
