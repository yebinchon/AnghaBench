; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32, i32, i32, %struct.hwi_controller*, i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.be_eq_obj* }
%struct.be_eq_obj = type { i32, i32 }

@BEISCSI_HBA_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i32)* @beiscsi_disable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_disable_port(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca %struct.hwi_controller*, align 8
  %7 = alloca %struct.be_eq_obj*, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @BEISCSI_HBA_ONLINE, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 5
  %12 = call i32 @test_and_clear_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 4
  %18 = load %struct.hwi_controller*, %struct.hwi_controller** %17, align 8
  store %struct.hwi_controller* %18, %struct.hwi_controller** %6, align 8
  %19 = load %struct.hwi_controller*, %struct.hwi_controller** %6, align 8
  %20 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %19, i32 0, i32 0
  %21 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %20, align 8
  store %struct.hwi_context_memory* %21, %struct.hwi_context_memory** %5, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = call i32 @hwi_disable_intr(%struct.beiscsi_hba* %22)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = call i32 @beiscsi_free_irqs(%struct.beiscsi_hba* %24)
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_free_irq_vectors(i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %46, %15
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %38 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %37, i32 0, i32 0
  %39 = load %struct.be_eq_obj*, %struct.be_eq_obj** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %39, i64 %41
  store %struct.be_eq_obj* %42, %struct.be_eq_obj** %7, align 8
  %43 = load %struct.be_eq_obj*, %struct.be_eq_obj** %7, align 8
  %44 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %43, i32 0, i32 1
  %45 = call i32 @irq_poll_disable(i32* %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %51 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %50, i32 0, i32 2
  %52 = call i32 @cancel_delayed_work_sync(i32* %51)
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %54 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %53, i32 0, i32 1
  %55 = call i32 @cancel_work_sync(i32* %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %49
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = call i64 @beiscsi_hba_in_error(%struct.beiscsi_hba* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %64 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %63, i32 0, i32 0
  %65 = load %struct.be_eq_obj*, %struct.be_eq_obj** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %65, i64 %67
  store %struct.be_eq_obj* %68, %struct.be_eq_obj** %7, align 8
  %69 = load %struct.be_eq_obj*, %struct.be_eq_obj** %7, align 8
  %70 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %69, i32 0, i32 0
  %71 = call i32 @cancel_work_sync(i32* %70)
  br label %72

72:                                               ; preds = %62, %58, %49
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %74 = call i32 @hwi_cleanup_port(%struct.beiscsi_hba* %73)
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %76 = call i32 @beiscsi_cleanup_port(%struct.beiscsi_hba* %75)
  br label %77

77:                                               ; preds = %72, %14
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @hwi_disable_intr(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_free_irqs(%struct.beiscsi_hba*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @beiscsi_hba_in_error(%struct.beiscsi_hba*) #1

declare dso_local i32 @hwi_cleanup_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_cleanup_port(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
