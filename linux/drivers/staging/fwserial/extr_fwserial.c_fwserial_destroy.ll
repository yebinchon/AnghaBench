; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i32, %struct.fwtty_port** }
%struct.kref = type { i32 }
%struct.fw_serial = type { i32, i32, i32, %struct.fw_serial** }

@port_table_lock = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@port_table = common dso_local global %struct.fwtty_port** null, align 8
@port_table_corrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"port_table[%d]: %p != ports[%d]: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @fwserial_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_destroy(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.fw_serial*, align 8
  %4 = alloca %struct.fwtty_port**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kref* %0, %struct.kref** %2, align 8
  %7 = load %struct.kref*, %struct.kref** %2, align 8
  %8 = load %struct.kref*, %struct.kref** %2, align 8
  %9 = call %struct.fwtty_port* @to_serial(%struct.kref* %7, %struct.kref* %8)
  %10 = bitcast %struct.fwtty_port* %9 to %struct.fw_serial*
  store %struct.fw_serial* %10, %struct.fw_serial** %3, align 8
  %11 = load %struct.fw_serial*, %struct.fw_serial** %3, align 8
  %12 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %11, i32 0, i32 3
  %13 = load %struct.fw_serial**, %struct.fw_serial*** %12, align 8
  %14 = bitcast %struct.fw_serial** %13 to %struct.fwtty_port**
  store %struct.fwtty_port** %14, %struct.fwtty_port*** %4, align 8
  %15 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %16 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %15, i64 0
  %17 = load %struct.fwtty_port*, %struct.fwtty_port** %16, align 8
  %18 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @synchronize_rcu()
  %21 = call i32 @mutex_lock(i32* @port_table_lock)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %59, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @num_ports, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.fwtty_port**, %struct.fwtty_port*** @port_table, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %27, i64 %29
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %30, align 8
  %32 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %32, i64 %34
  %36 = load %struct.fwtty_port*, %struct.fwtty_port** %35, align 8
  %37 = icmp ne %struct.fwtty_port* %31, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @port_table_corrupt, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @port_table_corrupt, align 4
  %41 = load i32, i32* @port_table_corrupt, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.fwtty_port**, %struct.fwtty_port*** @port_table, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %43, i64 %45
  %47 = load %struct.fwtty_port*, %struct.fwtty_port** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %49, i64 %51
  %53 = load %struct.fwtty_port*, %struct.fwtty_port** %52, align 8
  %54 = call i32 @WARN_ONCE(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42, %struct.fwtty_port* %47, i32 %48, %struct.fwtty_port* %53)
  %55 = load %struct.fwtty_port**, %struct.fwtty_port*** @port_table, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %55, i64 %57
  store %struct.fwtty_port* null, %struct.fwtty_port** %58, align 8
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %22

64:                                               ; preds = %22
  %65 = call i32 @mutex_unlock(i32* @port_table_lock)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %91, %64
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @num_ports, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %71, i64 %73
  %75 = load %struct.fwtty_port*, %struct.fwtty_port** %74, align 8
  %76 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %75, i32 0, i32 2
  %77 = call i32 @fw_core_remove_address_handler(i32* %76)
  %78 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %78, i64 %80
  %82 = load %struct.fwtty_port*, %struct.fwtty_port** %81, align 8
  %83 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %82, i32 0, i32 1
  %84 = call i32 @tty_port_destroy(i32* %83)
  %85 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %85, i64 %87
  %89 = load %struct.fwtty_port*, %struct.fwtty_port** %88, align 8
  %90 = call i32 @kfree(%struct.fwtty_port* %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load %struct.fw_serial*, %struct.fw_serial** %3, align 8
  %96 = bitcast %struct.fw_serial* %95 to %struct.fwtty_port*
  %97 = call i32 @kfree(%struct.fwtty_port* %96)
  ret void
}

declare dso_local %struct.fwtty_port* @to_serial(%struct.kref*, %struct.kref*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, %struct.fwtty_port*, i32, %struct.fwtty_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fw_core_remove_address_handler(i32*) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
