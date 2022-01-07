; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_ports_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_ports_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fw_serial = type { %struct.TYPE_2__** }

@EBUSY = common dso_local global i32 0, align 4
@port_table_corrupt = common dso_local global i64 0, align 8
@port_table_lock = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@MAX_TOTAL_PORTS = common dso_local global i32 0, align 4
@port_table = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_serial*)* @fwtty_ports_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_ports_add(%struct.fw_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_serial* %0, %struct.fw_serial** %3, align 8
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @port_table_corrupt, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @port_table_lock)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %61, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @num_ports, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @MAX_TOTAL_PORTS, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @port_table, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @num_ports, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.fw_serial*, %struct.fw_serial** %3, align 8
  %36 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load %struct.fw_serial*, %struct.fw_serial** %3, align 8
  %44 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @port_table, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %29

59:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %65

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @num_ports, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %15

65:                                               ; preds = %59, %15
  %66 = call i32 @mutex_unlock(i32* @port_table_lock)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
