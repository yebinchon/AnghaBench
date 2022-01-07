; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_lun_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_lun_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_target* }
%struct.esas2r_target = type { i64, i32 }
%union.atto_vda_ae = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ae->lu.dwevent: %x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ae->lu.bystate: %x\00", align 1
@TS_INVALID = common dso_local global i64 0, align 8
@VDAAE_LU_LOST = common dso_local global i32 0, align 4
@TS_NOT_PRESENT = common dso_local global i8* null, align 8
@TS_PRESENT = common dso_local global i64 0, align 8
@DCDE_DEV_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %union.atto_vda_ae*, i32, i32)* @esas2r_lun_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_lun_event(%struct.esas2r_adapter* %0, %union.atto_vda_ae* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca %union.atto_vda_ae*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.esas2r_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store %union.atto_vda_ae* %1, %union.atto_vda_ae** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 1
  %14 = load %struct.esas2r_target*, %struct.esas2r_target** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %14, i64 %16
  store %struct.esas2r_target* %17, %struct.esas2r_target** %9, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load %union.atto_vda_ae*, %union.atto_vda_ae** %6, align 8
  %25 = bitcast %union.atto_vda_ae* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @esas2r_trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %union.atto_vda_ae*, %union.atto_vda_ae** %6, align 8
  %30 = bitcast %union.atto_vda_ae* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @esas2r_trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i64, i64* @TS_INVALID, align 8
  %39 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %40 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %union.atto_vda_ae*, %union.atto_vda_ae** %6, align 8
  %42 = bitcast %union.atto_vda_ae* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VDAAE_LU_LOST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load i8*, i8** @TS_NOT_PRESENT, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %52 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %68

53:                                               ; preds = %23
  %54 = load %union.atto_vda_ae*, %union.atto_vda_ae** %6, align 8
  %55 = bitcast %union.atto_vda_ae* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %67 [
    i32 130, label %58
    i32 129, label %58
    i32 132, label %58
    i32 131, label %58
    i32 128, label %63
    i32 133, label %63
  ]

58:                                               ; preds = %53, %53, %53, %53
  %59 = load i8*, i8** @TS_NOT_PRESENT, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %62 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %67

63:                                               ; preds = %53, %53
  %64 = load i64, i64* @TS_PRESENT, align 8
  %65 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %66 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %53, %63, %58
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %70 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TS_INVALID, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.esas2r_target*, %struct.esas2r_target** %9, align 8
  %76 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %75, i32 0, i32 1
  %77 = load %union.atto_vda_ae*, %union.atto_vda_ae** %6, align 8
  %78 = bitcast %union.atto_vda_ae* %77 to %struct.TYPE_2__*
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @memcpy(i32* %76, %struct.TYPE_2__* %78, i32 %79)
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %82 = load i32, i32* @DCDE_DEV_CHANGE, align 4
  %83 = call i32 @esas2r_disc_queue_event(%struct.esas2r_adapter* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %68
  %85 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @esas2r_disc_queue_event(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
