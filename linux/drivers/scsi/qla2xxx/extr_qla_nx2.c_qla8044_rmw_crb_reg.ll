; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_rmw_crb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_rmw_crb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.qla8044_rmw = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32, i32, %struct.qla8044_rmw*)* @qla8044_rmw_crb_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla8044_rmw_crb_reg(%struct.scsi_qla_host* %0, i32 %1, i32 %2, %struct.qla8044_rmw* %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla8044_rmw*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.qla8044_rmw* %3, %struct.qla8044_rmw** %8, align 8
  %10 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %11 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %20 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %26, i32 %27, i32* %9)
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %31 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %36 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %41 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %46 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.qla8044_rmw*, %struct.qla8044_rmw** %8, align 8
  %51 = getelementptr inbounds %struct.qla8044_rmw, %struct.qla8044_rmw* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host*, i32, i32*) #1

declare dso_local i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
