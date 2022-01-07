; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_abort_ccb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_abort_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i64, i32 }

@HS_WAIT = common dso_local global i64 0, align 8
@SEM = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, %struct.sym_ccb*, i32)* @sym_abort_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_abort_ccb(%struct.sym_hcb* %0, %struct.sym_ccb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  %7 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %9 = icmp ne %struct.sym_ccb* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %12 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %17 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HS_WAIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10, %3
  store i32 -1, i32* %4, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %24 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %29 = call i32 @sym_reset_scsi_bus(%struct.sym_hcb* %28, i32 1)
  store i32 0, i32* %4, align 4
  br label %46

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %36 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SEM, align 4
  %38 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %39 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %41 = load i32, i32* @nc_istat, align 4
  %42 = load i32, i32* @SIGP, align 4
  %43 = load i32, i32* @SEM, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @OUTB(%struct.sym_hcb* %40, i32 %41, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %30, %27, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sym_reset_scsi_bus(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
