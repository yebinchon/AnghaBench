; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_msi_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_msi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VFIO_PCI_MSIX_IRQ_INDEX = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_msi_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_msi_trigger(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @VFIO_PCI_MSIX_IRQ_INDEX, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %15, align 4
  %24 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @irq_is(%struct.vfio_pci_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @vfio_msi_disable(%struct.vfio_pci_device* %37, i32 %38)
  store i32 0, i32* %7, align 4
  br label %181

40:                                               ; preds = %31, %28, %6
  %41 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @irq_is(%struct.vfio_pci_device* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %47 = call i64 @is_irq_none(%struct.vfio_pci_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %181

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %16, align 8
  %60 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %61 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @vfio_msi_set_block(%struct.vfio_pci_device* %66, i32 %67, i32 %68, i32* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %181

72:                                               ; preds = %57
  %73 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @vfio_msi_enable(%struct.vfio_pci_device* %73, i32 %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %7, align 4
  br label %181

83:                                               ; preds = %72
  %84 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @vfio_msi_set_block(%struct.vfio_pci_device* %84, i32 %85, i32 %86, i32* %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @vfio_msi_disable(%struct.vfio_pci_device* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %7, align 4
  br label %181

98:                                               ; preds = %52
  %99 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @irq_is(%struct.vfio_pci_device* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %104, %105
  %107 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %108 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ugt i32 %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103, %98
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %181

114:                                              ; preds = %103
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %177, %114
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %118, %119
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %116
  %123 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %124 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %177

133:                                              ; preds = %122
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %140 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @eventfd_signal(i32 %146, i32 1)
  br label %176

148:                                              ; preds = %133
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %148
  %154 = load i8*, i8** %13, align 8
  %155 = bitcast i8* %154 to i64*
  store i64* %155, i64** %18, align 8
  %156 = load i64*, i64** %18, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %156, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %153
  %165 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %166 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @eventfd_signal(i32 %172, i32 1)
  br label %174

174:                                              ; preds = %164, %153
  br label %175

175:                                              ; preds = %174, %148
  br label %176

176:                                              ; preds = %175, %138
  br label %177

177:                                              ; preds = %176, %132
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %116

180:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %180, %111, %96, %81, %65, %49, %36
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local i64 @irq_is(%struct.vfio_pci_device*, i32) #1

declare dso_local i32 @vfio_msi_disable(%struct.vfio_pci_device*, i32) #1

declare dso_local i64 @is_irq_none(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_msi_set_block(%struct.vfio_pci_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @vfio_msi_enable(%struct.vfio_pci_device*, i32, i32) #1

declare dso_local i32 @eventfd_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
