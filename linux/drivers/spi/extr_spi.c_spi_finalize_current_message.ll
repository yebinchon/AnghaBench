; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_finalize_current_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_finalize_current_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32, i32, i32, %struct.spi_message*, i32 }
%struct.spi_message = type { i32, i32 (i32)*, i32* }

@.str = private unnamed_addr constant [33 x i8] c"failed to unprepare message: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_finalize_current_message(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_controller*, align 8
  %3 = alloca %struct.spi_message*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %2, align 8
  %6 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 2
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %10, i32 0, i32 5
  %12 = load %struct.spi_message*, %struct.spi_message** %11, align 8
  store %struct.spi_message* %12, %struct.spi_message** %3, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %18 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %19 = call i32 @spi_unmap_msg(%struct.spi_controller* %17, %struct.spi_message* %18)
  %20 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %21 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %26 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %25, i32 0, i32 1
  %27 = load i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)** %26, align 8
  %28 = icmp ne i32 (%struct.spi_controller*, %struct.spi_message*)* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 1
  %32 = load i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)** %31, align 8
  %33 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %34 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %35 = call i32 %32(%struct.spi_controller* %33, %struct.spi_message* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %40 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %39, i32 0, i32 6
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43, %24, %1
  %45 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %46 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %45, i32 0, i32 2
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %50 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %49, i32 0, i32 5
  store %struct.spi_message* null, %struct.spi_message** %50, align 8
  %51 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %52 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 4
  %55 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %56 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %55, i32 0, i32 3
  %57 = call i32 @kthread_queue_work(i32* %54, i32* %56)
  %58 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %59 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %58, i32 0, i32 2
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %63 = call i32 @trace_spi_message_done(%struct.spi_message* %62)
  %64 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %65 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %67 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %66, i32 0, i32 1
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = icmp ne i32 (i32)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %44
  %71 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %72 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.spi_message*, %struct.spi_message** %3, align 8
  %75 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 %76)
  br label %78

78:                                               ; preds = %70, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spi_unmap_msg(%struct.spi_controller*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

declare dso_local i32 @trace_spi_message_done(%struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
