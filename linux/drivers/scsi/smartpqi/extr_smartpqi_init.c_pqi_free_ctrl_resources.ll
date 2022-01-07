; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_free_ctrl_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_free_ctrl_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i64, i32, i64, i32, %struct.TYPE_2__*, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_free_ctrl_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_free_ctrl_resources(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %4 = call i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info* %3)
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = call i32 @pqi_free_interrupts(%struct.pqi_ctrl_info* %5)
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %8 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %20 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %23 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32* %15, i32 %18, i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %11, %1
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %28 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %37 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %40 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %43 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32* %35, i32 %38, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %31, %26
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %48 = call i32 @pqi_free_all_io_requests(%struct.pqi_ctrl_info* %47)
  %49 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %50 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %55 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %59 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %62 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %65 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dma_free_coherent(i32* %57, i32 %60, i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %53, %46
  %69 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %70 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %75 = call i32 @pqi_cleanup_pci_init(%struct.pqi_ctrl_info* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %78 = call i32 @pqi_free_ctrl_info(%struct.pqi_ctrl_info* %77)
  ret void
}

declare dso_local i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_free_interrupts(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @pqi_free_all_io_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_cleanup_pci_init(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_free_ctrl_info(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
