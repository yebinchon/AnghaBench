; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_load_risc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_load_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@AF_IRQ_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_load_risc(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = call i64 @is_qla8032(%struct.scsi_qla_host* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = call i64 @is_qla8042(%struct.scsi_qla_host* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %1
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @writel(i32 0, i32* %15)
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @readl(i32* %20)
  br label %38

22:                                               ; preds = %7
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = call i64 @is_qla8022(%struct.scsi_qla_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @writel(i32 0, i32* %30)
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @readl(i32* %35)
  br label %37

37:                                               ; preds = %26, %22
  br label %38

38:                                               ; preds = %37, %11
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %40 = call i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @QLA_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %46 = call i32 @qla4xxx_init_rings(%struct.scsi_qla_host* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @QLA_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @AF_IRQ_ATTACHED, align 4
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %59 = call i32 @qla4xxx_request_irqs(%struct.scsi_qla_host* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %51, %47
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_init_rings(%struct.scsi_qla_host*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4xxx_request_irqs(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
