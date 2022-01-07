; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_table_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { i32 }

@vcc_table_lock = common dso_local global i32 0, align 4
@VCC_MINOR_START = common dso_local global i32 0, align 4
@VCC_MAX_PORTS = common dso_local global i32 0, align 4
@vcc_table = common dso_local global %struct.vcc_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcc_port*)* @vcc_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_table_add(%struct.vcc_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcc_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vcc_port* %0, %struct.vcc_port** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @vcc_table_lock, i64 %6)
  %8 = load i32, i32* @VCC_MINOR_START, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VCC_MAX_PORTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.vcc_port**, %struct.vcc_port*** @vcc_table, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vcc_port*, %struct.vcc_port** %14, i64 %16
  %18 = load %struct.vcc_port*, %struct.vcc_port** %17, align 8
  %19 = icmp ne %struct.vcc_port* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %22 = load %struct.vcc_port**, %struct.vcc_port*** @vcc_table, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vcc_port*, %struct.vcc_port** %22, i64 %24
  store %struct.vcc_port* %21, %struct.vcc_port** %25, align 8
  br label %30

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %20, %9
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @vcc_table_lock, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @VCC_MAX_PORTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
