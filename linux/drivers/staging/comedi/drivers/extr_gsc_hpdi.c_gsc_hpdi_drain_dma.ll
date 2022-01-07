; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_drain_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_drain_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.hpdi_private* }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.hpdi_private = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i64 }
%struct.TYPE_4__ = type { i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @gsc_hpdi_drain_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_hpdi_drain_dma(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpdi_private*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.hpdi_private*, %struct.hpdi_private** %14, align 8
  store %struct.hpdi_private* %15, %struct.hpdi_private** %5, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %6, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %7, align 8
  %23 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %24 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @PLX_REG_DMAPADR(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %31 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %34 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %120, %2
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %50 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %48, %51
  %53 = icmp uge i32 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %57 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br label %60

60:                                               ; preds = %54, %46
  %61 = phi i1 [ false, %46 ], [ %59, %54 ]
  br i1 %61, label %62, label %123

62:                                               ; preds = %60
  %63 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %64 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  %67 = udiv i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRIG_COUNT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %77 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %82 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %87 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %62
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %92 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %93 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %91, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %104 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = urem i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %109 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  %119 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %90
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %42

123:                                              ; preds = %60
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PLX_REG_DMAPADR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
