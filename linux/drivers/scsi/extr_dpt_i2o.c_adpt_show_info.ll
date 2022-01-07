; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__*, i64, i32, %struct.Scsi_Host*, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.adpt_device** }
%struct.adpt_device = type { %struct.adpt_device*, %struct.TYPE_11__*, i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@adpt_configuration_lock = common dso_local global i32 0, align 4
@hba_chain = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Adaptec I2O RAID Driver Version: %s\0A\0A\00", align 1
@DPT_I2O_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"SCSI Host=scsi%d  Control Node=/dev/%s  irq=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\09post fifo size  = %d\0A\09reply fifo size = %d\0A\09sg table size   = %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Devices:\0A\00", align 1
@MAX_CHANNEL = common dso_local global i32 0, align 4
@MAX_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\09%-24.24s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" Rev: %-8.8s\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\09TID=%d, (Channel=%d, Target=%d, Lun=%llu)  (%s)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @adpt_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.adpt_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  %11 = call i32 @mutex_lock(i32* @adpt_configuration_lock)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hba_chain, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %9, align 8
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = icmp eq %struct.Scsi_Host* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %9, align 8
  br label %13

28:                                               ; preds = %22, %13
  %29 = call i32 @mutex_unlock(i32* @adpt_configuration_lock)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %151

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %35, align 8
  store %struct.Scsi_Host* %36, %struct.Scsi_Host** %5, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32, i32* @DPT_I2O_VERSION, align 4
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %47, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53, i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %65, i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %147, %33
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MAX_CHANNEL, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %150

76:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %143, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MAX_ID, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %77
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.adpt_device**, %struct.adpt_device*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.adpt_device*, %struct.adpt_device** %89, i64 %91
  %93 = load %struct.adpt_device*, %struct.adpt_device** %92, align 8
  store %struct.adpt_device* %93, %struct.adpt_device** %6, align 8
  br label %94

94:                                               ; preds = %97, %81
  %95 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %96 = icmp ne %struct.adpt_device* %95, null
  br i1 %96, label %97, label %142

97:                                               ; preds = %94
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %100 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %106 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %107 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %113 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %121 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %125 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %129 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %132 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = call i64 @scsi_device_online(%struct.TYPE_11__* %133)
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %138 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %119, i32 %123, i32 %127, i32 %130, i8* %137)
  %139 = load %struct.adpt_device*, %struct.adpt_device** %6, align 8
  %140 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %139, i32 0, i32 0
  %141 = load %struct.adpt_device*, %struct.adpt_device** %140, align 8
  store %struct.adpt_device* %141, %struct.adpt_device** %6, align 8
  br label %94

142:                                              ; preds = %94
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %77

146:                                              ; preds = %77
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %72

150:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %32
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @scsi_device_online(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
