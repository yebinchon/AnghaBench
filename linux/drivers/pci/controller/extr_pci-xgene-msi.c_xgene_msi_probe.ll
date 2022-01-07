; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_msi = type { %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.xgene_msi* }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }

@xgene_msi_ctrl = common dso_local global %struct.xgene_msi zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"no reg space\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error allocating MSI bitmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate MSI domain\0A\00", align 1
@NR_HW_IRQS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot translate IRQ index %d\0A\00", align 1
@IDX_PER_GROUP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to clear spurious IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPUHP_AP_ONLINE_DYN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"pci/xgene:online\00", align 1
@xgene_msi_hwirq_alloc = common dso_local global i32* null, align 8
@pci_xgene_online = common dso_local global i32 0, align 4
@CPUHP_PCI_XGENE_DEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"pci/xgene:dead\00", align 1
@xgene_msi_hwirq_free = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"APM X-Gene PCIe MSI driver loaded\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to add CPU MSI notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_msi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_msi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xgene_msi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.xgene_msi* @xgene_msi_ctrl, %struct.xgene_msi** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %11, %struct.xgene_msi* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = call i32 @devm_ioremap_resource(%struct.TYPE_6__* %18, %struct.resource* %19)
  %21 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %22 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %24 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %33 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %170

36:                                               ; preds = %1
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %41 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %47 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = call i32 (...) @num_possible_cpus()
  %49 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %50 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %52 = call i32 @xgene_msi_init_allocator(%struct.xgene_msi* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %170

59:                                               ; preds = %36
  %60 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %61 = call i32 @xgene_allocate_domains(%struct.xgene_msi* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %170

68:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %110, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @NR_HW_IRQS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @platform_get_irq(%struct.platform_device* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %5, align 4
  br label %170

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %88 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %96 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %103 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %104 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store %struct.xgene_msi* %102, %struct.xgene_msi** %109, align 8
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %69

113:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %144, %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @NR_HW_IRQS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %114
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %128, %118
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @IDX_PER_GROUP, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @xgene_msi_ir_read(%struct.xgene_msi* %124, i32 %125, i64 %126)
  store i64 %127, i64* %9, align 8
  br label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %10, align 8
  br label %119

131:                                              ; preds = %119
  %132 = load %struct.xgene_msi*, %struct.xgene_msi** %7, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @xgene_msi_int_read(%struct.xgene_msi* %132, i32 %133)
  store i64 %134, i64* %9, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %170

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %114

147:                                              ; preds = %114
  %148 = load i32, i32* @CPUHP_AP_ONLINE_DYN, align 4
  %149 = load i32*, i32** @xgene_msi_hwirq_alloc, align 8
  %150 = call i32 @cpuhp_setup_state(i32 %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %149, i32* null)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %166

154:                                              ; preds = %147
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* @pci_xgene_online, align 4
  %156 = load i32, i32* @CPUHP_PCI_XGENE_DEAD, align 4
  %157 = load i32*, i32** @xgene_msi_hwirq_free, align 8
  %158 = call i32 @cpuhp_setup_state(i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %166

162:                                              ; preds = %154
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @dev_info(%struct.TYPE_6__* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %174

166:                                              ; preds = %161, %153
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %170

170:                                              ; preds = %166, %137, %79, %64, %55, %28
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = call i32 @xgene_msi_remove(%struct.platform_device* %171)
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %162
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_msi*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @xgene_msi_init_allocator(%struct.xgene_msi*) #1

declare dso_local i32 @xgene_allocate_domains(%struct.xgene_msi*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @xgene_msi_ir_read(%struct.xgene_msi*, i32, i64) #1

declare dso_local i64 @xgene_msi_int_read(%struct.xgene_msi*, i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @xgene_msi_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
