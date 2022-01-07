; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.pcmcia_device = type { i32, i32, %struct.TYPE_9__**, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@nsp_data_base = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_CHECK_VCC = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@CONF_AUTO_AUDIO = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IOMEM = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@nsp_cs_config_check = common dso_local global i32 0, align 4
@nspintr = common dso_local global i32 0, align 4
@free_ports = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"I/O[0x%x+0x%x] IRQ %d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@nsp_driver_template = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"detect failed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"config fail\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nsp_cs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_cs_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* @nsp_data_base, %struct.TYPE_8__** %7, align 8
  %11 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %12 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %14 = load i32, i32* @CONF_AUTO_CHECK_VCC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CONF_AUTO_AUDIO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CONF_AUTO_SET_IOMEM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = load i32, i32* @nsp_cs_config_check, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %28, i32 %29, %struct.TYPE_8__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %153

35:                                               ; preds = %1
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = load i32, i32* @nspintr, align 4
  %38 = call i64 @pcmcia_request_irq(%struct.pcmcia_device* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %153

41:                                               ; preds = %35
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %153

47:                                               ; preds = %41
  %48 = load i64, i64* @free_ports, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %67, i64 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @resource_size(%struct.TYPE_9__* %69)
  %71 = call i32 @release_region(i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %57, %50
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %88 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %89, i64 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call i32 @resource_size(%struct.TYPE_9__* %91)
  %93 = call i32 @release_region(i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %79, %72
  br label %95

95:                                               ; preds = %94, %47
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %106 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %105, i32 0, i32 2
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 @resource_size(%struct.TYPE_9__* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %124, i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = call i64 @nsphw_init(%struct.TYPE_8__* %129)
  %131 = load i64, i64* @FALSE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %95
  br label %153

134:                                              ; preds = %95
  %135 = call %struct.Scsi_Host* @nsp_detect(i32* @nsp_driver_template)
  store %struct.Scsi_Host* %135, %struct.Scsi_Host** %6, align 8
  %136 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %137 = icmp eq %struct.Scsi_Host* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %140 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %153

141:                                              ; preds = %134
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %143 = call i32 @scsi_add_host(%struct.Scsi_Host* %142, i32* null)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %153

147:                                              ; preds = %141
  %148 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %149 = call i32 @scsi_scan_host(%struct.Scsi_Host* %148)
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store %struct.Scsi_Host* %150, %struct.Scsi_Host** %152, align 8
  store i32 0, i32* %2, align 4
  br label %160

153:                                              ; preds = %146, %138, %133, %46, %40, %34
  %154 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %155 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %156 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %157 = call i32 @nsp_cs_release(%struct.pcmcia_device* %156)
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %153, %147
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_9__*) #1

declare dso_local i64 @nsphw_init(%struct.TYPE_8__*) #1

declare dso_local %struct.Scsi_Host* @nsp_detect(i32*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @nsp_cs_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
