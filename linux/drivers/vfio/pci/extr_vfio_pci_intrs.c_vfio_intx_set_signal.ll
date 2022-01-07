; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_intx_set_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_intx_set_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_2__*, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i32, %struct.eventfd_ctx* }
%struct.eventfd_ctx = type { i32 }
%struct.pci_dev = type { i32 }

@IRQF_SHARED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vfio-intx(%s)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vfio_intx_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32)* @vfio_intx_set_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_intx_set_signal(%struct.vfio_pci_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_pci_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.eventfd_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %19, align 8
  %21 = icmp ne %struct.eventfd_ctx* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.vfio_pci_device* %26)
  %28 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %29 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %36 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %39, align 8
  %41 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %40)
  %42 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %43 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %46, align 8
  br label %47

47:                                               ; preds = %22, %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %158

51:                                               ; preds = %47
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = call i32 @pci_name(%struct.pci_dev* %53)
  %55 = call i32 @kasprintf(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %57 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %62 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %158

71:                                               ; preds = %51
  %72 = load i32, i32* %5, align 4
  %73 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %72)
  store %struct.eventfd_ctx* %73, %struct.eventfd_ctx** %8, align 8
  %74 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %75 = call i64 @IS_ERR(%struct.eventfd_ctx* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %79 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @kfree(i32 %83)
  %85 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %86 = call i32 @PTR_ERR(%struct.eventfd_ctx* %85)
  store i32 %86, i32* %3, align 4
  br label %158

87:                                               ; preds = %71
  %88 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %89 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %90 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store %struct.eventfd_ctx* %88, %struct.eventfd_ctx** %93, align 8
  %94 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %95 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %87
  store i64 0, i64* %7, align 8
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @vfio_intx_handler, align 4
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %106 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %112 = call i32 @request_irq(i32 %102, i32 %103, i64 %104, i32 %110, %struct.vfio_pci_device* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %99
  %116 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %117 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %120, align 8
  %121 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %122 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @kfree(i32 %126)
  %128 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %129 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %158

131:                                              ; preds = %99
  %132 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %133 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %132, i32 0, i32 0
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %137 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %131
  %141 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %142 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @disable_irq_nosync(i32 %151)
  br label %153

153:                                              ; preds = %148, %140, %131
  %154 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %155 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %154, i32 0, i32 0
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %115, %77, %68, %50
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @free_irq(i32, %struct.vfio_pci_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.vfio_pci_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
