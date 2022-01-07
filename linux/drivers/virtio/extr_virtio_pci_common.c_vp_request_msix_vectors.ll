; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_request_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_request_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.irq_affinity = type { i32 }
%struct.virtio_pci_device = type { i32, i32, i32, i32 (%struct.virtio_pci_device*, i32)*, i32*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-config\00", align 1
@vp_config_changed = common dso_local global i32 0, align 4
@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-virtqueues\00", align 1
@vp_vring_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, i32, %struct.irq_affinity*)* @vp_request_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_request_msix_vectors(%struct.virtio_device* %0, i32 %1, i32 %2, %struct.irq_affinity* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_affinity*, align 8
  %10 = alloca %struct.virtio_pci_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_affinity* %3, %struct.irq_affinity** %9, align 8
  %16 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %17 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %16)
  store %struct.virtio_pci_device* %17, %struct.virtio_pci_device** %10, align 8
  %18 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %19 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i8* @dev_name(i32* %20)
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* @PCI_IRQ_MSIX, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %27 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc_array(i32 %28, i32 4, i32 %29)
  %31 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %32 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %34 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  br label %182

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kcalloc(i32 %39, i32 4, i32 %40)
  %42 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %43 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %42, i32 0, i32 6
  store i32* %41, i32** %43, align 8
  %44 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %45 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %182

49:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %56 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @alloc_cpumask_var(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %182

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %71 = icmp ne %struct.irq_affinity* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %77 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %72, %69
  %81 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %82 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.irq_affinity*, %struct.irq_affinity** %9, align 8
  %88 = call i32 @pci_alloc_irq_vectors_affinity(i32 %83, i32 %84, i32 %85, i32 %86, %struct.irq_affinity* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %182

92:                                               ; preds = %80
  %93 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %94 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %96 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %14, align 4
  %98 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %99 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @snprintf(i32 %104, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %105)
  %107 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %108 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @pci_irq_vector(i32 %109, i32 %110)
  %112 = load i32, i32* @vp_config_changed, align 4
  %113 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %114 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %121 = call i32 @request_irq(i32 %111, i32 %112, i32 0, i32 %119, %struct.virtio_pci_device* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %92
  br label %182

125:                                              ; preds = %92
  %126 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %127 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %131 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %130, i32 0, i32 3
  %132 = load i32 (%struct.virtio_pci_device*, i32)*, i32 (%struct.virtio_pci_device*, i32)** %131, align 8
  %133 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 %132(%struct.virtio_pci_device* %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load i32, i32* @EBUSY, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %15, align 4
  br label %182

142:                                              ; preds = %125
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %181, label %145

145:                                              ; preds = %142
  %146 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %147 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %14, align 4
  %149 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %150 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @snprintf(i32 %155, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  %158 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %159 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @pci_irq_vector(i32 %160, i32 %161)
  %163 = load i32, i32* @vp_vring_interrupt, align 4
  %164 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %165 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %172 = call i32 @request_irq(i32 %162, i32 %163, i32 0, i32 %170, %struct.virtio_pci_device* %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %145
  br label %182

176:                                              ; preds = %145
  %177 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %10, align 8
  %178 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add i32 %179, 1
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %176, %142
  store i32 0, i32* %5, align 4
  br label %184

182:                                              ; preds = %175, %139, %124, %91, %64, %48, %37
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %181
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors_affinity(i32, i32, i32, i32, %struct.irq_affinity*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.virtio_pci_device*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
