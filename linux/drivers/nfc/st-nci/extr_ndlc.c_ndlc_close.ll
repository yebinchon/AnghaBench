; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.nci_mode_set_cmd = type { i64, i32 }

@ST_NCI_SET_NFC_MODE = common dso_local global i32 0, align 4
@ST_NCI_CORE_PROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ndlc_close(%struct.llt_ndlc* %0) #0 {
  %2 = alloca %struct.llt_ndlc*, align 8
  %3 = alloca %struct.nci_mode_set_cmd, align 8
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %2, align 8
  %4 = load i32, i32* @ST_NCI_SET_NFC_MODE, align 4
  %5 = getelementptr inbounds %struct.nci_mode_set_cmd, %struct.nci_mode_set_cmd* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.nci_mode_set_cmd, %struct.nci_mode_set_cmd* %3, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %8 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %13 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %11(i32 %14)
  %16 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %17 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ST_NCI_CORE_PROP, align 4
  %20 = bitcast %struct.nci_mode_set_cmd* %3 to i32*
  %21 = call i32 @nci_prop_cmd(i32 %18, i32 %19, i32 16, i32* %20)
  %22 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %23 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %25 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %30 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  ret void
}

declare dso_local i32 @nci_prop_cmd(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
