; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_ipmdio_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_ipmdio_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i32, i32*)*, i32 (%struct.scsi_qla_host*, i32, i32)* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32, i32, i32, i32*)* @ql4_84xx_ipmdio_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql4_84xx_ipmdio_rd_reg(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @ql4_84xx_poll_wait_for_ready(%struct.scsi_qla_host* %17, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %54

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = or i32 1073741824, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.scsi_qla_host*, i32, i32)*, i32 (%struct.scsi_qla_host*, i32, i32)** %30, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 %31(%struct.scsi_qla_host* %32, i32 %33, i32 %34)
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ql4_84xx_poll_wait_for_ready(%struct.scsi_qla_host* %36, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %54

43:                                               ; preds = %24
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.scsi_qla_host*, i32, i32*)*, i32 (%struct.scsi_qla_host*, i32, i32*)** %47, align 8
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %48(%struct.scsi_qla_host* %49, i32 %50, i32* %15)
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %42, %23
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @ql4_84xx_poll_wait_for_ready(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
