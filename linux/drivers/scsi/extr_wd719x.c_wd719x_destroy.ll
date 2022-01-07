; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { i32, %struct.TYPE_2__*, i32*, i32, i32*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WD719X_CMD_SLEEP = common dso_local global i32 0, align 4
@WD719X_WAIT_FOR_RISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RISC sleep command failed\0A\00", align 1
@WD719X_PCI_MODE_SELECT = common dso_local global i32 0, align 4
@WD719X_HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wd719x*)* @wd719x_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd719x_destroy(%struct.wd719x* %0) #0 {
  %2 = alloca %struct.wd719x*, align 8
  store %struct.wd719x* %0, %struct.wd719x** %2, align 8
  %3 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %4 = load i32, i32* @WD719X_CMD_SLEEP, align 4
  %5 = load i32, i32* @WD719X_WAIT_FOR_RISC, align 4
  %6 = call i64 @wd719x_direct_cmd(%struct.wd719x* %3, i32 %4, i32 0, i32 0, i32 0, i32 0, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %10 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @dev_warn(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %16 = load i32, i32* @WD719X_PCI_MODE_SELECT, align 4
  %17 = call i32 @wd719x_writeb(%struct.wd719x* %15, i32 %16, i32 0)
  %18 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %19 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %18, i32 0, i32 8
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %26 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %30 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %33 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %36 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(i32* %28, i32 %31, i32* %34, i32 %37)
  %39 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %40 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %42 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* @WD719X_HASH_TABLE_SIZE, align 4
  %46 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %47 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %50 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(i32* %44, i32 %45, i32* %48, i32 %51)
  %53 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %54 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %56 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %60 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %63 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(i32* %58, i32 4, i32* %61, i32 %64)
  %66 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %67 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %69 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.wd719x* %73)
  ret void
}

declare dso_local i64 @wd719x_direct_cmd(%struct.wd719x*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @wd719x_writeb(%struct.wd719x*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.wd719x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
