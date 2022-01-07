; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_update_edge_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_update_edge_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @ni_65xx_update_edge_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_65xx_update_edge_detection(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = call i32 @ni_65xx_num_ports(%struct.comedi_device* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @NI_65XX_PORT_TO_CHAN(i32 %18)
  %20 = icmp uge i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %118

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @NI_65XX_CHAN_TO_PORT(i32 %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %115, %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %118

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @NI_65XX_PORT_TO_CHAN(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 32
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %118

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = lshr i32 -1, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = lshr i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = lshr i32 %46, %47
  store i32 %48, i32* %14, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 0, %50
  %52 = shl i32 -1, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 0, %54
  %56 = shl i32 %53, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 0, %58
  %60 = shl i32 %57, %59
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %49, %40
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 255
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %67, 255
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @NI_65XX_RISE_EDGE_ENA_REG(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @readb(i64 %76)
  %78 = load i32, i32* %12, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @NI_65XX_FALL_EDGE_ENA_REG(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @readb(i64 %88)
  %90 = load i32, i32* %12, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %70, %65
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 255
  %98 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @NI_65XX_RISE_EDGE_ENA_REG(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = call i32 @writeb(i32 %97, i64 %103)
  %105 = load i32, i32* %14, align 4
  %106 = and i32 %105, 255
  %107 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @NI_65XX_FALL_EDGE_ENA_REG(i32 %110)
  %112 = add nsw i64 %109, %111
  %113 = call i32 @writeb(i32 %106, i64 %112)
  br label %114

114:                                              ; preds = %95, %61
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %25

118:                                              ; preds = %21, %36, %25
  ret void
}

declare dso_local i32 @ni_65xx_num_ports(%struct.comedi_device*) #1

declare dso_local i32 @NI_65XX_PORT_TO_CHAN(i32) #1

declare dso_local i32 @NI_65XX_CHAN_TO_PORT(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @NI_65XX_RISE_EDGE_ENA_REG(i32) #1

declare dso_local i64 @NI_65XX_FALL_EDGE_ENA_REG(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
