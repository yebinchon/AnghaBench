; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_set_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_set_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }

@PCI9118_AI_CTRL_UNIP = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_DIFF = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_REG = common dso_local global i64 0, align 8
@PCI9118_AI_AUTOSCAN_MODE_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CHANLIST_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*, i32, i32)* @pci9118_set_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_set_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci9118_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load %struct.pci9118_private*, %struct.pci9118_private** %23, align 8
  store %struct.pci9118_private* %24, %struct.pci9118_private** %13, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_CHAN(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_RANGE(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CR_AREF(i32 %35)
  store i32 %36, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %38 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %6
  %44 = load i32, i32* @PCI9118_AI_CTRL_UNIP, align 4
  %45 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %46 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %6
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @AREF_DIFF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @PCI9118_AI_CTRL_DIFF, align 4
  %55 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %56 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %61 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI9118_AI_CTRL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outl(i32 %62, i64 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outl(i32 2, i64 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outl(i32 0, i64 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outl(i32 1, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %59
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @PCI9118_AI_CHANLIST_CHAN(i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @PCI9118_AI_CHANLIST_RANGE(i32 %92)
  %94 = or i32 %91, %93
  store i32 %94, i32* %18, align 4
  %95 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %96 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %115, %89
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCI9118_AI_CHANLIST_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outl(i32 %105, i64 %110)
  %112 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  %113 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %98

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %59
  store i32 0, i32* %19, align 4
  br label %120

120:                                              ; preds = %151, %119
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CR_CHAN(i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @CR_RANGE(i32 %135)
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %20, align 4
  %138 = call i32 @PCI9118_AI_CHANLIST_CHAN(i32 %137)
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @PCI9118_AI_CHANLIST_RANGE(i32 %139)
  %141 = or i32 %138, %140
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %17, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %146 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PCI9118_AI_CHANLIST_REG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outl(i32 %144, i64 %149)
  br label %151

151:                                              ; preds = %124
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %120

154:                                              ; preds = %120
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @PCI9118_AI_CHANLIST_CHAN(i32 %158)
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @PCI9118_AI_CHANLIST_RANGE(i32 %160)
  %162 = or i32 %159, %161
  store i32 %162, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %177, %157
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %163
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %17, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PCI9118_AI_CHANLIST_REG, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @outl(i32 %170, i64 %175)
  br label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %19, align 4
  br label %163

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %154
  %182 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @outl(i32 0, i64 %186)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @PCI9118_AI_CHANLIST_CHAN(i32) #1

declare dso_local i32 @PCI9118_AI_CHANLIST_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
