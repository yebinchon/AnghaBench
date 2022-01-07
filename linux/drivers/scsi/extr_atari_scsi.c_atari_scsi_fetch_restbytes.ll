; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_fetch_restbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_fetch_restbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dma_addr = common dso_local global i32 0, align 4
@NDEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SCSI DMA: there are %d rest bytes for phys addr 0x%08lx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" = virt addr %p\0A\00", align 1
@tt_scsi_dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atari_scsi_fetch_restbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_scsi_fetch_restbytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @dma_addr, align 4
  %6 = call i64 @SCSI_DMA_READ_P(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %4, align 8
  %16 = xor i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* @NDEBUG_DMA, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 (i32, i8*, ...) @dprintk(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i8* @phys_to_virt(i64 %21)
  store i8* %22, i8** %3, align 8
  %23 = load i32, i32* @NDEBUG_DMA, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i32, i8*, ...) @dprintk(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i8* bitcast (%struct.TYPE_2__* @tt_scsi_dma to i8*), i8** %2, align 8
  br label %26

26:                                               ; preds = %35, %12
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  %32 = load i8, i8* %30, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 %32, i8* %33, align 1
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %1, align 4
  br label %26

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %0
  ret void
}

declare dso_local i64 @SCSI_DMA_READ_P(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i8* @phys_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
