; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_wide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_set_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i64*, i32, i32, i32, %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i32, i32, i32, i32 }

@NTC_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@HCC_WIDE_CARD = common dso_local global i32 0, align 4
@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"msgin_set_wide: <%02i>\0A\00", align 1
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"msgin_set_wide: Wide nego initiated <%02i>\0A\00", align 1
@DC395x_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@WIDE_NEGO_DONE = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"msgin_set_wide: Wide (%i bit) negotiated <%02i>\0A\00", align 1
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@DBG_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"msgin_set_wide: Also try SDTR.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @msgin_set_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_set_wide(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca i64, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %7 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %8 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %7, i32 0, i32 4
  %9 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %8, align 8
  store %struct.DeviceCtlBlk* %9, %struct.DeviceCtlBlk** %5, align 8
  %10 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %11 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NTC_DO_WIDE_NEGO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %18 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HCC_WIDE_CARD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* @DBG_1, align 4
  %29 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %30 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %34 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %43 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %23
  %47 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %48 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %56 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dprintkl(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %60 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %63 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @memcpy(i32 %61, i64* %64, i32 4)
  %66 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %67 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %66, i32 0, i32 2
  store i32 4, i32* %67, align 4
  %68 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %69 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %70 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  br label %74

74:                                               ; preds = %53, %46
  %75 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %76 = load i32, i32* @WIDE_NEGO_DONE, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %79 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %83 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load i32, i32* @WIDE_SYNC, align 4
  %90 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %91 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %101

94:                                               ; preds = %74
  %95 = load i32, i32* @WIDE_SYNC, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %98 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %88
  %102 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %105 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @DBG_1, align 4
  %109 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %110 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 8, %114
  %116 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %117 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %121 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %122 = call i32 @reprogram_regs(%struct.AdapterCtlBlk* %120, %struct.DeviceCtlBlk* %121)
  %123 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %124 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %101
  %130 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %131 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %129
  %137 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %138 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %139 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %140 = call i32 @build_sdtr(%struct.AdapterCtlBlk* %137, %struct.DeviceCtlBlk* %138, %struct.ScsiReqBlk* %139)
  %141 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %142 = load i32, i32* @DBG_0, align 4
  %143 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %136, %129, %101
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, ...) #1

declare dso_local i32 @dprintkl(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @reprogram_regs(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*) #1

declare dso_local i32 @build_sdtr(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
