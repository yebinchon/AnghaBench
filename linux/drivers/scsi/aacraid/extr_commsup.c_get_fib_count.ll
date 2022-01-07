; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_get_fib_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_get_fib_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.list_head, %struct.TYPE_4__* }
%struct.list_head = type { %struct.list_head* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @get_fib_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fib_count(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %17 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8
  store %struct.list_head* %23, %struct.list_head** %4, align 8
  br label %24

24:                                               ; preds = %29, %1
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  %26 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 1
  %28 = icmp ne %struct.list_head* %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  store %struct.list_head* %32, %struct.list_head** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
