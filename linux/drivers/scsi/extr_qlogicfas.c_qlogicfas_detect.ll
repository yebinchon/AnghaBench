; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas.c_qlogicfas_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas.c_qlogicfas_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicfas408_priv = type { %struct.qlogicfas408_priv* }
%struct.scsi_host_template = type { i32 }
%struct.Scsi_Host = type { i32 }

@MAX_QLOGICFAS = common dso_local global i32 0, align 4
@iobase = common dso_local global i32* null, align 8
@irq = common dso_local global i32* null, align 8
@cards = common dso_local global %struct.qlogicfas408_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_host_template*)* @qlogicfas_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlogicfas_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca %struct.scsi_host_template*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.qlogicfas408_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_QLOGICFAS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.scsi_host_template*, %struct.scsi_host_template** %2, align 8
  %12 = load i32*, i32** @iobase, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @irq, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.Scsi_Host* @__qlogicfas_detect(%struct.scsi_host_template* %11, i32 %16, i32 %21)
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %3, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = icmp eq %struct.Scsi_Host* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  br label %36

26:                                               ; preds = %10
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = call %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host* %27)
  store %struct.qlogicfas408_priv* %28, %struct.qlogicfas408_priv** %4, align 8
  %29 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** @cards, align 8
  %30 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %4, align 8
  %31 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %30, i32 0, i32 0
  store %struct.qlogicfas408_priv* %29, %struct.qlogicfas408_priv** %31, align 8
  %32 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %4, align 8
  store %struct.qlogicfas408_priv* %32, %struct.qlogicfas408_priv** @cards, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %25, %6
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.Scsi_Host* @__qlogicfas_detect(%struct.scsi_host_template*, i32, i32) #1

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
