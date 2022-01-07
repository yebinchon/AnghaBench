; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3x_esp.c_esp_sun3x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3x_esp.c_esp_sun3x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }
%struct.platform_device = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32 }
%struct.esp = type { i32, i32, i32, i8*, i8*, i32, i32, i32*, %struct.Scsi_Host*, i32* }
%struct.resource = type { i32 }

@scsi_esp_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sun3x_esp_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@scsi_esp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"SUN3X ESP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esp_sun3x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sun3x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.esp*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.scsi_host_template* @scsi_esp_template, %struct.scsi_host_template** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %12 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %11, i32 64)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %14 = icmp ne %struct.Scsi_Host* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %159

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  store i32 8, i32* %18, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = call %struct.esp* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.esp* %20, %struct.esp** %6, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = load %struct.esp*, %struct.esp** %6, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 8
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.esp*, %struct.esp** %6, align 8
  %27 = getelementptr inbounds %struct.esp, %struct.esp* %26, i32 0, i32 7
  store i32* %25, i32** %27, align 8
  %28 = load %struct.esp*, %struct.esp** %6, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 9
  store i32* @sun3x_esp_ops, i32** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %16
  br label %156

41:                                               ; preds = %35
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ioremap_nocache(i32 %44, i32 32)
  %46 = load %struct.esp*, %struct.esp** %6, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.esp*, %struct.esp** %6, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %151

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 1)
  store %struct.resource* %56, %struct.resource** %7, align 8
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %53
  br label %151

65:                                               ; preds = %59
  %66 = load %struct.resource*, %struct.resource** %7, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @ioremap_nocache(i32 %68, i32 16)
  %70 = load %struct.esp*, %struct.esp** %6, align 8
  %71 = getelementptr inbounds %struct.esp, %struct.esp* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.esp*, %struct.esp** %6, align 8
  %73 = getelementptr inbounds %struct.esp, %struct.esp* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.esp*, %struct.esp** %6, align 8
  %76 = getelementptr inbounds %struct.esp, %struct.esp* %75, i32 0, i32 5
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @dma_alloc_coherent(i32* %74, i32 16, i32* %76, i32 %77)
  %79 = load %struct.esp*, %struct.esp** %6, align 8
  %80 = getelementptr inbounds %struct.esp, %struct.esp* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.esp*, %struct.esp** %6, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %65
  br label %146

86:                                               ; preds = %65
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @scsi_esp_intr, align 4
  %95 = load i32, i32* @IRQF_SHARED, align 4
  %96 = load %struct.esp*, %struct.esp** %6, align 8
  %97 = call i32 @request_irq(i32 %93, i32 %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.esp* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %135

101:                                              ; preds = %86
  %102 = load %struct.esp*, %struct.esp** %6, align 8
  %103 = getelementptr inbounds %struct.esp, %struct.esp* %102, i32 0, i32 0
  store i32 7, i32* %103, align 8
  %104 = load %struct.esp*, %struct.esp** %6, align 8
  %105 = getelementptr inbounds %struct.esp, %struct.esp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.esp*, %struct.esp** %6, align 8
  %108 = getelementptr inbounds %struct.esp, %struct.esp* %107, i32 0, i32 8
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %108, align 8
  %110 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.esp*, %struct.esp** %6, align 8
  %112 = getelementptr inbounds %struct.esp, %struct.esp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 1, %113
  %115 = load %struct.esp*, %struct.esp** %6, align 8
  %116 = getelementptr inbounds %struct.esp, %struct.esp* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.esp*, %struct.esp** %6, align 8
  %118 = getelementptr inbounds %struct.esp, %struct.esp* %117, i32 0, i32 2
  store i32 20000000, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.esp*, %struct.esp** %6, align 8
  %122 = call i32 @dev_set_drvdata(i32* %120, %struct.esp* %121)
  %123 = load %struct.esp*, %struct.esp** %6, align 8
  %124 = call i32 @scsi_esp_register(%struct.esp* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %101
  br label %129

128:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %161

129:                                              ; preds = %127
  %130 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %131 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.esp*, %struct.esp** %6, align 8
  %134 = call i32 @free_irq(i32 %132, %struct.esp* %133)
  br label %135

135:                                              ; preds = %129, %100
  %136 = load %struct.esp*, %struct.esp** %6, align 8
  %137 = getelementptr inbounds %struct.esp, %struct.esp* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.esp*, %struct.esp** %6, align 8
  %140 = getelementptr inbounds %struct.esp, %struct.esp* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.esp*, %struct.esp** %6, align 8
  %143 = getelementptr inbounds %struct.esp, %struct.esp* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dma_free_coherent(i32* %138, i32 16, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %135, %85
  %147 = load %struct.esp*, %struct.esp** %6, align 8
  %148 = getelementptr inbounds %struct.esp, %struct.esp* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @iounmap(i8* %149)
  br label %151

151:                                              ; preds = %146, %64, %52
  %152 = load %struct.esp*, %struct.esp** %6, align 8
  %153 = getelementptr inbounds %struct.esp, %struct.esp* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @iounmap(i8* %154)
  br label %156

156:                                              ; preds = %151, %40
  %157 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %158 = call i32 @scsi_host_put(%struct.Scsi_Host* %157)
  br label %159

159:                                              ; preds = %156, %15
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %128
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.esp* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.esp*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.esp*) #1

declare dso_local i32 @scsi_esp_register(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
