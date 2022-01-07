; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_proc_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_proc_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.ahd_softc = type { i8, i32* }
%struct.seeprom_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahd_proc_write_seeprom: incorrect buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ahd_proc_write_seeprom: cksum verification failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ahd_proc_write_seeprom: No Serial EEPROM\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"aic79xx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"aic79xx: Writing Serial EEPROM\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_proc_write_seeprom(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ahd_softc**
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %17, align 8
  store %struct.ahd_softc* %18, %struct.ahd_softc** %7, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %22 = call i32 @ahd_lock(%struct.ahd_softc* %21, i32* %10)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %24 = call i32 @ahd_is_paused(%struct.ahd_softc* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %29 = call i32 @ahd_pause(%struct.ahd_softc* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %32 = call i32 @ahd_save_modes(%struct.ahd_softc* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %34 = load i32, i32* @AHD_MODE_SCSI, align 4
  %35 = load i32, i32* @AHD_MODE_SCSI, align 4
  %36 = call i32 @ahd_set_modes(%struct.ahd_softc* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %98

42:                                               ; preds = %30
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to %struct.seeprom_config*
  %45 = call i32 @ahd_verify_cksum(%struct.seeprom_config* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %98

50:                                               ; preds = %42
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %52 = call i32 @ahd_acquire_seeprom(%struct.ahd_softc* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %98

57:                                               ; preds = %50
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %59 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32* @kmalloc(i32 4, i32 %63)
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %66 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %68 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %98

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %57
  %75 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %77 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = sub nsw i32 %79, 65
  %81 = mul nsw i32 32, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @ahd_write_seeprom(%struct.ahd_softc* %82, i32* %84, i32 %85, i32 2)
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %89 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @ahd_read_seeprom(%struct.ahd_softc* %87, i32* %90, i32 %91, i32 2, i32 %92)
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %95 = call i32 @ahd_release_seeprom(%struct.ahd_softc* %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97, %71, %55, %48, %40
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ahd_restore_modes(%struct.ahd_softc* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %106 = call i32 @ahd_unpause(%struct.ahd_softc* %105)
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %109 = call i32 @ahd_unlock(%struct.ahd_softc* %108, i32* %10)
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i32*) #1

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ahd_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32 @ahd_acquire_seeprom(%struct.ahd_softc*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ahd_write_seeprom(%struct.ahd_softc*, i32*, i32, i32) #1

declare dso_local i32 @ahd_read_seeprom(%struct.ahd_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @ahd_release_seeprom(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
