; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_orc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_orc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64, i64 }
%struct.orc_scb = type { i32 }

@ORC_RQUEUECNT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@ORC_RQUEUE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*)* @orc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orc_interrupt(%struct.orc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.orc_scb*, align 8
  store %struct.orc_host* %0, %struct.orc_host** %3, align 8
  %6 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %7 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ORC_RQUEUECNT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @inb(i64 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %37, %15
  %17 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %18 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ORC_RQUEUE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @inb(i64 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %25 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = add i64 %26, %29
  %31 = inttoptr i64 %30 to %struct.orc_scb*
  store %struct.orc_scb* %31, %struct.orc_scb** %5, align 8
  %32 = load %struct.orc_scb*, %struct.orc_scb** %5, align 8
  %33 = getelementptr inbounds %struct.orc_scb, %struct.orc_scb* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %35 = load %struct.orc_scb*, %struct.orc_scb** %5, align 8
  %36 = call i32 @inia100_scb_handler(%struct.orc_host* %34, %struct.orc_scb* %35)
  br label %37

37:                                               ; preds = %16
  %38 = load %struct.orc_host*, %struct.orc_host** %3, align 8
  %39 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ORC_RQUEUECNT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @inb(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %16, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @inb(i64) #1

declare dso_local i32 @inia100_scb_handler(%struct.orc_host*, %struct.orc_scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
