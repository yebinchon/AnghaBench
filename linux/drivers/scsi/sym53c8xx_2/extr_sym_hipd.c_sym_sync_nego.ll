; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sync_nego.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sync_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i64 }

@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i64 0, align 8
@HS_BUSY = common dso_local global i32 0, align 4
@NS_SYNC = common dso_local global i64 0, align 8
@sdtr_resp = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*)* @sym_sync_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_sync_nego(%struct.sym_hcb* %0, %struct.sym_tcb* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_tcb* %1, %struct.sym_tcb** %5, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %10 = load i32, i32* @HS_PRT, align 4
  %11 = call i64 @INB(%struct.sym_hcb* %9, i32 %10)
  %12 = load i64, i64* @HS_NEGOTIATE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %16 = load i32, i32* @HS_PRT, align 4
  %17 = load i32, i32* @HS_BUSY, align 4
  %18 = call i32 @OUTB(%struct.sym_hcb* %15, i32 %16, i32 %17)
  %19 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %20 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %25 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NS_SYNC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %58

30:                                               ; preds = %23, %14
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %35 = call i32 @sym_sync_nego_check(%struct.sym_hcb* %32, i32 %33, %struct.sym_ccb* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %58

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i64, i64* @NS_SYNC, align 8
  %44 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %45 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %48 = load i32, i32* @sdtr_resp, align 4
  %49 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %47, i32 %48)
  %50 = call i32 @OUTL_DSP(%struct.sym_hcb* %46, i32 %49)
  br label %57

51:                                               ; preds = %39
  %52 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %53 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %54 = load i32, i32* @clrack, align 4
  %55 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %53, i32 %54)
  %56 = call i32 @OUTL_DSP(%struct.sym_hcb* %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %42
  br label %64

58:                                               ; preds = %38, %29
  %59 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %61 = load i32, i32* @msg_bad, align 4
  %62 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %60, i32 %61)
  %63 = call i32 @OUTL_DSP(%struct.sym_hcb* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %57
  ret void
}

declare dso_local i64 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_sync_nego_check(%struct.sym_hcb*, i32, %struct.sym_ccb*) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
