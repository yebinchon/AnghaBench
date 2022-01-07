; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_nvram_setup_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_nvram_setup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_nvram = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SYMBIOS_PARITY_ENABLE = common dso_local global i32 0, align 4
@SYMBIOS_VERBOSE_MSGS = common dso_local global i32 0, align 4
@SYMBIOS_SCAN_HI_LO = common dso_local global i32 0, align 4
@SYMBIOS_AVOID_BUS_RESET = common dso_local global i32 0, align 4
@SYM_AVOID_BUS_RESET = common dso_local global i32 0, align 4
@SMODE_HVD = common dso_local global i32 0, align 4
@SMODE_LVD = common dso_local global i32 0, align 4
@SMODE_SE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_nvram_setup_host(%struct.Scsi_Host* %0, %struct.sym_hcb* %1, %struct.sym_nvram* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.sym_nvram*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.sym_hcb* %1, %struct.sym_hcb** %5, align 8
  store %struct.sym_nvram* %2, %struct.sym_nvram** %6, align 8
  %7 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %8 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %83 [
    i32 129, label %10
    i32 128, label %74
  ]

10:                                               ; preds = %3
  %11 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %12 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SYMBIOS_PARITY_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -11
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %26 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %32 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %34 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SYMBIOS_VERBOSE_MSGS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %48 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SYMBIOS_SCAN_HI_LO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %60 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SYMBIOS_AVOID_BUS_RESET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @SYM_AVOID_BUS_RESET, align 4
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %70 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %58
  br label %84

74:                                               ; preds = %3
  %75 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %76 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %82 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %84

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %83, %74, %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
