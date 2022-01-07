; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@TYPE_PCI1752 = common dso_local global i64 0, align 8
@PCI1752_CFC_REG = common dso_local global i64 0, align 8
@PCI173X_INT_EN_REG = common dso_local global i64 0, align 8
@PCI173X_INT_CLR_REG = common dso_local global i64 0, align 8
@PCI173X_INT_RF_REG = common dso_local global i64 0, align 8
@PCI1750_INT_REG = common dso_local global i64 0, align 8
@PCI1761_INT_EN_REG = common dso_local global i64 0, align 8
@PCI1761_INT_CLR_REG = common dso_local global i64 0, align 8
@PCI1761_INT_RF_REG = common dso_local global i64 0, align 8
@PCI1762_INT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pci_dio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dio_reset(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TYPE_PCI1752, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 130
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %2
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI1752_CFC_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i32 0, i64 %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i64, i64* %4, align 8
  switch i64 %19, label %154 [
    i64 139, label %20
    i64 138, label %20
    i64 137, label %20
    i64 136, label %39
    i64 135, label %39
    i64 134, label %39
    i64 133, label %46
    i64 132, label %46
    i64 131, label %99
    i64 130, label %99
    i64 129, label %128
    i64 128, label %147
  ]

20:                                               ; preds = %18, %18, %18
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI173X_INT_EN_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI173X_INT_CLR_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 15, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI173X_INT_RF_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 0, i64 %37)
  br label %155

39:                                               ; preds = %18, %18, %18
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI1750_INT_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 136, i64 %44)
  br label %155

46:                                               ; preds = %18, %18
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @PCI1753_INT_REG(i32 0)
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 136, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @PCI1753_INT_REG(i32 1)
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 128, i64 %57)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @PCI1753_INT_REG(i32 2)
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 128, i64 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @PCI1753_INT_REG(i32 3)
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 128, i64 %69)
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 132
  br i1 %72, label %73, label %98

73:                                               ; preds = %46
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @PCI1753E_INT_REG(i32 0)
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 136, i64 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @PCI1753E_INT_REG(i32 1)
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 128, i64 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @PCI1753E_INT_REG(i32 2)
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i32 128, i64 %90)
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @PCI1753E_INT_REG(i32 3)
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outb(i32 128, i64 %96)
  br label %98

98:                                               ; preds = %73, %46
  br label %155

99:                                               ; preds = %18, %18
  %100 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @PCI1754_INT_REG(i32 0)
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outw(i32 8, i64 %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @PCI1754_INT_REG(i32 1)
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outw(i32 8, i64 %110)
  %112 = load i64, i64* %4, align 8
  %113 = icmp eq i64 %112, 131
  br i1 %113, label %114, label %127

114:                                              ; preds = %99
  %115 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @PCI1754_INT_REG(i32 2)
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outw(i32 8, i64 %119)
  %121 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @PCI1754_INT_REG(i32 3)
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 8, i64 %125)
  br label %127

127:                                              ; preds = %114, %99
  br label %155

128:                                              ; preds = %18
  %129 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PCI1761_INT_EN_REG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outb(i32 0, i64 %133)
  %135 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %136 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PCI1761_INT_CLR_REG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outb(i32 255, i64 %139)
  %141 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PCI1761_INT_RF_REG, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i32 0, i64 %145)
  br label %155

147:                                              ; preds = %18
  %148 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PCI1762_INT_REG, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @outw(i32 257, i64 %152)
  br label %155

154:                                              ; preds = %18
  br label %155

155:                                              ; preds = %154, %147, %128, %127, %98, %39, %20
  ret i32 0
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @PCI1753_INT_REG(i32) #1

declare dso_local i64 @PCI1753E_INT_REG(i32) #1

declare dso_local i64 @PCI1754_INT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
