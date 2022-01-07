; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_build_wdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_build_wdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32*, i32, i32 }

@NTC_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@HCC_WIDE_CARD = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"build_wdtr: msgout_buf BUSY (%i: %02x %02x)\0A\00", align 1
@MSG_EXTENDED = common dso_local global i32 0, align 4
@EXTENDED_WDTR = common dso_local global i32 0, align 4
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*)* @build_wdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_wdtr(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1, %struct.ScsiReqBlk* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca %struct.ScsiReqBlk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %5, align 8
  store %struct.ScsiReqBlk* %2, %struct.ScsiReqBlk** %6, align 8
  %9 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %10 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NTC_DO_WIDE_NEGO, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %15 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HCC_WIDE_CARD, align 4
  %18 = and i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %24 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %27 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %8, align 8
  %31 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %32 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %3
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %38 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %41 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %46 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dprintkl(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %49)
  br label %72

51:                                               ; preds = %3
  %52 = load i32, i32* @MSG_EXTENDED, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  store i32 2, i32* %55, align 4
  %57 = load i32, i32* @EXTENDED_WDTR, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %63 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %64 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %68 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %69 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %51, %35
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
