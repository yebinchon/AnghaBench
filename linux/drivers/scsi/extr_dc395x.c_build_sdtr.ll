; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_build_sdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_build_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32, i32, i32 }
%struct.ScsiReqBlk = type { i32, i32, i32* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"build_sdtr: msgout_buf BUSY (%i: %02x %02x)\0A\00", align 1
@NTC_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@SYNC_NEGO_OFFSET = common dso_local global i32 0, align 4
@MSG_EXTENDED = common dso_local global i32 0, align 4
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@SRB_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*)* @build_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sdtr(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1, %struct.ScsiReqBlk* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca %struct.ScsiReqBlk*, align 8
  %7 = alloca i32*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %5, align 8
  store %struct.ScsiReqBlk* %2, %struct.ScsiReqBlk** %6, align 8
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %12 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %7, align 8
  %16 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %17 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %23 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %26 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %31 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dprintkl(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i32 %34)
  br label %86

36:                                               ; preds = %3
  %37 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %38 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NTC_DO_SYNC_NEGO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %45 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %47 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %46, i32 0, i32 1
  store i32 50, i32* %47, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %50 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @SYNC_NEGO_OFFSET, align 4
  %55 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %56 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* @MSG_EXTENDED, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  store i32 3, i32* %62, align 4
  %64 = load i32, i32* @EXTENDED_SDTR, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %68 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %72 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %73 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %77 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %78 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 5
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %82 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %83 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %58, %20
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
