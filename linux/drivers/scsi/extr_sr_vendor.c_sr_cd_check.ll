; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_vendor.c_sr_cd_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_vendor.c_sr_cd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.packet_command = type { i32*, i8*, i32, i32, i8*, i8* }

@CDC_MULTI_SESSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_TOC = common dso_local global i8* null, align 8
@DMA_FROM_DEVICE = common dso_local global i8* null, align 8
@VENDOR_TIMEOUT = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Hmm, seems the drive doesn't support multisession CD's\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unknown vendor code (%i), not initialized ?\0A\00", align 1
@CDS_AUDIO = common dso_local global i64 0, align 8
@CD_FRAMES = common dso_local global i64 0, align 8
@CD_MSF_OFFSET = common dso_local global i64 0, align 8
@CD_SECS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_cd_check(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CDC_MULTI_SESSION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @GFP_DMA, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @kmalloc(i32 512, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %155

31:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %32 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 40)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %108 [
    i32 130, label %36
  ]

36:                                               ; preds = %31
  %37 = load i8*, i8** @READ_TOC, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 12, i32* %44, align 4
  %45 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  store i32 64, i32* %47, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 12, i32* %50, align 8
  %51 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load i8*, i8** @DMA_FROM_DEVICE, align 8
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 5
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @VENDOR_TIMEOUT, align 8
  %55 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 4
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = call i32 @sr_do_ioctl(%struct.TYPE_10__* %56, %struct.packet_command* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %115

61:                                               ; preds = %36
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 (i32, %struct.TYPE_10__*, i8*, ...) @sr_printk(i32 %74, %struct.TYPE_10__* %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %115

77:                                               ; preds = %61
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 11
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 10
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = add nsw i32 %81, %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 9
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = add nsw i32 %87, %92
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 24
  %99 = add nsw i32 %93, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 6
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %77
  store i64 0, i64* %5, align 8
  br label %107

107:                                              ; preds = %106, %77
  br label %115

108:                                              ; preds = %31
  %109 = load i32, i32* @KERN_WARNING, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, %struct.TYPE_10__*, i8*, ...) @sr_printk(i32 %109, %struct.TYPE_10__* %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %108, %107, %73, %60
  %116 = load i64, i64* %5, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  store i32 0, i32* %120, align 8
  %121 = load i64, i64* @CDS_AUDIO, align 8
  %122 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %123 = call i64 @sr_disk_status(%struct.cdrom_device_info* %122)
  %124 = icmp ne i64 %121, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = call i32 @sr_is_xa(%struct.TYPE_10__* %126)
  %128 = icmp eq i32 1, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %125, %115
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 2048, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = call i32 @sr_set_blocklength(%struct.TYPE_10__* %140, i32 2048)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* @CDC_MULTI_SESSION, align 4
  %147 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %148 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %28, %20
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.TYPE_10__*, %struct.packet_command*) #1

declare dso_local i32 @sr_printk(i32, %struct.TYPE_10__*, i8*, ...) #1

declare dso_local i64 @sr_disk_status(%struct.cdrom_device_info*) #1

declare dso_local i32 @sr_is_xa(%struct.TYPE_10__*) #1

declare dso_local i32 @sr_set_blocklength(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
