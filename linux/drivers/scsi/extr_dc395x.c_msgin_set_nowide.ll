; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_nowide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_nowide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32, %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i32, i32, i32 }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"msgin_set_nowide: <%02i>\0A\00", align 1
@WIDE_SYNC = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@DC395x_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@DBG_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"msgin_set_nowide: Rejected. Try SDTR anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @msgin_set_nowide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_set_nowide(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %6 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %7 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %6, i32 0, i32 1
  %8 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  store %struct.DeviceCtlBlk* %8, %struct.DeviceCtlBlk** %5, align 8
  %9 = load i32, i32* @DBG_1, align 4
  %10 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %11 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @WIDE_SYNC, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %17 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %23 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %27 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %28 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %34 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %38 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %39 = call i32 @reprogram_regs(%struct.AdapterCtlBlk* %37, %struct.DeviceCtlBlk* %38)
  %40 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %41 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %2
  %47 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %48 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %55 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %56 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %57 = call i32 @build_sdtr(%struct.AdapterCtlBlk* %54, %struct.DeviceCtlBlk* %55, %struct.ScsiReqBlk* %56)
  %58 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %59 = load i32, i32* @DBG_0, align 4
  %60 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %53, %46, %2
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, ...) #1

declare dso_local i32 @reprogram_regs(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

declare dso_local i32 @build_sdtr(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
