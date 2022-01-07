; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }

@nc_dsp = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@wf_sel_done = common dso_local global i32 0, align 4
@HS_SEL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_int_sto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_sto(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i64, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %4 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %5 = load i32, i32* @nc_dsp, align 4
  %6 = call i64 @INL(%struct.sym_hcb* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @DEBUG_FLAGS, align 4
  %8 = load i32, i32* @DEBUG_TINY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %16 = load i32, i32* @wf_sel_done, align 4
  %17 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %15, i32 %16)
  %18 = add nsw i64 %17, 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %22 = load i32, i32* @HS_SEL_TIMEOUT, align 4
  %23 = call i32 @sym_recover_scsi_int(%struct.sym_hcb* %21, i32 %22)
  br label %27

24:                                               ; preds = %13
  %25 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %26 = call i32 @sym_start_reset(%struct.sym_hcb* %25)
  br label %27

27:                                               ; preds = %24, %20
  ret void
}

declare dso_local i64 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_recover_scsi_int(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_start_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
