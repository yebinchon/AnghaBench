; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_setup_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_setup_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci1710_private* }
%struct.pci1710_private = type { i32*, i32, i64 }
%struct.comedi_subdevice = type { i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@PCI171X_RANGE_DIFF = common dso_local global i32 0, align 4
@PCI171X_RANGE_UNI = common dso_local global i32 0, align 4
@PCI171X_MUX_REG = common dso_local global i64 0, align 8
@PCI171X_RANGE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32)* @pci1710_ai_setup_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci1710_ai_setup_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci1710_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1
  %21 = load %struct.pci1710_private*, %struct.pci1710_private** %20, align 8
  store %struct.pci1710_private* %21, %struct.pci1710_private** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @CR_CHAN(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @CR_CHAN(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %109, %5
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %112

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @CR_CHAN(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CR_RANGE(i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CR_AREF(i32 %57)
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @AREF_DIFF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %39
  %63 = load i32, i32* @PCI171X_RANGE_DIFF, align 4
  %64 = load i32, i32* %18, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %62, %39
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32, i32* @PCI171X_RANGE_UNI, align 4
  %73 = load i32, i32* %18, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %18, align 4
  %75 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %76 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %71, %66
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @PCI171X_RANGE_GAIN(i32 %83)
  %85 = load i32, i32* %18, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @PCI171X_MUX_CHAN(i32 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCI171X_MUX_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outw(i32 %88, i64 %93)
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCI171X_RANGE_REG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outw(i32 %95, i64 %100)
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %104 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %82
  %110 = load i32, i32* %14, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %35

112:                                              ; preds = %35
  br label %113

113:                                              ; preds = %131, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @CR_CHAN(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %126 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %113

134:                                              ; preds = %113
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @PCI171X_MUX_CHANL(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @PCI171X_MUX_CHANH(i32 %137)
  %139 = or i32 %136, %138
  %140 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %141 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %143 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %146 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PCI171X_MUX_REG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outw(i32 %144, i64 %149)
  ret void
}

declare dso_local i8* @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @PCI171X_RANGE_GAIN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @PCI171X_MUX_CHAN(i32) #1

declare dso_local i32 @PCI171X_MUX_CHANL(i32) #1

declare dso_local i32 @PCI171X_MUX_CHANH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
