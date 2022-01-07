; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_command = type { i32*, i8*, i32, i32, i32 }

@GPCMD_READ_CD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @sr_read_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_read_cd(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.packet_command, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.packet_command* %11, i32 0, i32 32)
  %13 = load i32, i32* @GPCMD_READ_CD, align 4
  %14 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 7
  %19 = shl i32 %18, 2
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 24
  %25 = trunc i32 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 16
  %33 = trunc i32 %32 to i8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = trunc i32 %40 to i8
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %70 [
    i32 2336, label %58
    i32 2340, label %62
    i32 2352, label %66
  ]

58:                                               ; preds = %5
  %59 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 9
  store i32 88, i32* %61, align 4
  br label %74

62:                                               ; preds = %5
  %63 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 9
  store i32 120, i32* %65, align 4
  br label %74

66:                                               ; preds = %5
  %67 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 9
  store i32 248, i32* %69, align 4
  br label %74

70:                                               ; preds = %5
  %71 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  store i32 16, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66, %62, %58
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %82 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @sr_do_ioctl(i32* %83, %struct.packet_command* %11)
  ret i32 %84
}

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(i32*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
