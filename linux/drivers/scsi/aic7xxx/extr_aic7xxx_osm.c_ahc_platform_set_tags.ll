; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_set_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_set_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_linux_device = type { i32, i32, i32, i64, i32 }

@AHC_DEV_FREEZE_TIL_EMPTY = common dso_local global i32 0, align 4
@AHC_DEV_PERIODIC_OTAG = common dso_local global i32 0, align 4
@aic7xxx_periodic_otag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_platform_set_tags(%struct.ahc_softc* %0, %struct.scsi_device* %1, %struct.ahc_devinfo* %2, i32 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.ahc_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahc_linux_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store %struct.ahc_devinfo* %2, %struct.ahc_devinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = icmp eq %struct.scsi_device* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %144

16:                                               ; preds = %4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = call %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device* %17)
  store %struct.ahc_linux_device* %18, %struct.ahc_linux_device** %9, align 8
  %19 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %20 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 135
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %24 [
    i32 129, label %25
    i32 130, label %26
    i32 128, label %27
  ]

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %16, %24
  store i32 0, i32* %11, align 4
  br label %28

26:                                               ; preds = %16
  store i32 132, i32* %11, align 4
  br label %28

27:                                               ; preds = %16
  store i32 131, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %26, %25
  %29 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %30 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AHC_DEV_FREEZE_TIL_EMPTY, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %41 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @AHC_DEV_FREEZE_TIL_EMPTY, align 4
  %46 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %47 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %51 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %39, %35, %28
  %55 = load i32, i32* @AHC_DEV_PERIODIC_OTAG, align 4
  %56 = or i32 135, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %59 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %54
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %66 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %67 = call i64 @ahc_linux_user_tagdepth(%struct.ahc_softc* %65, %struct.ahc_devinfo* %66)
  store i64 %67, i64* %12, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %73 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %75 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %78 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %76, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %84 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %70, %64
  %86 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %87 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %92 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %116

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %98 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, 131
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* @aic7xxx_periodic_otag, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @AHC_DEV_PERIODIC_OTAG, align 4
  %105 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %106 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %96
  br label %115

110:                                              ; preds = %93
  %111 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %112 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, 132
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %110, %109
  br label %116

116:                                              ; preds = %115, %90
  br label %126

117:                                              ; preds = %54
  %118 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %119 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %121 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 1, %122
  %124 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %125 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %117, %116
  %127 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %128 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 135
  switch i32 %130, label %141 [
    i32 132, label %131
    i32 131, label %131
  ]

131:                                              ; preds = %126, %126
  %132 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %133 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %134 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %9, align 8
  %137 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %132, i32 %139)
  br label %144

141:                                              ; preds = %126
  %142 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %143 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %142, i32 2)
  br label %144

144:                                              ; preds = %15, %141, %131
  ret void
}

declare dso_local %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device*) #1

declare dso_local i64 @ahc_linux_user_tagdepth(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
