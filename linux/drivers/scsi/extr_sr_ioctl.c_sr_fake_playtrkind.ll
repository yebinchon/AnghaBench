; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_fake_playtrkind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_fake_playtrkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }
%struct.cdrom_ti = type { i32, i32 }
%struct.cdrom_tocentry = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cdrom_tochdr = type { i32, i32 }
%struct.packet_command = type { i32, i32, i32* }

@CDROM_LEADOUT = common dso_local global i32 0, align 4
@CDROM_MSF = common dso_local global i8* null, align 8
@GPCMD_PLAY_AUDIO_MSF = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_ti*)* @sr_fake_playtrkind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_fake_playtrkind(%struct.cdrom_device_info* %0, %struct.cdrom_ti* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_ti*, align 8
  %6 = alloca %struct.cdrom_tocentry, align 8
  %7 = alloca %struct.cdrom_tocentry, align 8
  %8 = alloca %struct.cdrom_tochdr, align 4
  %9 = alloca %struct.packet_command, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_ti* %1, %struct.cdrom_ti** %5, align 8
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %13 = call i32 @sr_read_tochdr(%struct.cdrom_device_info* %12, %struct.cdrom_tochdr* %8)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %3, align 4
  br label %128

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %26 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @CDROM_LEADOUT, align 4
  %32 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %33 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %46

34:                                               ; preds = %18
  %35 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %36 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CDROM_LEADOUT, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %42 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %48 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i8*, i8** @CDROM_MSF, align 8
  %52 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load %struct.cdrom_ti*, %struct.cdrom_ti** %5, align 8
  %54 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %7, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i8*, i8** @CDROM_MSF, align 8
  %58 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %7, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %60 = call i32 @sr_read_tocentry(%struct.cdrom_device_info* %59, %struct.cdrom_tocentry* %6)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %128

65:                                               ; preds = %46
  %66 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %67 = call i32 @sr_read_tocentry(%struct.cdrom_device_info* %66, %struct.cdrom_tocentry* %7)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %128

72:                                               ; preds = %65
  %73 = call i32 @memset(%struct.packet_command* %9, i32 0, i32 16)
  %74 = load i32, i32* @GPCMD_PLAY_AUDIO_MSF, align 4
  %75 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %74, i32* %77, align 4
  %78 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32 %88, i32* %91, align 4
  %92 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 %95, i32* %98, align 4
  %99 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %7, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  store i32 %102, i32* %105, align 4
  %106 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %7, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  store i32 %109, i32* %112, align 4
  %113 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %7, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 8
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @DMA_NONE, align 4
  %121 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %123 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %125 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sr_do_ioctl(i32 %126, %struct.packet_command* %9)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %72, %70, %63, %16
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @sr_read_tochdr(%struct.cdrom_device_info*, %struct.cdrom_tochdr*) #1

declare dso_local i32 @sr_read_tocentry(%struct.cdrom_device_info*, %struct.cdrom_tocentry*) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(i32, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
