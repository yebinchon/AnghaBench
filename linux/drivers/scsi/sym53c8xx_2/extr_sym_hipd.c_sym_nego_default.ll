; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_nego_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_nego_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i8**, i8**, i32, i32 }
%struct.sym_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sym_ccb = type { i32, i32 }

@M_NOOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*)* @sym_nego_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_nego_default(%struct.sym_hcb* %0, %struct.sym_tcb* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_tcb* %1, %struct.sym_tcb** %5, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  %7 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %8 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %67 [
    i32 130, label %10
    i32 129, label %55
    i32 128, label %61
  ]

10:                                               ; preds = %3
  %11 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %12 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %16 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %24 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %10
  %27 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %28 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %32 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %40 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %26
  %43 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %44 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %47 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %50 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %53 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %67

55:                                               ; preds = %3
  %56 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %57 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %58 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sym_setsync(%struct.sym_hcb* %56, i32 %59, i32 0, i32 0, i32 0, i32 0)
  br label %67

61:                                               ; preds = %3
  %62 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %63 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %64 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sym_setwide(%struct.sym_hcb* %62, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %3, %61, %55, %42
  %68 = load i8*, i8** @M_NOOP, align 8
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %70 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** @M_NOOP, align 8
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %75 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %79 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  ret void
}

declare dso_local i32 @sym_setsync(%struct.sym_hcb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sym_setwide(%struct.sym_hcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
