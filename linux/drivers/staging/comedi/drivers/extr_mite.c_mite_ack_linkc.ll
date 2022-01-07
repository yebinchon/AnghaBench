; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_ack_linkc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_ack_linkc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32, %struct.mite* }
%struct.mite = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CHSR_LINKC = common dso_local global i32 0, align 4
@CHOR_CLRLC = common dso_local global i32 0, align 4
@CHSR_XFERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mite: transfer error %08x\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_ack_linkc(%struct.mite_channel* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.mite_channel*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mite*, align 8
  %8 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %10 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %9, i32 0, i32 1
  %11 = load %struct.mite*, %struct.mite** %10, align 8
  store %struct.mite* %11, %struct.mite** %7, align 8
  %12 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %13 = call i32 @mite_get_status(%struct.mite_channel* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CHSR_LINKC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @CHOR_CLRLC, align 4
  %20 = load %struct.mite*, %struct.mite** %7, align 8
  %21 = getelementptr inbounds %struct.mite, %struct.mite* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %24 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @MITE_CHOR(i32 %25)
  %27 = add nsw i64 %22, %26
  %28 = call i32 @writel(i32 %19, i64 %27)
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %18, %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = call i32 @mite_sync_dma(%struct.mite_channel* %33, %struct.comedi_subdevice* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CHSR_XFERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @mite_get_status(%struct.mite_channel*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

declare dso_local i32 @mite_sync_dma(%struct.mite_channel*, %struct.comedi_subdevice*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
