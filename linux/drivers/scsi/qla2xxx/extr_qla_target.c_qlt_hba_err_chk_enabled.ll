; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_hba_err_chk_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_hba_err_chk_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }

@ql2xenablehba_err_chk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @qlt_hba_err_chk_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_hba_err_chk_enabled(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %4 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %5 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 130, label %7
    i32 131, label %7
    i32 129, label %12
    i32 132, label %12
    i32 133, label %17
    i32 128, label %17
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @ql2xenablehba_err_chk, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %20

11:                                               ; preds = %7
  br label %19

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @ql2xenablehba_err_chk, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %20

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16, %11
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17, %15, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
