; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_tocentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_tocentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32 }
%struct.cdrom_tocentry = type { i64, i32, i8, i8, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i8, i8 }
%struct.packet_command = type { i32*, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@GPCMD_READ_TOC_PMA_ATIP = common dso_local global i32 0, align 4
@CDROM_MSF = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_tocentry*)* @sr_read_tocentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_read_tocentry(%struct.cdrom_device_info* %0, %struct.cdrom_tocentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_tocentry*, align 8
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_tocentry* %1, %struct.cdrom_tocentry** %5, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.scsi_cd*, %struct.scsi_cd** %11, align 8
  store %struct.scsi_cd* %12, %struct.scsi_cd** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %15 = call i32 @SR_GFP_DMA(%struct.scsi_cd* %14)
  %16 = or i32 %13, %15
  %17 = call i8* @kmalloc(i32 32, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %143

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 32)
  %25 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @GPCMD_READ_TOC_PMA_ATIP, align 4
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %32 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CDROM_MSF, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 0
  %38 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %44 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32 12, i32* %51, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 12, i32* %54, align 8
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %58 = call i32 @sr_do_ioctl(%struct.scsi_cd* %57, %struct.packet_command* %7)
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 15
  %64 = trunc i32 %63 to i8
  %65 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %66 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %65, i32 0, i32 2
  store i8 %64, i8* %66, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %74 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %73, i32 0, i32 3
  store i8 %72, i8* %74, align 1
  %75 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %76 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %84 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %86 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CDROM_MSF, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %23
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 9
  %93 = load i8, i8* %92, align 1
  %94 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %95 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i8 %93, i8* %97, align 1
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 10
  %100 = load i8, i8* %99, align 1
  %101 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %102 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8 %100, i8* %104, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 11
  %107 = load i8, i8* %106, align 1
  %108 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %109 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i8 %107, i8* %111, align 1
  br label %139

112:                                              ; preds = %23
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 9
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %117, %121
  %123 = shl i32 %122, 8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 10
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %123, %127
  %129 = shl i32 %128, 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 11
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nsw i32 %129, %133
  %135 = trunc i32 %134 to i8
  %136 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %5, align 8
  %137 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8 %135, i8* %138, align 4
  br label %139

139:                                              ; preds = %112, %90
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @kfree(i8* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %20
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @SR_GFP_DMA(%struct.scsi_cd*) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.scsi_cd*, %struct.packet_command*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
