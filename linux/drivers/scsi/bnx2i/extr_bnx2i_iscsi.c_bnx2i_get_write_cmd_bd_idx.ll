; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_get_write_cmd_bd_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_get_write_cmd_bd_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iscsi_bd* }
%struct.iscsi_bd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_cmd*, i64, i64*, i64*)* @bnx2i_get_write_cmd_bd_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_get_write_cmd_bd_idx(%struct.bnx2i_cmd* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.bnx2i_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.iscsi_bd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bnx2i_cmd* %0, %struct.bnx2i_cmd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.iscsi_bd*, %struct.iscsi_bd** %14, align 8
  store %struct.iscsi_bd* %15, %struct.iscsi_bd** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.iscsi_bd*, %struct.iscsi_bd** %9, align 8
  %23 = getelementptr inbounds %struct.iscsi_bd, %struct.iscsi_bd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = icmp sge i64 %20, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.iscsi_bd*, %struct.iscsi_bd** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_bd, %struct.iscsi_bd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %11, align 8
  %35 = load %struct.iscsi_bd*, %struct.iscsi_bd** %9, align 8
  %36 = getelementptr inbounds %struct.iscsi_bd, %struct.iscsi_bd* %35, i32 1
  store %struct.iscsi_bd* %36, %struct.iscsi_bd** %9, align 8
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
