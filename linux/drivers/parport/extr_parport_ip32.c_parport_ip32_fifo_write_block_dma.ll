; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_fifo_write_block_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_fifo_write_block_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__*, %struct.parport*, %struct.parport_ip32_private* }
%struct.TYPE_2__ = type { i64 }
%struct.parport_ip32_private = type { i32, i32 }

@PARPORT_IP32_IRQ_HERE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ECR_DMAEN = common dso_local global i32 0, align 4
@ECR_SERVINTR = common dso_local global i32 0, align 4
@FIFO_NFAULT_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PARPORT_IP32_IRQ_FWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64)* @parport_ip32_fifo_write_block_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parport_ip32_fifo_write_block_dma(%struct.parport* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.parport_ip32_private*, align 8
  %8 = alloca %struct.parport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.parport*, %struct.parport** %4, align 8
  %14 = getelementptr inbounds %struct.parport, %struct.parport* %13, i32 0, i32 1
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  %16 = getelementptr inbounds %struct.parport, %struct.parport* %15, i32 0, i32 2
  %17 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %16, align 8
  store %struct.parport_ip32_private* %17, %struct.parport_ip32_private** %7, align 8
  %18 = load %struct.parport*, %struct.parport** %4, align 8
  %19 = getelementptr inbounds %struct.parport, %struct.parport* %18, i32 0, i32 1
  %20 = load %struct.parport*, %struct.parport** %19, align 8
  store %struct.parport* %20, %struct.parport** %8, align 8
  %21 = load i32, i32* @PARPORT_IP32_IRQ_HERE, align 4
  %22 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %23 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.parport*, %struct.parport** %4, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @parport_ip32_dma_start(%struct.parport* %24, i32 %25, i8* %26, i64 %27)
  %29 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %30 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %29, i32 0, i32 1
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load %struct.parport*, %struct.parport** %4, align 8
  %33 = load i32, i32* @ECR_DMAEN, align 4
  %34 = load i32, i32* @ECR_SERVINTR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ECR_DMAEN, align 4
  %37 = call i32 @parport_ip32_frob_econtrol(%struct.parport* %32, i32 %35, i32 %36)
  %38 = load %struct.parport*, %struct.parport** %8, align 8
  %39 = getelementptr inbounds %struct.parport, %struct.parport* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @FIFO_NFAULT_TIMEOUT, align 4
  %44 = call i32 @msecs_to_jiffies(i32 %43)
  %45 = call i64 @min(i64 %42, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.parport*, %struct.parport** %8, align 8
  %48 = getelementptr inbounds %struct.parport, %struct.parport* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %46, %51
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %3, %71
  %54 = load %struct.parport*, %struct.parport** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @parport_ip32_fifo_wait_break(%struct.parport* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %72

59:                                               ; preds = %53
  %60 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %61 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %60, i32 0, i32 1
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @wait_for_completion_interruptible_timeout(i32* %61, i64 %62)
  %64 = load %struct.parport*, %struct.parport** %4, align 8
  %65 = call i32 @parport_ip32_read_econtrol(%struct.parport* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ECR_SERVINTR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %72

71:                                               ; preds = %59
  br label %53

72:                                               ; preds = %70, %58
  %73 = load %struct.parport*, %struct.parport** %4, align 8
  %74 = call i32 @parport_ip32_dma_stop(%struct.parport* %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 (...) @parport_ip32_dma_get_residue()
  %77 = sub i64 %75, %76
  store i64 %77, i64* %11, align 8
  %78 = load i32, i32* @PARPORT_IP32_IRQ_FWD, align 4
  %79 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %80 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %11, align 8
  ret i64 %81
}

declare dso_local i32 @parport_ip32_dma_start(%struct.parport*, i32, i8*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @parport_ip32_frob_econtrol(%struct.parport*, i32, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @parport_ip32_fifo_wait_break(%struct.parport*, i64) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @parport_ip32_read_econtrol(%struct.parport*) #1

declare dso_local i32 @parport_ip32_dma_stop(%struct.parport*) #1

declare dso_local i64 @parport_ip32_dma_get_residue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
