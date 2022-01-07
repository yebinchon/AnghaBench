; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_free_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_portid_tbl = type { i64, i64, i32 }

@QEDI_LOCAL_PORT_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_free_id(%struct.qedi_portid_tbl* %0, i64 %1) #0 {
  %3 = alloca %struct.qedi_portid_tbl*, align 8
  %4 = alloca i64, align 8
  store %struct.qedi_portid_tbl* %0, %struct.qedi_portid_tbl** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @QEDI_LOCAL_PORT_INVALID, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %27

9:                                                ; preds = %2
  %10 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %3, align 8
  %11 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %3, align 8
  %17 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %27

21:                                               ; preds = %9
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %3, align 8
  %24 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clear_bit(i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %20, %8
  ret void
}

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
