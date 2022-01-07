; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ring = type { i32, i32, %struct.TYPE_4__*, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"stopping %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s %d already stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ring_stop(%struct.tb_ring* %0) #0 {
  %2 = alloca %struct.tb_ring*, align 8
  store %struct.tb_ring* %0, %struct.tb_ring** %2, align 8
  %3 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %4 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %9 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %12 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %18 = call i32 @RING_TYPE(%struct.tb_ring* %17)
  %19 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %20 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %24 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %65

30:                                               ; preds = %1
  %31 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %32 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %37 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %43 = call i32 @RING_TYPE(%struct.tb_ring* %42)
  %44 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %45 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_WARN(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  br label %65

48:                                               ; preds = %30
  %49 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %50 = call i32 @ring_interrupt_active(%struct.tb_ring* %49, i32 0)
  %51 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %52 = call i32 @ring_iowrite32options(%struct.tb_ring* %51, i32 0, i32 0)
  %53 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %54 = call i32 @ring_iowrite64desc(%struct.tb_ring* %53, i32 0, i32 0)
  %55 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %56 = call i32 @ring_iowrite32desc(%struct.tb_ring* %55, i32 0, i32 8)
  %57 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %58 = call i32 @ring_iowrite32desc(%struct.tb_ring* %57, i32 0, i32 12)
  %59 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %60 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %62 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %64 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %48, %35, %29
  %66 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %67 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %66, i32 0, i32 3
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %70 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %75 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %74, i32 0, i32 1
  %76 = call i32 @schedule_work(i32* %75)
  %77 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %78 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %77, i32 0, i32 1
  %79 = call i32 @flush_work(i32* %78)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @RING_TYPE(%struct.tb_ring*) #1

declare dso_local i32 @dev_WARN(i32*, i8*, i32, i32) #1

declare dso_local i32 @ring_interrupt_active(%struct.tb_ring*, i32) #1

declare dso_local i32 @ring_iowrite32options(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @ring_iowrite64desc(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @ring_iowrite32desc(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
