; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.scsi_info_t*, i32 }
%struct.scsi_info_t = type { %struct.pcmcia_device* }

@.str = private unnamed_addr constant [20 x i8] c"SYM53C500_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @SYM53C500_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYM53C500_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.scsi_info_t*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 2
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.scsi_info_t* @kzalloc(i32 8, i32 %8)
  store %struct.scsi_info_t* %9, %struct.scsi_info_t** %4, align 8
  %10 = load %struct.scsi_info_t*, %struct.scsi_info_t** %4, align 8
  %11 = icmp ne %struct.scsi_info_t* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = load %struct.scsi_info_t*, %struct.scsi_info_t** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %17, i32 0, i32 0
  store %struct.pcmcia_device* %16, %struct.pcmcia_device** %18, align 8
  %19 = load %struct.scsi_info_t*, %struct.scsi_info_t** %4, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 1
  store %struct.scsi_info_t* %19, %struct.scsi_info_t** %21, align 8
  %22 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %23 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = call i32 @SYM53C500_config(%struct.pcmcia_device* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.scsi_info_t* @kzalloc(i32, i32) #1

declare dso_local i32 @SYM53C500_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
