; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.myrs_pdev_info*, i32, i32, i32, %struct.TYPE_4__* }
%struct.myrs_pdev_info = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.myrs_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.myrs_ldev_info = type { i32, i64, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"Logical device mapping %d:%d:%d -> %d\0A\00", align 1
@RAID_LEVEL_LINEAR = common dso_local global i32 0, align 4
@RAID_LEVEL_1 = common dso_local global i32 0, align 4
@RAID_LEVEL_3 = common dso_local global i32 0, align 4
@RAID_LEVEL_5 = common dso_local global i32 0, align 4
@RAID_LEVEL_6 = common dso_local global i32 0, align 4
@RAID_LEVEL_JBOD = common dso_local global i32 0, align 4
@RAID_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@myrs_raid_template = common dso_local global i32 0, align 4
@MYRS_DEVICE_ONLINE = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"logical device in state %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @myrs_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrs_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.myrs_ldev_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.myrs_pdev_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call %struct.myrs_hba* @shost_priv(%struct.TYPE_4__* %13)
  store %struct.myrs_hba* %14, %struct.myrs_hba** %4, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %181

25:                                               ; preds = %1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %30 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %141

35:                                               ; preds = %25
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %181

43:                                               ; preds = %35
  %44 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %46 = call zeroext i16 @myrs_translate_ldev(%struct.myrs_hba* %44, %struct.scsi_device* %45)
  store i16 %46, i16* %7, align 2
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* @GFP_DMA, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.myrs_pdev_info* @kzalloc(i32 32, i32 %49)
  %51 = bitcast %struct.myrs_pdev_info* %50 to %struct.myrs_ldev_info*
  store %struct.myrs_ldev_info* %51, %struct.myrs_ldev_info** %6, align 8
  %52 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %53 = icmp ne %struct.myrs_ldev_info* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %181

57:                                               ; preds = %43
  %58 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %59 = load i16, i16* %7, align 2
  %60 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %61 = bitcast %struct.myrs_ldev_info* %60 to %struct.myrs_pdev_info*
  %62 = call zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba* %58, i16 zeroext %59, %struct.myrs_pdev_info* %61)
  store i8 %62, i8* %5, align 1
  %63 = load i8, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 1
  store %struct.myrs_pdev_info* null, %struct.myrs_pdev_info** %70, align 8
  %71 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %72 = bitcast %struct.myrs_ldev_info* %71 to %struct.myrs_pdev_info*
  %73 = call i32 @kfree(%struct.myrs_pdev_info* %72)
  br label %140

74:                                               ; preds = %57
  %75 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %75, i32 0, i32 4
  %77 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %78 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %81 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %84 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %87 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %91 = bitcast %struct.myrs_ldev_info* %90 to %struct.myrs_pdev_info*
  %92 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %92, i32 0, i32 1
  store %struct.myrs_pdev_info* %91, %struct.myrs_pdev_info** %93, align 8
  %94 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %95 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %111 [
    i32 138, label %97
    i32 137, label %99
    i32 136, label %101
    i32 135, label %101
    i32 134, label %101
    i32 133, label %103
    i32 132, label %103
    i32 131, label %105
    i32 130, label %107
    i32 129, label %107
    i32 128, label %107
    i32 139, label %109
  ]

97:                                               ; preds = %74
  %98 = load i32, i32* @RAID_LEVEL_LINEAR, align 4
  store i32 %98, i32* %8, align 4
  br label %113

99:                                               ; preds = %74
  %100 = load i32, i32* @RAID_LEVEL_1, align 4
  store i32 %100, i32* %8, align 4
  br label %113

101:                                              ; preds = %74, %74, %74
  %102 = load i32, i32* @RAID_LEVEL_3, align 4
  store i32 %102, i32* %8, align 4
  br label %113

103:                                              ; preds = %74, %74
  %104 = load i32, i32* @RAID_LEVEL_5, align 4
  store i32 %104, i32* %8, align 4
  br label %113

105:                                              ; preds = %74
  %106 = load i32, i32* @RAID_LEVEL_6, align 4
  store i32 %106, i32* %8, align 4
  br label %113

107:                                              ; preds = %74, %74, %74
  %108 = load i32, i32* @RAID_LEVEL_LINEAR, align 4
  store i32 %108, i32* %8, align 4
  br label %113

109:                                              ; preds = %74
  %110 = load i32, i32* @RAID_LEVEL_JBOD, align 4
  store i32 %110, i32* %8, align 4
  br label %113

111:                                              ; preds = %74
  %112 = load i32, i32* @RAID_LEVEL_UNKNOWN, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %111, %109, %107, %105, %103, %101, %99, %97
  %114 = load i32, i32* @myrs_raid_template, align 4
  %115 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %116 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %115, i32 0, i32 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @raid_set_level(i32 %114, i32* %116, i32 %117)
  %119 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %120 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MYRS_DEVICE_ONLINE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %113
  %125 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %6, align 8
  %126 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i8* @myrs_devstate_name(i64 %127)
  store i8* %128, i8** %9, align 8
  %129 = load i32, i32* @KERN_DEBUG, align 4
  %130 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i8*, i8** %9, align 8
  br label %136

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i8* [ %134, %133 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %135 ]
  %138 = call i32 @sdev_printk(i32 %129, %struct.scsi_device* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136, %113
  br label %140

140:                                              ; preds = %139, %68
  br label %180

141:                                              ; preds = %25
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = load i32, i32* @GFP_DMA, align 4
  %144 = or i32 %142, %143
  %145 = call %struct.myrs_pdev_info* @kzalloc(i32 32, i32 %144)
  store %struct.myrs_pdev_info* %145, %struct.myrs_pdev_info** %10, align 8
  %146 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %10, align 8
  %147 = icmp ne %struct.myrs_pdev_info* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %181

151:                                              ; preds = %141
  %152 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %153 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %154 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %157 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %160 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %10, align 8
  %163 = call zeroext i8 @myrs_get_pdev_info(%struct.myrs_hba* %152, i64 %155, i32 %158, i32 %161, %struct.myrs_pdev_info* %162)
  store i8 %163, i8* %5, align 1
  %164 = load i8, i8* %5, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %151
  %170 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %171 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %170, i32 0, i32 1
  store %struct.myrs_pdev_info* null, %struct.myrs_pdev_info** %171, align 8
  %172 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %10, align 8
  %173 = call i32 @kfree(%struct.myrs_pdev_info* %172)
  %174 = load i32, i32* @ENXIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %181

176:                                              ; preds = %151
  %177 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %10, align 8
  %178 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %179 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %178, i32 0, i32 1
  store %struct.myrs_pdev_info* %177, %struct.myrs_pdev_info** %179, align 8
  br label %180

180:                                              ; preds = %176, %140
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %169, %148, %54, %40, %24
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.myrs_hba* @shost_priv(%struct.TYPE_4__*) #1

declare dso_local zeroext i16 @myrs_translate_ldev(%struct.myrs_hba*, %struct.scsi_device*) #1

declare dso_local %struct.myrs_pdev_info* @kzalloc(i32, i32) #1

declare dso_local zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba*, i16 zeroext, %struct.myrs_pdev_info*) #1

declare dso_local i32 @kfree(%struct.myrs_pdev_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @raid_set_level(i32, i32*, i32) #1

declare dso_local i8* @myrs_devstate_name(i64) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i8*) #1

declare dso_local zeroext i8 @myrs_get_pdev_info(%struct.myrs_hba*, i64, i32, i32, %struct.myrs_pdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
