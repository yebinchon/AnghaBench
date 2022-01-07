; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.packet_command = type { i32, i32, i32, i32, i32, i32, i32, %struct.scsi_sense_hdr* }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IOCTL_RETRIES = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"disc change detected.\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CDROM not ready yet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"CDROM not ready.  Make sure there is a disc in the drive.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_do_ioctl(%struct.TYPE_4__* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_sense_hdr, align 4
  %7 = alloca %struct.scsi_sense_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  store %struct.scsi_sense_hdr* %6, %struct.scsi_sense_hdr** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %5, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 7
  %16 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %17 = icmp ne %struct.scsi_sense_hdr* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %19, i32 0, i32 7
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %20, align 8
  store %struct.scsi_sense_hdr* %21, %struct.scsi_sense_hdr** %7, align 8
  br label %22

22:                                               ; preds = %18, %2
  br label %23

23:                                               ; preds = %99, %72, %22
  %24 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %25 = call i32 @scsi_block_when_processing_errors(%struct.scsi_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %137

30:                                               ; preds = %23
  %31 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %32 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %33 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %36 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %45 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %46 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IOCTL_RETRIES, align 4
  %49 = call i32 @scsi_execute(%struct.scsi_device* %31, i32 %34, i32 %37, i32 %40, i32 %43, i32* null, %struct.scsi_sense_hdr* %44, i32 %47, i32 %48, i32 0, i32 0, i32* null)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @driver_byte(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %136

53:                                               ; preds = %30
  %54 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %132 [
    i32 128, label %57
    i32 129, label %76
    i32 130, label %116
  ]

57:                                               ; preds = %53
  %58 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %61 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = call i32 @sr_printk(i32 %65, %struct.TYPE_4__* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = icmp slt i32 %69, 10
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %23

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEDIUM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %135

76:                                               ; preds = %53
  %77 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %88 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @KERN_INFO, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = call i32 @sr_printk(i32 %92, %struct.TYPE_4__* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = icmp slt i32 %96, 10
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @ssleep(i32 2)
  br label %23

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOMEDIUM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %135

104:                                              ; preds = %81, %76
  %105 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %106 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = call i32 @sr_printk(i32 %110, %struct.TYPE_4__* %111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* @ENOMEDIUM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %135

116:                                              ; preds = %53
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  %119 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %120 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %125 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %123, %116
  br label %135

132:                                              ; preds = %53
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %132, %131, %113, %101, %73
  br label %136

136:                                              ; preds = %135, %30
  br label %137

137:                                              ; preds = %136, %27
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %140 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i32, i32, i32, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @sr_printk(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
