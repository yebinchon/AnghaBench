; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_fdomain_cs.c_fdomain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_fdomain_cs.c_fdomain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__**, %struct.Scsi_Host*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@fdomain_config_check = common dso_local global i32 0, align 4
@FDOMAIN_REGION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fdomain_cs\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Controller initialization failed\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @fdomain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %7 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @PRESENT_OPTION, align 4
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = load i32, i32* @fdomain_config_check, align 4
  %18 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %16, i32 %17, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %77

29:                                               ; preds = %23
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FDOMAIN_REGION_SIZE, align 4
  %38 = call i32 @request_region(i32 %36, i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %77

41:                                               ; preds = %29
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 3
  %54 = call %struct.Scsi_Host* @fdomain_create(i32 %48, i32 %51, i32 7, i32* %53)
  store %struct.Scsi_Host* %54, %struct.Scsi_Host** %5, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = icmp ne %struct.Scsi_Host* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %41
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 3
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %41
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 2
  store %struct.Scsi_Host* %64, %struct.Scsi_Host** %66, align 8
  store i32 0, i32* %2, align 4
  br label %81

67:                                               ; preds = %57
  %68 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FDOMAIN_REGION_SIZE, align 4
  %76 = call i32 @release_region(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %67, %40, %28
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %63, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local %struct.Scsi_Host* @fdomain_create(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
