; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.pcmcia_device* }
%struct.pcmcia_device = type { %struct.pcmcia_device*, %struct.pcmcia_device* }

@nsp_data_base = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"info=0x%p\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"link=0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nsp_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store %struct.TYPE_3__* @nsp_data_base, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %8 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pcmcia_device* @kzalloc(i32 16, i32 %9)
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %12 = icmp eq %struct.pcmcia_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 1
  store %struct.pcmcia_device* %17, %struct.pcmcia_device** %19, align 8
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 0
  store %struct.pcmcia_device* %20, %struct.pcmcia_device** %22, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.pcmcia_device* %23, %struct.pcmcia_device** %25, align 8
  %26 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %28 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %27)
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = call i32 @nsp_cs_config(%struct.pcmcia_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.pcmcia_device* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local %struct.pcmcia_device* @kzalloc(i32, i32) #1

declare dso_local i32 @nsp_cs_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
