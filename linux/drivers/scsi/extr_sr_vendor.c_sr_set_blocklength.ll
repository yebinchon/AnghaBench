; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_vendor.c_sr_set_blocklength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_vendor.c_sr_set_blocklength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.packet_command = type { i32*, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.ccs_modesel_head = type { i32*, i32, i32, i32, i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODE_SELECT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@VENDOR_TIMEOUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@VENDOR_TOSHIBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_set_blocklength(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca %struct.ccs_modesel_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @kmalloc(i32 512, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 48)
  %22 = load i32, i32* @MODE_SELECT, align 4
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 16, i32* %28, align 4
  %29 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32 12, i32* %31, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.ccs_modesel_head*
  store %struct.ccs_modesel_head* %33, %struct.ccs_modesel_head** %8, align 8
  %34 = load %struct.ccs_modesel_head*, %struct.ccs_modesel_head** %8, align 8
  %35 = bitcast %struct.ccs_modesel_head* %34 to %struct.packet_command*
  %36 = call i32 @memset(%struct.packet_command* %35, i32 0, i32 48)
  %37 = load %struct.ccs_modesel_head*, %struct.ccs_modesel_head** %8, align 8
  %38 = getelementptr inbounds %struct.ccs_modesel_head, %struct.ccs_modesel_head* %37, i32 0, i32 1
  store i32 8, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ccs_modesel_head*, %struct.ccs_modesel_head** %8, align 8
  %41 = getelementptr inbounds %struct.ccs_modesel_head, %struct.ccs_modesel_head* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.ccs_modesel_head*, %struct.ccs_modesel_head** %8, align 8
  %46 = getelementptr inbounds %struct.ccs_modesel_head, %struct.ccs_modesel_head* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 255
  %49 = load %struct.ccs_modesel_head*, %struct.ccs_modesel_head** %8, align 8
  %50 = getelementptr inbounds %struct.ccs_modesel_head, %struct.ccs_modesel_head* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 5
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 6
  store i32 48, i32* %53, align 8
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 8
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @VENDOR_TIMEOUT, align 4
  %57 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 7
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @sr_do_ioctl(%struct.TYPE_7__* %58, %struct.packet_command* %7)
  store i32 %59, i32* %9, align 4
  %60 = icmp eq i32 0, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %20
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %20
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @kfree(i8* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.TYPE_7__*, %struct.packet_command*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
