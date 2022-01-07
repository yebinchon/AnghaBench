; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_proc_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_proc_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.ahc_softc = type { i32, i32, i8, i32* }
%struct.seeprom_descriptor = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, %struct.ahc_softc* }
%struct.seeprom_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahc_proc_write_seeprom: incorrect buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ahc_proc_write_seeprom: cksum verification failed\0A\00", align 1
@AHC_VL = common dso_local global i32 0, align 4
@SEECTL_2840 = common dso_local global i8* null, align 8
@STATUS_2840 = common dso_local global i8* null, align 8
@C46 = common dso_local global i8* null, align 8
@EEPROM_TF = common dso_local global i32 0, align 4
@CS_2840 = common dso_local global i32 0, align 4
@CK_2840 = common dso_local global i32 0, align 4
@DO_2840 = common dso_local global i32 0, align 4
@DI_2840 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ahc_proc_write_seeprom: unsupported adapter type\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ahc_proc_write_seeprom: No Serial EEPROM\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"aic7xxx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"aic7xxx: Writing Serial EEPROM\0A\00", align 1
@AHC_LARGE_SEEPROM = common dso_local global i32 0, align 4
@AHC_PCI = common dso_local global i32 0, align 4
@C56_66 = common dso_local global i8* null, align 8
@SEECK = common dso_local global i32 0, align 4
@SEECS = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i8* null, align 8
@SEEDI = common dso_local global i32 0, align 4
@SEEDO = common dso_local global i32 0, align 4
@SEEMS = common dso_local global i64 0, align 8
@SEERDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_proc_write_seeprom(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.seeprom_descriptor, align 8
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
  %17 = inttoptr i64 %16 to %struct.ahc_softc**
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %17, align 8
  store %struct.ahc_softc* %18, %struct.ahc_softc** %7, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %22 = call i32 @ahc_lock(%struct.ahc_softc* %21, i32* %10)
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %24 = call i32 @ahc_is_paused(%struct.ahc_softc* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %29 = call i32 @ahc_pause(%struct.ahc_softc* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %117

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to %struct.seeprom_config*
  %39 = call i32 @ahc_verify_cksum(%struct.seeprom_config* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %117

44:                                               ; preds = %36
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %46 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 10
  store %struct.ahc_softc* %45, %struct.ahc_softc** %46, align 8
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %48 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AHC_VL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %44
  %54 = load i8*, i8** @SEECTL_2840, align 8
  %55 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 9
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @STATUS_2840, align 8
  %57 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @STATUS_2840, align 8
  %59 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 7
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** @C46, align 8
  %61 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 6
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @EEPROM_TF, align 4
  %64 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* @CS_2840, align 4
  %66 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @CK_2840, align 4
  %68 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* @DO_2840, align 4
  %70 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @DI_2840, align 4
  %72 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %9, align 4
  br label %76

74:                                               ; preds = %44
  %75 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %117

76:                                               ; preds = %53
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %117

81:                                               ; preds = %76
  %82 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %83 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call i32* @kmalloc(i32 4, i32 %87)
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %117

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %81
  %99 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %101 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %100, i32 0, i32 2
  %102 = load i8, i8* %101, align 8
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %103, 65
  %105 = mul nsw i32 32, %104
  store i32 %105, i32* %13, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @ahc_write_seeprom(%struct.seeprom_descriptor* %8, i32* %107, i32 %108, i32 2)
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %111 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ahc_read_seeprom(%struct.seeprom_descriptor* %8, i32* %112, i32 %113, i32 2)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %95, %79, %74, %42, %34
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %122 = call i32 @ahc_unpause(%struct.ahc_softc* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %125 = call i32 @ahc_unlock(%struct.ahc_softc* %124, i32* %10)
  %126 = load i32, i32* %12, align 4
  ret i32 %126
}

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @ahc_is_paused(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ahc_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ahc_write_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i32 @ahc_read_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
