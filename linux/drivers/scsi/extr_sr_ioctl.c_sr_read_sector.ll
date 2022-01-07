; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.packet_command = type { i8*, i8*, i32, i32, i32 }

@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"CDROM does'nt support READ CD (0xbe) command\0A\00", align 1
@GPCMD_READ_10 = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i8*)* @sr_read_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_read_sector(%struct.TYPE_9__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.packet_command, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @sr_read_cd(%struct.TYPE_9__* %17, i8* %18, i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %23 = sub nsw i32 0, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %105

28:                                               ; preds = %16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sr_printk(i32 %31, %struct.TYPE_9__* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @sr_set_blocklength(%struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 0, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %105

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %34
  %51 = call i32 @memset(%struct.packet_command* %10, i32 0, i32 32)
  %52 = load i8, i8* @GPCMD_READ_10, align 1
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %52, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 24
  %58 = trunc i32 %57 to i8
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 %61, i8* %64, align 1
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 16
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 %70, i8* %73, align 1
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8 %79, i8* %82, align 1
  %83 = load i32, i32* %7, align 4
  %84 = trunc i32 %83 to i8
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  store i8 %87, i8* %90, align 1
  %91 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 8
  store i8 1, i8* %93, align 1
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %99 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 4
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %101 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = call i32 @sr_do_ioctl(%struct.TYPE_9__* %102, %struct.packet_command* %10)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %50, %47, %26
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @sr_read_cd(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local i32 @sr_printk(i32, %struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @sr_set_blocklength(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.TYPE_9__*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
