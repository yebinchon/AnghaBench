; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_device_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_device_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ahc_devinfo = type { i32, i32, i32 }
%struct.ahc_softc = type { i32, i32 }

@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHC_QUEUE_TAGGED = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Tagged Queuing enabled.  Depth %d\0A\00", align 1
@AHC_QUEUE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @ahc_linux_device_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_device_queue_depth(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ahc_devinfo, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ahc_softc**
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %11, align 8
  store %struct.ahc_softc* %12, %struct.ahc_softc** %5, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %22, %19 ], [ %26, %23 ]
  %29 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 65, i32 66
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* @ROLE_INITIATOR, align 4
  %47 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %3, i32 %28, i32 %33, i32 %36, i8 signext %45, i32 %46)
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %49 = call i64 @ahc_linux_user_tagdepth(%struct.ahc_softc* %48, %struct.ahc_devinfo* %3)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %27
  %53 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %60 = load i32, i32* @AHC_QUEUE_TAGGED, align 4
  %61 = call i32 @ahc_platform_set_tags(%struct.ahc_softc* %58, %struct.scsi_device* %59, %struct.ahc_devinfo* %3, i32 %60)
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %70 = call i32 @ahc_send_async(%struct.ahc_softc* %62, i32 %64, i32 %66, i32 %68, i32 %69)
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %72 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %71, %struct.ahc_devinfo* %3)
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %89

75:                                               ; preds = %52, %27
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %77 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %78 = load i32, i32* @AHC_QUEUE_NONE, align 4
  %79 = call i32 @ahc_platform_set_tags(%struct.ahc_softc* %76, %struct.scsi_device* %77, %struct.ahc_devinfo* %3, i32 %78)
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %3, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %88 = call i32 @ahc_send_async(%struct.ahc_softc* %80, i32 %82, i32 %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %75, %57
  ret void
}

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i64 @ahc_linux_user_tagdepth(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_platform_set_tags(%struct.ahc_softc*, %struct.scsi_device*, %struct.ahc_devinfo*, i32) #1

declare dso_local i32 @ahc_send_async(%struct.ahc_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_print_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
