; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @adapter_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_uninit(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca i64, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %4 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @DC395x_LOCK_IO(i32 %6, i64 %7)
  %9 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %9, i32 0, i32 5
  %11 = call i64 @timer_pending(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %14, i32 0, i32 5
  %16 = call i32 @del_timer(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %19 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %18, i32 0, i32 4
  %20 = call i64 @timer_pending(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %24 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %23, i32 0, i32 4
  %25 = call i32 @del_timer(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %28 = call i32 @adapter_uninit_chip(%struct.AdapterCtlBlk* %27)
  %29 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %30 = call i32 @adapter_remove_and_free_all_devices(%struct.AdapterCtlBlk* %29)
  %31 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @DC395x_UNLOCK_IO(i32 %33, i64 %34)
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %37 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %42 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %45 = call i32 @free_irq(i64 %43, %struct.AdapterCtlBlk* %44)
  br label %46

46:                                               ; preds = %40, %26
  %47 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %48 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %53 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %56 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @release_region(i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %61 = call i32 @adapter_sg_tables_free(%struct.AdapterCtlBlk* %60)
  ret void
}

declare dso_local i32 @DC395x_LOCK_IO(i32, i64) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @adapter_uninit_chip(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @adapter_remove_and_free_all_devices(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @DC395x_UNLOCK_IO(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.AdapterCtlBlk*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @adapter_sg_tables_free(%struct.AdapterCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
