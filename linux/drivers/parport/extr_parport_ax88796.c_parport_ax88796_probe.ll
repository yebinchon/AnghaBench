; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ax_drvdata = type { i32, %struct.TYPE_2__*, i32*, i32*, i32*, i32*, %struct.device*, %struct.parport* }
%struct.TYPE_2__ = type { i32 }
%struct.parport = type { %struct.ax_drvdata* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no MEM specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot reserve memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot ioremap region\0A\00", align 1
@PARPORT_IRQ_NONE = common dso_local global i32 0, align 4
@PARPORT_DMA_NONE = common dso_local global i32 0, align 4
@parport_ax88796_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to register parallel port\0A\00", align 1
@AX_CPR_STRB = common dso_local global i32 0, align 4
@parport_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"attached parallel port driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @parport_ax88796_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ax88796_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ax_drvdata*, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ax_drvdata* @kzalloc(i32 64, i32 %14)
  store %struct.ax_drvdata* %15, %struct.ax_drvdata** %5, align 8
  %16 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %17 = icmp ne %struct.ax_drvdata* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %179

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %175

32:                                               ; preds = %21
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = call i64 @resource_size(%struct.resource* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = udiv i64 %35, 3
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_2__* @request_mem_region(i32 %40, i64 %41, i32 %44)
  %46 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %47 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %46, i32 0, i32 1
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %49 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp eq %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %175

57:                                               ; preds = %32
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32* @ioremap(i32 %60, i64 %61)
  %63 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %64 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %66 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %167

74:                                               ; preds = %57
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @PARPORT_IRQ_NONE, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %83 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = ptrtoint i32* %84 to i64
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PARPORT_DMA_NONE, align 4
  %88 = call %struct.parport* @parport_register_port(i64 %85, i32 %86, i32 %87, i32* @parport_ax88796_ops)
  store %struct.parport* %88, %struct.parport** %6, align 8
  %89 = load %struct.parport*, %struct.parport** %6, align 8
  %90 = icmp eq %struct.parport* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %162

96:                                               ; preds = %81
  %97 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %98 = load %struct.parport*, %struct.parport** %6, align 8
  %99 = getelementptr inbounds %struct.parport, %struct.parport* %98, i32 0, i32 0
  store %struct.ax_drvdata* %97, %struct.ax_drvdata** %99, align 8
  %100 = load %struct.parport*, %struct.parport** %6, align 8
  %101 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %102 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %101, i32 0, i32 7
  store %struct.parport* %100, %struct.parport** %102, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %105 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %104, i32 0, i32 6
  store %struct.device* %103, %struct.device** %105, align 8
  %106 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %107 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %110 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  %111 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %112 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %119 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %118, i32 0, i32 4
  store i32* %117, i32** %119, align 8
  %120 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %121 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %128 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %127, i32 0, i32 3
  store i32* %126, i32** %128, align 8
  %129 = load i32, i32* @AX_CPR_STRB, align 4
  %130 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %131 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @writeb(i32 %129, i32* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %96
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @parport_irq_handler, align 4
  %139 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.parport*, %struct.parport** %6, align 8
  %144 = call i32 @request_irq(i32 %137, i32 %138, i32 %139, i32 %142, %struct.parport* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %159

148:                                              ; preds = %136
  %149 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %150 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %96
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.parport*, %struct.parport** %6, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %152, %struct.parport* %153)
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @dev_info(%struct.device* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.parport*, %struct.parport** %6, align 8
  %158 = call i32 @parport_announce_port(%struct.parport* %157)
  store i32 0, i32* %2, align 4
  br label %179

159:                                              ; preds = %147
  %160 = load %struct.parport*, %struct.parport** %6, align 8
  %161 = call i32 @parport_remove_port(%struct.parport* %160)
  br label %162

162:                                              ; preds = %159, %91
  %163 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %164 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @iounmap(i32* %165)
  br label %167

167:                                              ; preds = %162, %69
  %168 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %169 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %8, align 8
  %174 = call i32 @release_mem_region(i32 %172, i64 %173)
  br label %175

175:                                              ; preds = %167, %52, %27
  %176 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %177 = call i32 @kfree(%struct.ax_drvdata* %176)
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %175, %151, %18
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.ax_drvdata* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local %struct.TYPE_2__* @request_mem_region(i32, i64, i32) #1

declare dso_local i32* @ioremap(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.parport* @parport_register_port(i64, i32, i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.parport*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.parport*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @parport_announce_port(%struct.parport*) #1

declare dso_local i32 @parport_remove_port(%struct.parport*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local i32 @kfree(%struct.ax_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
