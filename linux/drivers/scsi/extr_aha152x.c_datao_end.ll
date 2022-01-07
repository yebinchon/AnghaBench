; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_datao_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_datao_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.scatterlist*, i64 }
%struct.scatterlist = type { i32 }
%struct.Scsi_Host = type { i32 }

@DMASTAT = common dso_local global i32 0, align 4
@DFIFOEMP = common dso_local global i32 0, align 4
@DATA_LEN = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_8__* null, align 8
@SXFRCTL0 = common dso_local global i32 0, align 4
@CH1 = common dso_local global i32 0, align 4
@CLRCH1 = common dso_local global i32 0, align 4
@CLRSTCNT = common dso_local global i32 0, align 4
@DMACNTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @datao_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datao_end(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %7 = load i32, i32* @DMASTAT, align 4
  %8 = load i32, i32* @DFIFOEMP, align 4
  %9 = call i64 @TESTLO(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %82

11:                                               ; preds = %1
  %12 = call i64 (...) @GETSTCNT()
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @DATA_LEN, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %15 = call i32 @scsi_get_resid(%struct.TYPE_8__* %14)
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %18 = call %struct.scatterlist* @scsi_sglist(%struct.TYPE_8__* %17)
  store %struct.scatterlist* %18, %struct.scatterlist** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %3, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @CMD_INC_RESID(%struct.TYPE_8__* %19, i64 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %26 = call i32 @scsi_bufflen(%struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %28 = call i32 @scsi_get_resid(%struct.TYPE_8__* %27)
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %11
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %35 = call i32 @sg_is_last(%struct.scatterlist* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %40, label %55

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %54 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %53)
  store %struct.scatterlist* %54, %struct.scatterlist** %6, align 8
  br label %30

55:                                               ; preds = %46, %38
  %56 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store %struct.scatterlist* %56, %struct.scatterlist** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  %64 = call i64 @SG_ADDRESS(%struct.scatterlist* %63)
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i64 %67, i64* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.scatterlist*, %struct.scatterlist** %73, align 8
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %55, %1
  %83 = load i32, i32* @SXFRCTL0, align 4
  %84 = load i32, i32* @CH1, align 4
  %85 = load i32, i32* @CLRCH1, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @CLRSTCNT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @SETPORT(i32 %83, i32 %88)
  %90 = load i32, i32* @SXFRCTL0, align 4
  %91 = load i32, i32* @CH1, align 4
  %92 = call i32 @SETPORT(i32 %90, i32 %91)
  %93 = load i32, i32* @DMACNTRL0, align 4
  %94 = call i32 @SETPORT(i32 %93, i32 0)
  ret void
}

declare dso_local i64 @TESTLO(i32, i32) #1

declare dso_local i64 @GETSTCNT(...) #1

declare dso_local i32 @scsi_get_resid(%struct.TYPE_8__*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.TYPE_8__*) #1

declare dso_local i32 @CMD_INC_RESID(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @scsi_bufflen(%struct.TYPE_8__*) #1

declare dso_local i32 @sg_is_last(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @SG_ADDRESS(%struct.scatterlist*) #1

declare dso_local i32 @SETPORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
