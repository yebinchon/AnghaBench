; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected card release call.\00", align 1
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"link=0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @nsp_cs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_cs_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @KERN_DEBUG, align 4
  %14 = call i32 @nsp_msg(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %4, align 8
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = call i32 @nsp_dbg(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @scsi_remove_host(%struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @resource_size(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @iounmap(i8* %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %55 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @scsi_host_put(%struct.TYPE_7__* %63)
  br label %65

65:                                               ; preds = %60, %53
  ret void
}

declare dso_local i32 @nsp_msg(i32, i8*) #1

declare dso_local i32 @nsp_dbg(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_7__*) #1

declare dso_local i64 @resource_size(i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
