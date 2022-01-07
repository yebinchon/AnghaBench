; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_init_msix_entry = type { i32 }
%struct.qla_hw_data = type { i32 }
%struct.qla_qpair = type { i32 }
%struct.qla_msix_entry = type { i32, %struct.qla_qpair*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@msix_entries = common dso_local global %struct.qla_init_msix_entry* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"qla2xxx%lu_qpair%d\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"MSI-X: Unable to register handler -- %x/%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_request_irq(%struct.qla_hw_data* %0, %struct.qla_qpair* %1, %struct.qla_msix_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.qla_qpair*, align 8
  %8 = alloca %struct.qla_msix_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_init_msix_entry*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %7, align 8
  store %struct.qla_msix_entry* %2, %struct.qla_msix_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.qla_init_msix_entry*, %struct.qla_init_msix_entry** @msix_entries, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qla_init_msix_entry, %struct.qla_init_msix_entry* %13, i64 %15
  store %struct.qla_init_msix_entry* %16, %struct.qla_init_msix_entry** %10, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @pci_get_drvdata(i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %22 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %28 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @scnprintf(i32 %23, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %32 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qla_init_msix_entry*, %struct.qla_init_msix_entry** %10, align 8
  %35 = getelementptr inbounds %struct.qla_init_msix_entry, %struct.qla_init_msix_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %38 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %41 = call i32 @request_irq(i32 %33, i32 %36, i32 0, i32 %39, %struct.qla_qpair* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %4
  %45 = load i32, i32* @ql_log_fatal, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %48 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ql_log(i32 %45, %struct.TYPE_4__* %46, i32 230, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %4
  %54 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %55 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %57 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %8, align 8
  %58 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %57, i32 0, i32 1
  store %struct.qla_qpair* %56, %struct.qla_qpair** %58, align 8
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @pci_get_drvdata(i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.qla_qpair*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_4__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
